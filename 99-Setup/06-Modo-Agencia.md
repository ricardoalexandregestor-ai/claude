# Modo Agência — agentes, comandos e conectores

O vault já traz a equipe da agência pronta para o Claude Code (notebook) em `.claude/agents/` e
`.claude/commands/`. Qualquer sessão aberta na pasta `Documents\claude` carrega tudo sozinha.

## Como usar no dia a dia
| Peça | O que acontece |
|---|---|
| `/bom-dia` | pendências + agenda + alertas das contas + diário do dia |
| `/raio-x carteira` | diagnóstico de todas as contas ativas (só leitura) |
| `/raio-x Joia Rara 7 dias` | diagnóstico de um cliente |
| `/relatorio Soul Smile Odonto semanal` | relatório para cliente + PDF |
| `/campanha PETS JP whatsapp 1500` | estratégia + estrutura + copy + lista de criativos (criada PAUSADA) |
| `/criativos I Love Estética 5` | novos ângulos a partir do que já converteu |
| `/novo-cliente Nome nicho cidade` | nota, concorrentes, oferta e checklist de acessos |
| `/pesquisa clínicas odontológicas em Belém` | pesquisa com fontes |
| `/conteudo-semana Agência RA` | calendário orgânico da semana |
| `/video link-do-drive anúncio` | edição com legendas, cortes e versões 9:16/4:5 |
| `/auditoria-instagram @perfil` | auditoria em PDF 9:16 |

## O que falta para criativos e vídeo saírem 100% pelo Claude
| Item | Para quê | Custo |
|---|---|---|
| ElevenLabs (chave) | transcrição e limpeza de vídeo | ~US$ 5/mês |
| Google AI Studio (chave) | imagens/thumbnails com Gemini | grátis |
| Paper Design Pro + MCP | carrosséis editáveis | ~US$ 15/mês |
| Upload-Post | publicar cortes em vários perfis | ~US$ 30/mês |
| Higgsfield (terminar conexão) | fotos/vídeos com IA de alta qualidade | ~US$ 30/mês |
| Perfil do criador (`~/.config/vha-vibe-marketing/perfil/`) | @, cores, avatar e fotos usados por todas as skills de conteúdo | grátis |
As chaves vão em `~/.config/vha-vibe-marketing/.env`, fora do Git.

## Conectores — conferido em 2026-11-15
Ligar em **claude.ai → Configurações → Conectores → Procurar conectores**. Só o Ricardo pode
fazer o login de cada um (OAuth); o Claude não consegue conectar sozinho.

### Prioridade alta (impacto direto na agência)
| Conector | Para quê | Custo |
|---|---|---|
| **Metricool** | agendar posts, analytics de redes sociais, melhor horário | plano grátis limitado |
| **Firecrawl** | ler sites e landing pages de concorrentes | plano grátis |
| **TikTok for Business** | campanhas TikTok Ads | grátis (conta TikTok Ads) |
| **Semrush** ou **Similarweb** | tráfego, palavras-chave e concorrentes | pago |

### Prioridade média
| Conector | Para quê |
|---|---|
| **Make** ou **n8n** | automações (lead do formulário → WhatsApp/CRM/planilha) |
| **Figma** | quando houver design de site/LP no Figma |
| **Klaviyo** | só se algum cliente fizer e-mail marketing de e-commerce |

### Reconectar / limpar
- **vidIQ** — pede reconexão.
- **FACEBOOK META ADS** — reconectar ou remover (o Pipeboard é o principal).
- Incompletos sem uso (Atlassian, Granola, Speko, Adobe CJA, Health Data Avatar): remover para não poluir.

## Perplexity (MCP oficial, no Claude Code do notebook)
Não existe conector do Perplexity no diretório do claude.ai; ele entra como MCP no Claude Code.
1. Crie a chave em https://www.perplexity.ai/settings/api (paga por uso, separada do plano Pro).
2. PowerShell (a chave fica só no seu computador, nunca no repositório):
```powershell
[System.Environment]::SetEnvironmentVariable("PERPLEXITY_API_KEY","COLE_A_CHAVE_AQUI","User")
```
3. Abra um PowerShell novo e registre (remoto, sem instalar nada):
```powershell
claude mcp add --scope user --transport http perplexity https://api.perplexity.ai/mcp --header "Authorization: Bearer $env:PERPLEXITY_API_KEY"
```
   Alternativa local: `claude mcp add --scope user perplexity --env PERPLEXITY_API_KEY=$env:PERPLEXITY_API_KEY -- npx -y @perplexity-ai/mcp-server`
4. Confira com `claude mcp list` e `/mcp`. Se o `claude` não for reconhecido, resolva antes o PATH (ver [[Pendencias]]).

Fonte: https://github.com/perplexityai/modelcontextprotocol
