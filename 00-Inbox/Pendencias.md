# Pendências (travas)

## Resolvidas em 2026-10-21
- [x] **Skills de Obsidian (kepano)** — em `.claude/skills/` do vault (vêm junto no clone).
- [x] **Instalar as skills do Vibehub** — 23 em `~/.claude/skills` no notebook.
- [x] **Obsidian no notebook** — vault registrado, aberto e plugin Obsidian Git 2.42.0 instalado.
- [x] **Juntar o vault no `main`** — merge feito, 13 skills no `main`, README unificado.

## Abertas — só eu posso resolver
- [ ] **ffmpeg e yt-dlp** faltando. Sem eles, `edit-videos`, `cortes-multi-perfil` e
      `roteiros-virais` não rodam: `winget install Gyan.FFmpeg` e `winget install yt-dlp.yt-dlp`.
- [ ] **CLI `claude` não instalado** — sem ele não dá pra rodar `claude mcp add/list`.
      Instalar com `irm https://claude.ai/install.ps1 | iex` se quiser MCPs por linha de comando.
- [ ] **Chave da Perplexity** — criar em https://www.perplexity.ai/settings/api e guardar
      como variável de ambiente `PERPLEXITY_API_KEY` (nunca no repositório).
- [ ] **Conector Adspirer** — exige autorização via `/mcp` antes de usar.
- [ ] **Stripe MCP** — a partir de 31/10/2026 só aceita Agent Key ou OAuth, não secret key.
- [ ] **GitHub sem escrita no `ricardinhonego-cmd/meu-primeiro-projeto`** — instalar o app Claude
      nesse repositório: https://github.com/apps/claude/installations/select_target
- [ ] **Limpeza da pasta Downloads** — 14 instaladores `Claude Setup (N).exe` (~95 MB) e zips de
      skills já instaladas, aguardando aprovação pra apagar.
- [ ] **Apagar o branch `claude/zealous-knuth-pb7bs6`** — já está todo dentro do `main`,
      aguardando aprovação.

## Abertas — projetos
- [ ] **Inventário Maria Sarto** — push autorizado; pedido enviado à sessão original em 2026-10-01.
- [ ] **OpenJarvis** — `cd ~/jarvis && uv run jarvis doctor` e colar a saída pro Claude.
      Alternativa recomendada pelo Vibehub: Vibehub OS (skill `setup-vibehub-os`).
- [ ] **CRM de tráfego pago** — sessão parada em "Quer que eu comece?" → responder "sim, começa".
- [ ] **Meta Ads (contas bloqueadas)** — escolher o próximo passo na sessão.
- [ ] **Limite semanal** — evitar abrir várias sessões paralelas para o mesmo assunto.
