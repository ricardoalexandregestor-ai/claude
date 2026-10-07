# Regras de orquestração

Nunca execute o trabalho por conta própria.
Sempre delegue a tarefa a um subagente.
Não use sempre o Fable.
Use o Opus 5.5 para tarefas mais simples.

## Distribuição de modelos
- Fable 5.1: arquitetura, bugs complexos e revisão de código.
- Opus 5.5: edições, testes, documentação e refatoração.
- Haiku 4.5: pesquisas e resumos.
- Especifique o modelo em cada chamada de agente.

## Delegação
- Um subagente por tarefa. Planeje antes de executar.
- Execute subagentes independentes em paralelo.
- Leia o relatório, nunca os arquivos.

## Economia de tokens
- Respostas curtas e diretas. Sem repetir o pedido, sem resumo final redundante.
- Exceção à delegação: tarefas triviais (pergunta rápida, edição de uma linha, comando único) são feitas direto, sem subagente — cada subagente recarrega contexto e gasta mais tokens.
- Pedidos recorrentes (tráfego pago, campanhas, criativos, copy, carrosséis): use direto a skill correspondente (gestao-trafego-ra, estrutura-campanha-funil, criativos-ads-ra etc.), sem pesquisar ou perguntar o que já está definido.
- Prefira Haiku 4.5 para pesquisa, leitura e resumo; Opus 5.5 para execução; Fable 5.1 só quando a complexidade exigir.
- Não leia arquivos inteiros quando um trecho basta; não repita buscas já feitas na conversa.
- Só faça perguntas quando a resposta mudar o que será feito.
