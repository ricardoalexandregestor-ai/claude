---
tipo: estudo
curso: vibe-viral
aulas: 6 (48 min)
estudado_em: 2026-11-07
---
# Vibe Viral — o Claude como editor de vídeo

Resumo com as minhas palavras e plano de aplicação na Agência RA. Aulas em
https://vibehub.academy/app/academy/vibe-viral

## A ideia central
O gargalo de conteúdo deixou de ser a edição. Você grava o vídeo bruto, com erros, pausas e
barulho, entrega ao Claude e ele devolve o vídeo pronto para postar, sem abrir CapCut nem Premiere.
Ele corta erros e silêncios, monta legenda, animações, cards, trilha e zoom, e até grava a tela de
um site quando você cita uma ferramenta ou notícia. Um vídeo longo de 25 min brutos virou 11 min em 4K.
O vídeo leva 30–60 min para sair, mas dá para mandar **vários em lote** (subagentes em paralelo).

## O que precisa (aula 2)
| Peça | Papel | Status no notebook |
|---|---|---|
| App do Claude, plano Pro/Max, aba Code | o editor | ✅ |
| **Skill `editar-videos-claude`** (zip nos materiais da aula 2) | o "manual de edição" com 9 modelos de Reels + 2 de YouTube | ❌ instalar |
| **ElevenLabs** (chave com Speech to Text) | os "ouvidos": transcrição precisa | ❌ criar chave (US$ 5/mês) |
| FFmpeg | a "tesoura" | ✅ 9.0.2 |
| Node + **Hyperframes** (grátis) | renderiza animações | Node ✅ · Hyperframes ❌ (o Claude instala) |
| Python, Playwright | scripts e gravação de tela de sites | Python ✅ · Playwright ❌ (o Claude instala) |
| Conector Vibehub | galeria visual dos modelos | ✅ conectado |
| OpenAI API (opcional) | gerar imagens de apoio | — |
| ~20 GB livres | renders | ✅ 815 GB |

Setup em 4 prompts (vêm no zip da aula 2): 1) instalar a skill, 2) checar e instalar dependências,
3) criar o `.env` e colar a chave da ElevenLabs **no arquivo, nunca no chat**, 4) conferir o ambiente.
No conector Vibehub, marcar "Sempre permitir" para não ficar pedindo autorização.

### Regras de gravação
- Gravar em 4K se der (permite zoom sem perder qualidade).
- Deixar espaço acima da cabeça: é onde entram zoom e elementos animados.
- Gravar já no formato final (vertical para Reels).
- Errar não tem problema: o Claude corta.

## Os 9 modelos de Reels (aula 3)
Um "modelo" é a receita da edição: ritmo, layout (tela cheia, dividida, close), cards, legenda e trilha.
Os 9 cobrem, entre outros: **produto/link** (busca imagens da página), **demo e números/prova social**,
**passo a passo/tutorial**, **fundo recortado**, **sistema com várias partes / material para comentar
e captar lead**, **lançamento**, **tela de app / antes e depois**, **lista/notícia viral**.

Quatro jeitos de pedir:
- **MODELO**: "edita esse vídeo para Reels com a skill editar-videos-claude no modelo 01"
- **REFERÊNCIA**: manda o link de um Reels que gostou e ele copia o estilo; se aprovar, vira modelo seu
- **CURTO**: sem modelo, ele escolhe o mais simples
- **LOTE**: lista de arquivos + modelo de cada um; edita todos em paralelo

Aulas 4 e 6 mostram o fluxo completo (bruto → post e bruto → YouTube 4K), com prompt de revisão.
Aula 5: os 2 estilos de vídeo longo para YouTube.

## Como aplicar na Agência RA (colocar em prática)
1. **Serviço novo "Reels prontos"** para os clientes locais: o cliente grava 3–5 vídeos brutos por
   semana no celular → o Claude edita em lote → você revisa e publica. Encaixa como upsell da gestão de
   tráfego, porque **criativo é o que mais destrava CPA**.
2. **Criativos de anúncio em vídeo**: modelo "demo e números" com os seus casos (ex.: conversa a R$ 3
   na Madeireira Carajás, com autorização) para o seu próprio perfil.
3. **Combinar com as skills que você já tem**: `roteiros-virais` / `gerar-roteiros` (roteiro) →
   gravar → `editar-videos-claude` (edição) → `estrategista-de-criativos-meta` (ângulos para anúncio)
   → `publicar-agendar-posts` (agendar).
4. **Sarto**: o fluxo de edição de aulas que hoje vai para o editor humano (Drayson) pode ter um piloto
   com essa skill, começando pela "AULA BASE" mais simples.

## Próximo passo prático
No notebook: rodar `99-Setup/instalar-arsenal-vibehub.ps1`, que baixa a skill e os prompts.
Depois abrir o Claude e mandar os prompts 1 a 4 da aula 2. Criar a chave da ElevenLabs.
Primeiro teste: um Reels seu de 60 s no modelo de "demo e números".
