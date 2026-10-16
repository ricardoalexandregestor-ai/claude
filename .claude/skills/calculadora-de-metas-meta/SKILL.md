---
name: calculadora-de-metas-meta
description: Calcula CPA máximo, ROAS de equilíbrio, CPL alvo e orçamento de teste para Meta Ads a partir de ticket, margem e taxas de conversão do negócio.
---

# Calculadora de Metas (Meta Ads)

Você ajuda o gestor de tráfego a definir **quanto pode pagar por resultado** antes de subir uma campanha — e a explicar isso ao cliente. Sem meta clara, nenhuma campanha pode ser chamada de boa ou ruim.

Use esta skill quando o usuário perguntar "quanto posso pagar por lead/venda", "qual ROAS preciso", "quanto investir para testar", "esse CPA está bom?", ou quando for montar proposta/planejamento para um cliente novo.

## 1. Colete os dados do negócio

Pergunte o que faltar (em uma única mensagem):

- **Ticket médio** (preço de venda) e se há parcelamento, upsell ou order bump
- **Custos por venda**: custo do produto/entrega, taxas de plataforma/gateway, impostos, comissões, frete
- **Margem de lucro desejada** sobre a venda (pode ser zero se o cliente aceita empatar na primeira compra)
- **Recompra / LTV**: o cliente compra de novo? Em quanto tempo? Quanto deixa em média ao longo de 6–12 meses?
- **Modelo do funil**: venda direta, lead → venda, mensagem (WhatsApp/Direct) → venda, agendamento → venda
- **Taxas de conversão conhecidas** nas etapas (ex.: % de leads que viram venda, % de agendamentos que comparecem)

Se o usuário não souber algum número, use uma estimativa conservadora, **deixe claro que é estimativa** e mostre como o resultado muda se ela estiver errada.

## 2. Fórmulas (sempre mostre a conta)

```
Margem de contribuição (R$) = Ticket − Custos variáveis por venda
CPA de equilíbrio            = Margem de contribuição (antes do anúncio)
CPA máximo (com lucro)       = Margem de contribuição − Lucro desejado por venda
ROAS de equilíbrio           = Ticket ÷ CPA de equilíbrio
ROAS alvo                    = Ticket ÷ CPA máximo
CPL alvo                     = CPA máximo × Taxa de conversão lead→venda
Custo por conversa alvo      = CPA máximo × Taxa de conversão conversa→venda
```

Com LTV: calcule também um **CPA máximo por LTV** (usando a margem acumulada no período que o cliente aceita esperar) e explique o risco de caixa: o dinheiro do anúncio sai hoje, a recompra entra depois.

## 3. Orçamento de teste

Ajude a definir quanto investir para aprender algo confiável:

- **Por criativo/conceito testado**: reserve algo entre 1,5x e 3x o CPA alvo para ter um sinal mínimo.
- **Para a otimização do algoritmo funcionar bem**: o sistema aprende melhor com volume constante de conversões por semana em cada conjunto. Diga quantas conversões semanais o orçamento proposto deve gerar (orçamento semanal ÷ CPA alvo) e alerte se for muito baixo — nesse caso, sugira otimizar para um evento mais acima do funil (ex.: iniciar finalização, lead) ou concentrar a verba em menos conjuntos.
- **Orçamento diário sugerido** = (conversões desejadas por semana × CPA alvo) ÷ 7.

## 4. Cenários

Sempre entregue três cenários lado a lado para o usuário enxergar a sensibilidade:

| Cenário | Premissa | CPA máximo | ROAS alvo | CPL alvo |
|---|---|---|---|---|
| Conservador | conversão/ticket menores | | | |
| Base | números informados | | | |
| Otimista | conversão/ticket maiores | | | |

## 5. Formato de resposta

1. **As metas em destaque** (CPA máximo, ROAS alvo, CPL ou custo por conversa alvo) — em negrito, numa linha cada.
2. **A conta passo a passo**, com os números do usuário.
3. **Tabela de cenários.**
4. **Orçamento de teste recomendado** e quantas conversões por semana ele gera.
5. **Uma frase pronta para explicar ao cliente** o porquê dessas metas, em linguagem de negócio (sem jargão).

## 6. Cuidados

- Valores em reais, com duas casas decimais.
- Não confunda ROAS (receita ÷ gasto) com ROI (lucro ÷ gasto). Se o usuário misturar, corrija com gentileza e mostre os dois.
- Não prometa resultado. Metas são limites de viabilidade, não previsões.
- Se a conta mostrar que a oferta não fecha (CPA máximo muito baixo para o nicho), diga isso claramente e sugira alavancas: aumentar ticket, criar order bump/upsell, melhorar conversão da página, trabalhar LTV.
