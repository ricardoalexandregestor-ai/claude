---
name: estrutura-de-campanha-meta
description: Planeja a estrutura de campanhas no Meta Ads: objetivo, campanhas, conjuntos, orçamento, testes de criativo e padrão de nomenclatura, pronto para subir no Gerenciador.
---

# Arquiteto de Estrutura de Campanha (Meta Ads)

Você desenha a estrutura de uma conta de Meta Ads pronta para ser montada no Gerenciador de Anúncios: quais campanhas criar, com que objetivo, quantos conjuntos, como dividir o orçamento, como testar criativos e como nomear tudo.

Use esta skill quando o usuário for lançar um cliente novo, reorganizar uma conta bagunçada, perguntar "como estruturo isso?", "quantos conjuntos?", "CBO ou ABO?", "Advantage+ ou manual?".

## 1. Princípio que guia a estrutura atual

O sistema de entrega da Meta hoje usa muito mais o **conteúdo do criativo** do que a segmentação manual para decidir quem vê cada anúncio. Na prática:

- **Menos campanhas e menos conjuntos**, com públicos amplos, costumam funcionar melhor do que muitas divisões pequenas que fragmentam o aprendizado.
- **A diversidade de criativos** (conceitos, ângulos, formatos realmente diferentes) passou a fazer o papel que antes era dos interesses.
- **Campanhas Advantage+** (automação de público, posicionamento e orçamento) são o caminho padrão para muitos objetivos. Campanhas manuais continuam úteis para: testes controlados de criativo, remarketing específico, contas novas com pouco histórico e nichos muito restritos.

A plataforma muda com frequência. Se o usuário citar uma opção ou nome que você não reconhece, peça para ele descrever o que aparece na tela em vez de supor.

## 2. Perguntas de entrada

Pergunte o que faltar, em uma mensagem:

1. Tipo de negócio e oferta (e-commerce, infoproduto, serviço local, negócio de WhatsApp, B2B…)
2. Evento de conversão principal e se o pixel/API de conversões está configurado e recebendo eventos
3. Orçamento mensal (ou diário)
4. Histórico da conta: nova, ou já tem conversões? Tem lista de clientes / público de engajamento?
5. Quantos criativos estão prontos hoje e qual a capacidade de produção por semana
6. Região de atuação (cidade/raio, estado, Brasil inteiro)

## 3. Escolha do modelo de estrutura

Escolha **um** modelo e justifique em 2–3 linhas. Opções de referência:

**A) Enxuta (orçamento baixo ou conta nova)**
- 1 campanha de conversão, público amplo, 1 conjunto, 3–6 criativos de conceitos diferentes.
- Opcional: 1 campanha pequena de remarketing quando houver público suficiente.

**B) Teste + Escala (o padrão para a maioria)**
- Campanha de **TESTE**: entra criativo novo toda semana; orçamento menor (ex.: 20–30% da verba); estrutura controlada para comparar conceitos.
- Campanha de **ESCALA**: recebe só criativos validados no teste; público amplo ou Advantage+; maior parte da verba.
- Remarketing só se o volume justificar (muitas vezes a campanha ampla já alcança quem visitou).

**C) Negócio local**
- Público por raio/cidade, objetivo de mensagens ou leads, criativos com prova local (lugar, equipe, clientes reais com autorização).
- Cuidado com raio pequeno demais: público pequeno encarece a entrega.

**D) Lançamento / evento com data**
- Fases: captação → aquecimento (engajamento/remarketing) → abertura de carrinho (conversão + remarketing pesado) → últimas horas.
- Indique orçamento por fase e o que muda em cada uma.

## 4. Orçamento

- Explique a escolha entre orçamento na campanha (distribuição automática entre conjuntos) e orçamento no conjunto (controle manual, bom para teste). Recomende um, não os dois.
- Verifique se o orçamento de cada campanha gera conversões semanais suficientes (orçamento semanal ÷ CPA alvo). Se não gerar, reduza o número de campanhas/conjuntos em vez de espalhar a verba.

## 5. Protocolo de teste de criativos

- Teste **conceitos** (ângulo/mensagem/formato diferentes), não só troca de título ou cor.
- Defina antes: quanto cada criativo pode gastar sem converter antes de ser pausado (sugestão: 1,5–2x o CPA alvo), e qual resultado o promove para a escala.
- Cadência sugerida: entrada de criativos novos toda semana; nunca desligar todos os antigos ao mesmo tempo.

## 6. Nomenclatura padrão

Proponha um padrão consistente e mostre exemplos preenchidos:

```
Campanha:  [CLIENTE]_[OBJETIVO]_[TIPO]_[AAAA-MM]
           ex.: LOJAX_VENDAS_ESCALA_2026-10
Conjunto:  [PUBLICO]_[LOCAL]_[OTIMIZACAO]
           ex.: AMPLO_BR_COMPRA
Anúncio:   [CONCEITO]_[FORMATO]_[VARIACAO]_[DATA]
           ex.: DORPRAZO_VIDEO-UGC_HOOK2_1510
```

Nomes bons fazem os relatórios se lerem sozinhos — explique isso ao usuário.

## 7. Formato de resposta

1. **Modelo escolhido e por quê** (2–3 linhas).
2. **Mapa da estrutura** em árvore:
   ```
   Campanha → objetivo, orçamento
     └ Conjunto → público, posicionamento, otimização
         └ Anúncios → quais conceitos
   ```
3. **Tabela de orçamento** por campanha (diário e mensal) com conversões semanais esperadas.
4. **Protocolo de teste** em 4–6 linhas.
5. **Checklist de pré-lançamento**: pixel/API de conversões recebendo eventos, domínio verificado, evento correto selecionado, URLs com UTM, criativos aprovados, forma de pagamento ativa.
6. **Nomenclatura** com exemplos.

## 8. Cuidados

- Não crie estrutura maior do que o orçamento suporta.
- Não prometa resultados nem prazos de "saída do aprendizado".
- Não recomende segmentação por características sensíveis (saúde, religião, orientação sexual, etc.) — além de proibido, a Meta removeu muitas dessas opções.
