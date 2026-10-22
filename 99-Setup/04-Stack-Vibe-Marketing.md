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

## Custo do stack (fonte: `orquestracao/custos.md` da skill)

| Nível | Serviços | Custo/mês |
|---|---|---|
| **Mínimo** | Apify free, Google AI free, ElevenLabs $5, Paper $15, R2 free | **$20** |
| **Com publicação** | + Upload-Post $30 | **$50** |
| **Completo** | + Higgsfield $30 | **$80** |
| **Power user** | + OpenRouter ~$5, RapidAPI $10, ElevenLabs upgrade | **~$112** |

O mínimo de $20 já entrega carrossel, reels-aula, thumbnail, headline, edição de vídeo
e transcrição. Publicação automática em vários perfis exige o Upload-Post.

## Falta instalar (programas) — precisa da sua aprovação

```powershell
winget install jqlang.jq
winget install astral-sh.uv
```
E as bibliotecas Python das skills de vídeo e imagem:
```powershell
pip install pillow httpx numpy librosa google-genai openai-whisper
```
> `openai-whisper` é grande (modelo de transcrição). Alternativa mais leve:
> usar a transcrição da ElevenLabs, que já está no stack pago.

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
