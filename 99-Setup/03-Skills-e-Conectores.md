# Skills, conectores e MCPs

> Nunca guarde chaves de API neste repositório. As chaves ficam em variáveis de ambiente
> do sistema ou no gerenciador de conectores do app — nunca em arquivo versionado.

## Instalar as skills do Vibehub no notebook
Rode no terminal do notebook (o servidor na nuvem recebe 403 em `auth.vibehub.academy`).

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
O pacote `vha-vibe-marketing-completo` traz 11 skills dentro. Total instalado: **23**.

## Conectores do app (claude.ai → Configurações → Conectores)
| Ferramenta | Status | Observação |
|---|---|---|
| Canva | conectado | criar/editar/exportar designs |
| GitHub | conectado | falta escrita no `meu-primeiro-projeto` (ver Pendências) |
| Gmail · Drive · Agenda | conectado | |
| Notion · Trello | conectado | |
| Meta Ads | conectado | |
| Supabase · Lovable | conectado | |
| vidIQ · Magnific · Apify | conectado | |
| Vibehub | conectado | aulas, arsenal, prompts, templates |
| Adspirer | **exige autorização** | precisa autorizar via `/mcp` antes de usar |

## MCPs do arsenal Vibehub
| MCP | Endereço | Chave |
|---|---|---|
| Meta Ads | `https://mcp.facebook.com/ads` | conta Meta |
| Higgsfield | `https://mcp.higgsfield.ai/mcp` | conta Higgsfield (paga) |
| Firecrawl | `https://docs.firecrawl.dev/mcp-server` | `FIRECRAWL_API_KEY` (tem plano grátis) |
| Supabase | `https://supabase.com/docs/guides/getting-started/mcp` | token do projeto |
| Stripe | `https://docs.stripe.com/mcp` | Agent Key (ver aviso abaixo) |

## MCPs pesquisados (status em 2026-10-21)
| Ferramenta | MCP oficial? | Chave paga? | Como instalar |
|---|---|---|---|
| Perplexity | sim | sim, por uso | remoto: `https://api.perplexity.ai/mcp` com Bearer token |
| Firecrawl | sim (`firecrawl-mcp`) | plano grátis disponível | `npx -y firecrawl-mcp` |
| Stripe | sim (Agent Toolkit) | chave da conta | remoto `https://mcp.stripe.com` |
| Higgsfield | sim (no arsenal) | sim | endpoint remoto acima |
| Manus | **não** — só de terceiros | sim | tem API oficial (`api.manus.ai`), MCP é comunitário |
| Hubla | não confirmado | — | sem documentação pública localizada |
| Behance | não confirmado | — | sem API pública localizada |
| YouTube Create | não | — | app de celular, sem API |
| Node | não se aplica | — | é runtime, não MCP (já instalado: v26.7.0) |

> **Stripe — prazo:** a partir de 31/10/2026 o MCP da Stripe deixa de aceitar secret key de
> acesso total. É preciso migrar para Agent Key ou OAuth.

> Regra: **não instalar MCP de repositório não oficial.** Manus, Hubla e Behance ficam de fora
> até existir fonte oficial.

## Ferramentas do sistema exigidas pelas skills
| Ferramenta | Status | Instalar |
|---|---|---|
| Git 2.55.0 | ok | — |
| Node 26.7.0 / npm 11.19.0 | ok | — |
| Python 3.15.0 | ok | — |
| ffmpeg | **falta** | `winget install Gyan.FFmpeg` |
| yt-dlp | **falta** | `winget install yt-dlp.yt-dlp` |

## Aulas do Vibehub sobre este setup
- Módulo 2, Aula 2 — Ambiente: https://vibehub.academy/app/academy/modulo-2-a-base/ambiente
- Módulo 4, Aula 1 — Preparando o Ambiente: https://vibehub.academy/app/academy/modulo-4-ambiente/preparando-o-ambiente
- Vibe Business, Aula 2 — Setup Inicial: https://vibehub.academy/app/academy/trilha-vibe-business/vb-setup-conectores
- Vibe Business, Aula 8 — Vibehub OS (Jarvis): https://vibehub.academy/app/academy/trilha-vibe-business/vb-vibehub-os-jarvis
- Jarvis · Vibehub OS: https://vibehub.academy/app/academy/jarvis/jv-jarvis-vibehub-os
