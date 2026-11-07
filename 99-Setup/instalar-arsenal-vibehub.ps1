# Instala no NOTEBOOK as skills que faltam do Vibehub e guarda os materiais das aulas.
# Rodar no PowerShell:  powershell -ExecutionPolicy Bypass -File .\99-Setup\instalar-arsenal-vibehub.ps1
# Nada aqui vai para o GitHub: as skills ficam em ~/.claude/skills e os materiais em Documentos\Vibehub-Materiais.

$ErrorActionPreference = "Stop"
$skills = "$HOME\.claude\skills"
$mat    = "$HOME\Documents\Vibehub-Materiais"
$tmp    = "$env:TEMP\vibehub-dl"
New-Item -ItemType Directory -Force $skills, $mat, $tmp | Out-Null

function Baixar($url, $dest) {
  try { Invoke-WebRequest $url -OutFile $dest -UseBasicParsing; "ok  $url" }
  catch { "ERRO $url -> $($_.Exception.Message)" }
}

# 1) Skill editar-videos-claude (curso Vibe Viral)
Baixar "https://auth.vibehub.academy/storage/v1/object/public/materials/vibe-viral/editar-videos-claude.zip" "$tmp\evc.zip"
if (Test-Path "$tmp\evc.zip") { Expand-Archive "$tmp\evc.zip" -DestinationPath $skills -Force; Copy-Item "$tmp\evc.zip" $mat }

# 2) Prompts e checklists das 6 aulas do Vibe Viral
New-Item -ItemType Directory -Force "$mat\vibe-viral" | Out-Null
2..6 | ForEach-Object {
  Baixar "https://auth.vibehub.academy/storage/v1/object/public/materials/vibe-viral/aula-$_-prompts.zip" "$mat\vibe-viral\aula-$_-prompts.zip"
}

# 3) Skills de repositórios públicos (GitHub)
$repos = @{
  "anthropic-skills" = "https://github.com/anthropics/skills/archive/refs/heads/main.zip";
  "ui-ux-pro-max"    = "https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/archive/refs/heads/main.zip";
  "marketingskills"  = "https://github.com/coreyhaines31/marketingskills/archive/refs/heads/main.zip"
}
foreach ($k in $repos.Keys) {
  Baixar $repos[$k] "$tmp\$k.zip"
  if (Test-Path "$tmp\$k.zip") {
    Expand-Archive "$tmp\$k.zip" -DestinationPath "$tmp\$k" -Force
    # copia só as pastas que têm SKILL.md (frontend-design, ui-ux-pro-max, copywriting...)
    Get-ChildItem "$tmp\$k" -Recurse -Filter SKILL.md | ForEach-Object {
      $pasta = $_.Directory
      $want = @("frontend-design","ui-ux-pro-max","copywriting","copy-editing","page-cro","paid-ads","marketing-psychology")
      if ($want -contains $pasta.Name -or $k -eq "ui-ux-pro-max") {
        Copy-Item $pasta.FullName "$skills\$($pasta.Name)" -Recurse -Force; "  + skill $($pasta.Name)"
      }
    }
  }
}

# 4) Backup das skills atuais (versionado por data)
$bk = "$HOME\.claude\skills-backup-$(Get-Date -Format yyyyMMdd)"
if (-not (Test-Path $bk)) { Copy-Item $skills $bk -Recurse }

Remove-Item $tmp -Recurse -Force
"`nSkills instaladas agora:"; Get-ChildItem $skills -Directory | Select-Object -ExpandProperty Name
"`nPróximo passo: abrir o Claude (aba Code) e mandar os prompts 1 a 4 da aula 2 do Vibe Viral ($mat\vibe-viral)."
