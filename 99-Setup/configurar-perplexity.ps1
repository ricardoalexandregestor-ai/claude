Write-Host "=== Chave do Perplexity ===" -ForegroundColor Cyan
Write-Host "Copie a chave em https://www.perplexity.ai/settings/api (comeca com pplx-)."
Write-Host "Para colar aqui use o BOTAO DIREITO do mouse (o Ctrl+V corrompe a chave nesta janela)." -ForegroundColor Yellow
for ($i = 1; $i -le 3; $i++) {
  $sec = Read-Host "Chave (oculta)" -AsSecureString
  $raw = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($sec))
  $key = -join ($raw.ToCharArray() | Where-Object { [int]$_ -ge 33 -and [int]$_ -le 126 })
  if (-not $key.StartsWith("pplx-")) { Write-Host "Nao comeca com pplx- ($($key.Length) caracteres). Tente de novo." -ForegroundColor Red; continue }
  try {
    Invoke-RestMethod https://api.perplexity.ai/chat/completions -Method Post -Headers @{ Authorization = "Bearer $key" } -ContentType "application/json" -Body '{"model":"sonar","messages":[{"role":"user","content":"ok"}],"max_tokens":5}' | Out-Null
  } catch { Write-Host "A Perplexity recusou a chave ($($_.Exception.Response.StatusCode.value__)). Tente de novo." -ForegroundColor Red; continue }
  [System.Environment]::SetEnvironmentVariable("PERPLEXITY_API_KEY", $key, "User")
  Write-Host "Chave valida e gravada em PERPLEXITY_API_KEY. Pode fechar." -ForegroundColor Green
  Start-Sleep 4; exit 0
}
Write-Host "3 tentativas sem sucesso. Nada foi gravado." -ForegroundColor Red; Start-Sleep 6; exit 1
