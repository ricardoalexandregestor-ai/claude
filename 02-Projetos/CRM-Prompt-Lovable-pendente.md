---
tipo: prompt
status: pendente (Lovable sem créditos em 09/11)
---
# Prompt pendente para o Lovable (RADAR CRM)

Cole no chat do projeto quando houver crédito (https://lovable.dev/projects/83c196be-3c09-459e-b7ba-e36c0d1fb155).
O que **já foi feito direto no banco** (09/11): nicho `ingles-maritimo`, cliente "Sarto Oficial (Maria Sarto)",
colunas `leads.respostas` e `leads.ctwa_clid` e o cálculo automático de score/temperatura (testado: quente = 100, frio = 10).
Falta a parte de **telas**: o prompt abaixo.

---

Três coisas, nesta ordem. Não quebre o que já funciona.

1) CORRIGIR O BUILD: rode o typecheck/build e corrija TODOS os erros (inclusive src/lib/remaining.functions.ts) até a prévia abrir sem erro.

2) MARCA DO DONO: o CRM é do Ricardo Alexandre (Agência RA). Na tela inicial, no login e no menu lateral mostre "RADAR CRM · por Ricardo Alexandre" e, no rodapé, "Agência RA · Gestão de tráfego pago". No portal do cliente e no formulário público, rodapé discreto "Tecnologia RADAR · Agência RA". Nome da agência editável em /configuracoes.

3) QUALIFICAÇÃO DO NICHO "ingles-maritimo" (o nicho, o cliente Sarto, as colunas leads.respostas jsonb e leads.ctwa_clid e o trigger que calcula score/temperatura JÁ EXISTEM no banco; só falta a interface):
- No formulário público /f/$token e no cadastro rápido de lead, quando o nicho do cliente for ingles-maritimo, mostrar estas perguntas e gravar em leads.respostas com estas chaves e valores:
  a) embarcado — "Você trabalha embarcado hoje?": mercante (Sim, marinha mercante) · offshore (Sim, offshore) · quero_entrar (Ainda não, quero entrar) · outro
  b) departamento — "Departamento/função": conves · maquinas · camara · oficial · nao_embarcou
  c) nivel — "Seu nível de inglês hoje": basico (Zero/básico) · travo (Entendo mas travo para falar) · intermediario · avancado
  d) objetivo — "Para que você precisa do inglês?": entrevista (Entrevista em empresa estrangeira) · radio (Rádio/comunicação a bordo) · promocao (Promoção/certificado) · outro
  e) prazo_entrevista — "Tem entrevista ou embarque marcado?": 30d (Sim, em até 30 dias) · 90d (Sim, em até 90 dias) · nao
  f) inicio — "Quando pode começar?": agora · 30d (Em até 30 dias) · pesquisando (Só pesquisando)
- O banco já calcula score e temperatura ao gravar respostas. Mostre score e temperatura (quente/morno/frio) no card do Kanban, na ficha do lead e permita filtrar "só quentes".
- Na ficha do lead, mostre as respostas em português.
- Gravar ctwa_clid e fbclid da URL do formulário quando existirem. Campo ctwa_clid editável na ficha do lead.
