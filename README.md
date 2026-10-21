# Cérebro do Ricardo (Obsidian + Claude)

Vault do Obsidian sincronizado com o GitHub, lido pelo Claude em toda sessão.

- Instruções para o Claude: [`CLAUDE.md`](CLAUDE.md)
- Instalar o Claude Code no notebook: [`99-Setup/01-Claude-Code-no-notebook.md`](99-Setup/01-Claude-Code-no-notebook.md)
- Abrir este vault no Obsidian: [`99-Setup/02-Obsidian-com-GitHub.md`](99-Setup/02-Obsidian-com-GitHub.md)
- Skills e conectores: [`99-Setup/03-Skills-e-Conectores.md`](99-Setup/03-Skills-e-Conectores.md)
- Pendências: [`00-Inbox/Pendencias.md`](00-Inbox/Pendencias.md)

## Skills deste repositório

As skills ficam em `.claude/skills/`, uma pasta por skill, cada uma com seu `SKILL.md`. O Claude Code carrega todas automaticamente em qualquer sessão aberta neste repositório.

### Gestão de tráfego no Meta Ads

| # | Skill | Comando | Para que serve |
|---|---|---|---|
| 1 | Diagnóstico de Campanha | `/diagnostico-de-campanha-meta` | Onde o funil quebrou e o que pausar, manter, ajustar ou escalar. |
| 2 | Calculadora de Metas | `/calculadora-de-metas-meta` | CPA máximo, ROAS de equilíbrio, CPL alvo e orçamento de teste. |
| 3 | Arquiteto de Estrutura | `/estrutura-de-campanha-meta` | Campanhas, conjuntos, orçamento, testes e nomenclatura. |
| 4 | Estrategista de Criativos | `/estrategista-de-criativos-meta` | Matriz de ângulos, briefings e roteiros de criativos. |
| 5 | Copy de Anúncio | `/copy-de-anuncio-meta` | Texto principal, título e descrição em várias variações. |
| 6 | Auditor de Políticas | `/auditor-de-politicas-meta` | Risco de reprovação e versão segura do anúncio. |
| 7 | Relatório para Cliente | `/relatorio-para-cliente-meta` | Relatório em linguagem de negócio para o cliente. |

Não precisa chamar pelo comando: basta pedir normalmente ("meu CPA subiu 40%, segue as métricas…") que o Claude escolhe a skill certa.

Fluxo sugerido: Calculadora (2) → Estrutura (3) → Criativos (4) → Copy (5) → Políticas (6) → Diagnóstico (1) → Relatório (7).

Detalhes e avisos em [`.claude/skills/LEIA-ME.md`](.claude/skills/LEIA-ME.md).

### Formato do Obsidian

Ensinam o Claude a escrever no padrão do vault — links `[[nota]]`, propriedades, Canvas e Bases:
`obsidian-markdown`, `obsidian-bases`, `obsidian-cli`, `json-canvas`, `knap`, `defuddle`.
