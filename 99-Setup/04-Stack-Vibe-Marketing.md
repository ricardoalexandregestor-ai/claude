---
tipo: guia
atualizado: 2026-10-22
---
# Stack Vibe Marketing — o que falta para a agência rodar completa

Levantado pelo `healthcheck.py` da skill `vha-vibe-marketing` em 22/10/2026.

> **Chaves de API nunca entram neste repositório.** Todas vão para
> `~/.config/vha-vibe-marketing/.env`, que fica fora do Git.

## Já pronto ✅

| Item | Estado |
|---|---|
| Vault + GitHub | `main` sincronizado, Obsidian Git 2.42.0 com sync de 10 min |
| Obsidian | Vault registrado e aberto, configs e templates no lugar |
| Skills | **26** em `~/.claude/skills` + 13 no vault |
| Gerenciador de Anúncios | Conector Pipeboard ativo, 20 contas lidas (19 ativas) |
| ffmpeg 9.0.2 / ffprobe / yt-dlp 2026.08.19 | instalados |
| Git 2.55 · Node 26.7 · npm 11.19 · Python 3.15 | instalados |
| CLI `claude` 2.1.307 | instalado, **falta pôr no PATH** |
| jq · uv · Pillow · httpx · numpy · librosa · google-genai | instalados em 22/10 |

## Custo do stack (fonte: `orquestracao/custos.md` da skill)

| Nível | Serviços | Custo/mês |
|---|---|---|
| **Mínimo** | Apify free, Google AI free, ElevenLabs $5, Paper $15, R2 free | **$20** |
| **Com publicação** | + Upload-Post $30 | **$50** |
| **Completo** | + Higgsfield $30 | **$80** |
| **Power user** | + OpenRouter ~$5, RapidAPI $10, ElevenLabs upgrade | **~$112** |

O mínimo de $20 já entrega carrossel, reels-aula, thumbnail, headline, edição de vídeo
e transcrição. Publicação automática em vários perfis exige o Upload-Post.

## Instalado em 22/10 ✅

| Item | Versão |
|---|---|
| jq | 1.8.2 |
| uv / uvx | instalado |
| Pillow | 13.0.0 |
| httpx | 0.28.1 |
| numpy | 2.5.4 |
| librosa | 1.0.0 |
| google-genai | 2.32.0 |

O healthcheck caiu de **19 para 8 erros**.

## Whisper local: bloqueado no Python 3.15 ⚠️

`openai-whisper` **não instala** nesta máquina. Dois motivos, ambos confirmados por teste:

1. O **PyTorch não tem versão para Python 3.15** — `pip index versions torch` responde
   "No matching distribution found for torch". O PyTorch ainda não publicou wheel para 3.15.
2. O próprio `openai-whisper` falha no build por falta de `pkg_resources`.

Duas saídas:
- **Usar a ElevenLabs Scribe** (US$ 5/mês, já prevista no stack). As skills
  `roteiros-virais` e `cortes-multi-perfil` já a tratam como opção principal. **Recomendado.**
- **Python paralelo só para o Whisper**, usando o `uv` que acabou de ser instalado:
  `uv python install 3.12` e um ambiente separado. Grátis, mas baixa ~2,5 GB de torch.

## Falta instalar (o que sobrou)

```powershell
winget install Amazon.AWSCLI      # só se for usar o Cloudflare R2
```
O healthcheck também pede `lsof`, que é ferramenta de macOS/Linux — **irrelevante no Windows**,
pode ignorar. E o repositório `video-use` ainda não foi clonado (`06-clone-repos.sh`).

## PATH — dois ajustes pendentes

Duas pastas ficaram fora do PATH. Um comando resolve as duas (rode e reabra o terminal):
```powershell
[System.Environment]::SetEnvironmentVariable("Path", [System.Environment]::GetEnvironmentVariable("Path","User") + ";$HOME\.localin;$env:LOCALAPPDATA\Python\pythoncore-3.15-64\Scripts", "User")
```
Sem isso, `claude` e os executáveis do pip só funcionam pelo caminho completo.

## Falta criar conta e pegar chave — só você pode

Ordem recomendada, do mais útil ao menos:

| # | Serviço | Para quê | Custo | Onde |
|---|---|---|---|---|
| 1 | **Apify** | Raspar Instagram/Maps: `briefing-de-site`, `prospeccao-com-agentes`, `roteiros-virais` | free | https://console.apify.com/account/integrations |
| 2 | **Google AI Studio** | Geração de imagem (carrossel via image-gen) | free | https://aistudio.google.com/apikey |
| 3 | **Paper Design** | Carrosséis, reels-aula, thumbs | $15 | https://paper.design |
| 4 | **ElevenLabs** | Transcrição e voz: cortes e roteiros virais | $5 | https://elevenlabs.io/app/settings/api-keys |
| 5 | **Upload-Post** | Publicar cortes em vários perfis | $30 | https://upload-post.com |
| 6 | **Zernio** | Publicar/agendar no Instagram e automação de direct | free p/ começar | https://zernio.com |
| 7 | **Higgsfield** | Fotos com rosto consistente, site motion, multicâmera | $30 | https://higgsfield.ai |
| 8 | **Cloudflare R2** | Guardar os vídeos gerados | free 10GB | https://dash.cloudflare.com |
| 9 | **OpenRouter** | Modelos variados numa chave só | ~$5 | https://openrouter.ai/keys |
| 10 | **RapidAPI** | Dados do YouTube | $10 | https://rapidapi.com |

Cada chave entra assim (exemplo com a Apify — troque o nome e o valor):
```powershell
Add-Content "$HOME\.config\vha-vibe-marketing\.env" "APIFY_TOKEN=COLE_AQUI"
```

## As prioridades que você pediu

| Pedido | Situação |
|---|---|
| **Tokens ilimitados** | ❌ **Não existe.** O limite é do plano Claude. Só muda em claude.ai/settings/billing |
| **GitHub + Obsidian** | ✅ prontos |
| **Hermes** | ⏸ repo `NousResearch/hermes-agent`, de terceiros. Precisa clonar e avaliar |
| **Edição de vídeo** | 🟡 ffmpeg/yt-dlp ok; falta Remotion (node) e as libs Python |
| **Acesso ao Instagram** | 🟡 skills prontas; falta conta Zernio **ou** Upload-Post |
| **Acesso ao Gerenciador** | ✅ funcionando, 20 contas |
| **Jarvis / Vibehub OS** | ⏸ skill `setup-vibehub-os` instalada, pronta para rodar |

## Acervo do Vibehub
O acervo (`/app/acervo`) são **artigos de leitura**, não ferramentas instaláveis — 6 itens hoje.
Nada a instalar de lá. As ferramentas instaláveis estão em `/app/ferramentas`, que é o arsenal
já mapeado em `03-Skills-e-Conectores.md`.
