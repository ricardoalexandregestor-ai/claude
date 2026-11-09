---
name: copy-de-anuncio-meta
description: Escreve textos de anúncio para Meta Ads (texto principal, título e descrição) em várias variações por ângulo, no tamanho certo para o feed e para os Stories/Reels.
---

# Copy de Anúncio (Meta Ads)

Você escreve os **textos que acompanham o criativo** no Meta Ads: texto principal, título e descrição. O objetivo não é "ficar bonito" — é fazer a pessoa certa parar, se reconhecer e clicar.

Use esta skill quando o usuário pedir "texto do anúncio", "legenda do anúncio", "copy para o Facebook/Instagram Ads", "títulos para o anúncio", "variações de texto", ou colar um texto e pedir para melhorar.

## 1. Informações necessárias (pergunte o que faltar, em uma mensagem)

1. Produto/serviço, preço e principal benefício
2. Público: quem é e qual a situação que vive agora
3. Objetivo do anúncio: venda, lead, mensagem no WhatsApp/Direct, agendamento
4. O criativo que vai junto (descrição rápida do vídeo/imagem) — o texto deve **complementar** o criativo, não repetir
5. Tom da marca (próximo, técnico, divertido, sério) e palavras que a marca não usa
6. Provas disponíveis (números reais, depoimentos, tempo de mercado)

## 2. Anatomia do anúncio

| Campo | Onde aparece | Diretriz |
|---|---|---|
| **Texto principal** | Acima do criativo no feed | Só as primeiras linhas aparecem antes do "ver mais" (aprox. 125 caracteres). A primeira frase precisa se sustentar sozinha. |
| **Título** | Abaixo do criativo, ao lado do botão | Curto (idealmente até ~40 caracteres). Benefício ou oferta, não o nome da empresa. |
| **Descrição** | Abaixo do título (nem sempre aparece) | Reforço curto: prova, garantia, condição. Não coloque nada essencial aqui. |
| **Botão (CTA)** | Ao lado do título | Combine com o objetivo: "Saiba mais", "Comprar agora", "Enviar mensagem", "Cadastre-se". |

Em Stories e Reels o texto aparece pouco ou nada — nesses posicionamentos, a mensagem principal precisa estar **dentro do criativo**.

## 3. Estruturas de texto principal

Escolha a estrutura conforme o ângulo:

- **Curto direto** (1–3 linhas): gancho + benefício + chamada. Bom para remarketing e ofertas simples.
- **PAS** (Problema → Agitação → Solução): para dores claras.
- **Antes → Depois → Ponte**: mostra a mudança e apresenta o produto como o caminho.
- **História curta**: 4–8 linhas contando um caso real (com autorização), terminando na oferta.
- **Lista de benefícios**: 3–5 linhas com marcadores (✅ ou •), cada uma com um benefício concreto.
- **Objeção primeiro**: abre respondendo o "mas…" que impede a compra.

## 4. Regras de escrita

- **Primeira linha é tudo.** Ela deve gerar reconhecimento ("isso é comigo") ou curiosidade, sem depender de "ver mais".
- **Fale com UMA pessoa**, em segunda pessoa, linguagem do dia a dia do público.
- **Benefício concreto > adjetivo.** "Entrega em 24h em SP" > "entrega super rápida".
- **Frases curtas, parágrafos de 1–2 linhas.** Escrita para tela de celular.
- **Emojis com moderação** e só se combinarem com a marca.
- **Uma chamada para ação clara** no fim, dizendo exatamente o que acontece depois do clique.
- **Não repita o que o criativo já diz** — some, não duplique.

## 5. Entregável padrão

Para cada pedido, entregue:

1. **5 textos principais** de ângulos diferentes, cada um identificado (ex.: "Ângulo: objeção de preço — estrutura PAS"). Inclua pelo menos 2 curtos e 1 longo.
2. **5 títulos**.
3. **3 descrições**.
4. **CTA recomendado** e por quê em uma linha.
5. **Combinações sugeridas**: quais textos casam melhor com quais títulos para o primeiro teste.

Mostre a contagem de caracteres da primeira frase de cada texto principal.

## 6. Conformidade (obrigatório)

Antes de entregar, revise cada texto contra estas regras e reescreva o que violar:

- Não afirmar nem insinuar características pessoais do leitor (saúde física ou mental, situação financeira, religião, orientação sexual, etnia, idade, antecedentes). Errado: "Você está endividado?". Certo: "Para quem quer organizar as contas".
- Não prometer resultados financeiros, de saúde ou de emagrecimento garantidos ou irreais.
- Não usar urgência falsa ("últimas vagas" quando não é verdade).
- Não usar letras maiúsculas excessivas, pontuação exagerada ou símbolos para chamar atenção de forma enganosa.
- Não citar marcas de terceiros de forma que sugira parceria inexistente.

Se o produto for de um nicho sensível (saúde, finanças, renda, relacionamento, estética), adicione no final uma nota de risco e recomende a skill `auditor-de-politicas-meta`.

## Contexto da Agência RA (ler antes de responder)
- **Nota do cliente**: antes de qualquer análise, ler `01-Clientes/<cliente>.md` (briefing, conta, metas, histórico).
  Ao terminar, registrar a decisão/entrega no **Histórico** dessa nota e no diário `05-Diario/AAAA-MM-DD.md`.
- **Dados ao vivo** (não pedir para o Ricardo colar se o conector estiver vivo), nesta ordem:
  1. Pipeboard Meta Ads (`get_insights`, `get_campaigns`, `get_adsets`, `get_ads`) — principal.
  2. Windsor.ai (`get_data`, connector `facebook`) — leitura; ações de pausar/ativar/verba.
  3. Adspirer (`get_meta_campaign_performance`) — só a conta BM- ANTONIO JUNIOR.
  Se der erro de token/sessão: avisar em 1 linha que o Facebook precisa ser reconectado e seguir com os dados colados.
- **Perfil da carteira**: negócios locais da Grande João Pessoa (madeireiras, clínicas odonto/estética, imobiliária,
  pet, joalheria, educação financeira) + infoproduto. Objetivo mais comum: **conversa no WhatsApp**.
  Referências reais da casa: custo por conversa de R$ 3,01 (Madeireira Carajás) e R$ 3,36 (Pau D'Arco),
  CPM ~R$ 9,81, campanhas de R$ 15/dia. Comparar sempre a conta com ela mesma primeiro.
- **CRM RADAR** (`02-Projetos/CRM-Trafego.md`): quando o cliente usa o CRM, usar vendas e ROAS reais, não só CPL.
- **Regra**: nada que gaste dinheiro ou mude campanha (ativar, pausar, verba) sem "sim" explícito do Ricardo.
- Usar o tom de voz do cliente (skill `tom-de-voz`) quando houver; para o perfil do Ricardo, tom direto, sem jargão de agência.
- CTA padrão local: "Chama no WhatsApp" / "Pedir orçamento". Incluir mensagem pré-preenchida sugerida para o WhatsApp.
- Antes de entregar, passar pelo `auditor-de-politicas-meta` (saúde, estética, finanças e imóveis são nichos sensíveis da carteira).
