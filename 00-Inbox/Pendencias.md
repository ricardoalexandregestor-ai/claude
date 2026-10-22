# Pendências (travas)

## Resolvidas em 2026-10-21
- [x] **ffmpeg 9.0.2 e yt-dlp 2026.08.19** instalados via winget — skills de vídeo destravadas.
- [x] **CLI `claude` 2.1.307** instalado (falta só pôr a pasta no PATH, ver abaixo).
- [x] **Branch `claude/zealous-knuth-pb7bs6`** apagado no local e no GitHub (estava todo no `main`).
- [x] **Energia** — na tomada o notebook já está configurado para nunca suspender.
- [x] **Limpeza do Downloads (22/10)** — 26 arquivos (96,6 MB) enviados para a Lixeira:
      14 instaladores `Claude Setup` e 12 zips de skills já instaladas. Dá pra restaurar.
- [x] **Skills de Obsidian (kepano)** — em `.claude/skills/` do vault (vêm junto no clone).
- [x] **Instalar as skills do Vibehub** — 23 em `~/.claude/skills` no notebook.
- [x] **Obsidian no notebook** — vault registrado, aberto e plugin Obsidian Git 2.42.0 instalado.
- [x] **Juntar o vault no `main`** — merge feito, 13 skills no `main`, README unificado.

## Abertas — só eu posso resolver
- [ ] **PATH do CLI `claude`** — o binário está em `C:\Users\Usuario\.local\bin\claude.exe`,
      mas a pasta não entrou no PATH. Rodar uma vez no PowerShell e reabrir o terminal:
      `[System.Environment]::SetEnvironmentVariable("Path", [System.Environment]::GetEnvironmentVariable("Path","User") + ";$HOME\.local\bin", "User")`
- [ ] **Perplexity MCP** — MCP oficial confirmado (`perplexityai/modelcontextprotocol`).
      Depende do CLI `claude`. Comandos prontos em `99-Setup/03-Skills-e-Conectores.md`.
      Chave em https://www.perplexity.ai/settings/api, guardada em `PERPLEXITY_API_KEY`.
- [ ] **Conector Adspirer** — exige autorização via `/mcp` antes de usar.
- [ ] **Stripe MCP** — a partir de 31/10/2026 só aceita Agent Key ou OAuth, não secret key.
- [ ] **GitHub sem escrita no `ricardinhonego-cmd/meu-primeiro-projeto`** — instalar o app Claude
      nesse repositório: https://github.com/apps/claude/installations/select_target


## Abertas — projetos
- [ ] **Inventário Maria Sarto** — push autorizado; pedido enviado à sessão original em 2026-10-01.
- [ ] **OpenJarvis** — `cd ~/jarvis && uv run jarvis doctor` e colar a saída pro Claude.
      Alternativa recomendada pelo Vibehub: Vibehub OS (skill `setup-vibehub-os`).
- [ ] **CRM de tráfego pago** — sessão parada em "Quer que eu comece?" → responder "sim, começa".
- [ ] **Meta Ads (contas bloqueadas)** — escolher o próximo passo na sessão.
- [ ] **Limite semanal** — evitar abrir várias sessões paralelas para o mesmo assunto.
