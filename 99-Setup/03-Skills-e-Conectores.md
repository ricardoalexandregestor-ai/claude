# Skills do Vibehub e conectores

## Instalar as skills do Vibehub no notebook
Rode no terminal do notebook (o servidor na nuvem não tem acesso ao site do Vibehub):

### Mac / Linux
```bash
mkdir -p ~/.claude/skills && cd ~/.claude/skills
for s in setup-vibehub-os vha-vibe-marketing-completo tom-de-voz gerar-roteiros roteiros-virais \
         publicar-agendar-posts automacao-direct prospeccao-com-agentes gerar-sequencia-stories \
         briefing-de-site criar-site-motion revisar-seguranca; do
  curl -fsSLo "$s.zip" "https://auth.vibehub.academy/storage/v1/object/public/skills/$s.zip" \
    && unzip -oq "$s.zip" && rm "$s.zip" && echo "ok $s"
done
```
### Windows (PowerShell)
```powershell
$d="$HOME\.claude\skills"; New-Item -ItemType Directory -Force $d | Out-Null; Set-Location $d
"setup-vibehub-os","vha-vibe-marketing-completo","tom-de-voz","gerar-roteiros","roteiros-virais",
"publicar-agendar-posts","automacao-direct","prospeccao-com-agentes","gerar-sequencia-stories",
"briefing-de-site","criar-site-motion","revisar-seguranca" | ForEach-Object {
  Invoke-WebRequest "https://auth.vibehub.academy/storage/v1/object/public/skills/$_.zip" -OutFile "$_.zip"
  Expand-Archive "$_.zip" -DestinationPath . -Force; Remove-Item "$_.zip"; "ok $_"
}
```
Depois, numa sessão do Claude Code local, diga: **"rode a skill setup-vibehub-os"**.

## Conectores (claude.ai → Configurações → Conectores)
| Ferramenta | Status | Observação |
|---|---|---|
| Canva | ✅ conectado | criar/editar/exportar designs |
| GitHub | ✅ conectado | ⚠️ falta permissão de escrita no `meu-primeiro-projeto` (ver Pendências) |
| Gmail, Drive, Agenda | ✅ | |
| Notion, Trello | ✅ | |
| Meta Ads, Supabase, Lovable, vidIQ, Magnific, Apify | ✅ | |
| Vibehub | ✅ | aulas, skills, prompts |
| Gemini | ❌ sem conector | usar chave em https://aistudio.google.com/apikey ou OpenRouter |
| CapCut | ❌ sem API | alternativas: skill `edit-videos` (Remotion), Magnific, vidIQ |
| Higgsfield, Firecrawl, Stripe | opcional | URLs MCP no arsenal do Vibehub |

## Aulas do Vibehub que ensinam este setup
- Módulo 2, Aula 2 — Ambiente: https://vibehub.academy/app/academy/modulo-2-a-base/ambiente
- Módulo 4, Aula 1 — Preparando o Ambiente: https://vibehub.academy/app/academy/modulo-4-ambiente/preparando-o-ambiente
- Vibe Business, Aula 2 — Setup Inicial: https://vibehub.academy/app/academy/trilha-vibe-business/vb-setup-conectores
- Vibe Business, Aula 8 — Vibehub OS (Jarvis): https://vibehub.academy/app/academy/trilha-vibe-business/vb-vibehub-os-jarvis
