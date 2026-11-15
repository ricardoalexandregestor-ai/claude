---
description: Raio-x de um cliente ou da carteira inteira de Meta Ads (somente leitura).
argument-hint: [cliente | carteira] [período, padrão 30 dias]
---
Use o agente `analista-dados` para fazer o raio-x de: $ARGUMENTS
- Se for "carteira" ou vazio: todas as contas ativas de `01-Clientes/00-Clientes.base`.
- Métricas: gasto, resultado, CPA/CPL, CTR, CPM, frequência, comparação com o período anterior e com as metas da nota do cliente.
- Para cada conta: os 3 maiores problemas e a ação recomendada (com `diagnostico-de-campanha-meta`).
Não altere nenhuma campanha. Atualize a nota de cada cliente e me mostre uma tabela resumo.
