# claude

Skills do Claude para gestão de tráfego no Meta Ads.

As skills ficam em `.claude/skills/`, uma pasta por skill, cada uma com seu `SKILL.md`. O Claude Code carrega todas automaticamente em qualquer sessão aberta neste repositório.

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
