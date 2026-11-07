# Pendências (travas)

## 🔴 Novas — auditoria de 2026-11-07 (detalhes em [[2026-11-07-Auditoria-Geral]])
- [ ] **Tornar o repositório `claude` privado** — hoje é público (IDs e gastos de contas, dados de cliente).
- [ ] **Reconectar o Facebook no Pipeboard** — https://pipeboard.co/connections. Sem isso o Claude não lê nenhuma conta.
- [ ] **Reconectar** "FACEBOOK META ADS" e vidIQ em claude.ai → Conectores (ou remover se não usar).
- [ ] **Windsor** — desligar 14 contas (plano grátis = 1) ou desconectar o Windsor.
- [ ] **Campanha GPS (ADELAIDE)** — conferir no Gerenciador se começou em 01/11; os lembretes estavam desligados.
- [ ] **Fechar o PR #1** e apagar os branches `compassionate-cori`, `skills-meta-ads` e (após o merge) `kind-carson`.
- [ ] **Arquivar sessões mortas** (Meta contas bloqueadas, Configuração de ferramentas) e responder as vivas.
- [ ] **Limpar conectores** incompletos/repetidos e tirar o Health Data Avatar das auditorias de Instagram.
- [ ] **Supabase `crm-ricardo-alexandre` pausado** — reativar só se for retomar o CRM.
- [ ] Decidir: `disablePush: true` no Obsidian Git.

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
- [x] **Conector Adspirer** — conectado (só enxerga `BM- ANTONIO JUNIOR`).
- [ ] **Stripe MCP** — desde 31/10/2026 só aceita Agent Key ou OAuth. Só importa se for ligar a Stripe.
- [ ] **GitHub sem escrita no `ricardinhonego-cmd/meu-primeiro-projeto`** — instalar o app Claude
      nesse repositório: https://github.com/apps/claude/installations/select_target


## Abertas — projetos
- [ ] **Inventário Maria Sarto** — push autorizado; pedido enviado à sessão original em 2026-10-01.
- [ ] **OpenJarvis** — `cd ~/jarvis && uv run jarvis doctor` e colar a saída pro Claude.
      Alternativa recomendada pelo Vibehub: Vibehub OS (skill `setup-vibehub-os`).
- [ ] **CRM de tráfego pago** — sessão parada em "Quer que eu comece?". Supabase do CRM está pausado.
- [ ] **Aumentar orçamento (26/10)** — sessão espera "sim" e se os +R$2 são por conjunto ou por campanha.
- [x] **Meta Ads (contas bloqueadas)** — resolvido em 22/10: nenhuma conta bloqueada ([[Meta-Contas-Status]]). Arquivar a sessão.
- [ ] **Limite semanal** — evitar abrir várias sessões paralelas para o mesmo assunto.
