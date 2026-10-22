# CLAUDE.md — Cérebro do Ricardo

Este repositório é o **cérebro central** do Ricardo: um vault do Obsidian versionado no GitHub.
Toda sessão do Claude (Code no notebook, nuvem ou app) começa lendo este arquivo.

## Quem sou eu
- **Ricardo Alexandre Dos Santos Nascimento** — dono da **Agência RA**, gestor de tráfego pago.
- Portfólio de ~16 contas Meta Ads (2021–2026). Clientes locais e infoprodutos.
- Aluno do **Vibehub Academy** (Vibe Marketing / Vibe Business / Vibe Coding).
- Assinaturas: Claude, Canva, CapCut, Gemini.

## Como o Claude deve trabalhar comigo
- Responder **sempre em português do Brasil**, direto, sem enrolação.
- Antes de começar do zero, conferir: `03-Conhecimento/`, skills instaladas e o arsenal do Vibehub (MCP `vibehub`).
- Registrar decisões e entregas na nota do cliente em `01-Clientes/` e no diário `05-Diario/AAAA-MM-DD.md`.
- Nunca colocar senhas, tokens ou chaves de API neste repositório.

## Onde ficam as skills
| Local | O que tem |
|---|---|
| `.claude/skills/` (este vault) | 13 skills: 7 de Meta Ads + 6 de formato Obsidian. Versionadas no Git, valem em qualquer máquina que clonar. |
| `~/.claude/skills` (notebook) | 23 skills do arsenal Vibehub. Só neste notebook, **não** versionadas. |
| Plugin `anthropic-skills` | Fornece `estrutura-campanha-funil`, `matheus-zappiello`, `copy-lp-queiroz` e outras. Gerenciado pelo app, fora das duas pastas acima. |

## Skills por tarefa
- **Tráfego pago (método)**: `gestao-trafego-ra`, `estrutura-campanha-funil`, `matheus-zappiello`.
- **Meta Ads (operação)**: `diagnostico-de-campanha-meta`, `calculadora-de-metas-meta`,
  `estrutura-de-campanha-meta`, `estrategista-de-criativos-meta`, `copy-de-anuncio-meta`,
  `auditor-de-politicas-meta`, `relatorio-para-cliente-meta`.
- **Conteúdo / vídeo**: `carrosseis-paper`, `recriar-carrossel`, `recriar-carrossel-image-gen`,
  `reels-aula-paper`, `paper-design`, `edit-videos`, `cortes-multi-perfil`,
  `headlines-youtube`, `thumbnails-youtube`, `gerar-roteiros`, `roteiros-virais`,
  `gerar-sequencia-stories`, `tom-de-voz`.
- **Sites e captação**: `copy-lp-queiroz`, `gerar-iscas`, `briefing-de-site`, `criar-site-motion`.
- **Prospecção e publicação**: `prospeccao-com-agentes`, `publicar-agendar-posts`, `automacao-direct`.
- **Infra**: `setup-vibehub-os`, `revisar-seguranca`, `vha-vibe-marketing`.
- **Formato Obsidian**: `obsidian-markdown`, `obsidian-bases`, `obsidian-cli`, `json-canvas`, `knap`, `defuddle`.

## Mapa do vault
| Pasta | Conteúdo |
|---|---|
| `00-Inbox/` | Ideias e pedidos soltos, para triar depois |
| `01-Clientes/` | Uma nota por cliente (briefing, contas, campanhas, histórico) |
| `02-Projetos/` | Projetos próprios (CRM, OpenJarvis, Agência) |
| `03-Conhecimento/` | Métodos, aulas do Vibehub, processos |
| `04-Templates/` | Modelos de nota (cliente, diário) |
| `05-Diario/` | Notas diárias |
| `99-Setup/` | Guias de instalação e configuração |

## Ambiente do notebook
- Git 2.55.0 · Node 26.7.0 · npm 11.19.0 · Python 3.15.0 · Obsidian 1.14.4 com Obsidian Git 2.42.0.
- **Faltam** `ffmpeg` e `yt-dlp` — exigidos por `edit-videos`, `cortes-multi-perfil`,
  `roteiros-virais` e `videos-multicamera`.
- O **CLI `claude` não está instalado** (uso é pelo app desktop), então `claude mcp add/list`
  não roda neste notebook. Conectores são gerenciados pelo app.

## Conectores ativos (claude.ai → Conectores)
Canva · GitHub · Gmail · Google Drive · Google Agenda · Notion · Meta Ads · Supabase · Lovable ·
Trello · vidIQ · Magnific · Apify · Vibehub.
Sem conector oficial: **CapCut** (usar Remotion/Magnific/vidIQ) e **Gemini** (chave de API/OpenRouter).
Tabela completa de conectores e MCPs em `99-Setup/03-Skills-e-Conectores.md`.
