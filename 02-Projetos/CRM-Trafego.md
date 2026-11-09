---
tipo: projeto
status: em construção (app no Lovable)
atualizado: 2026-11-07
---
# RADAR CRM — o CRM da Agência RA

> **App**: https://lovable.dev/projects/83c196be-3c09-459e-b7ba-e36c0d1fb155 (editor)
> **Prévia**: https://id-preview--83c196be-3c09-459e-b7ba-e36c0d1fb155.lovable.app
> Banco antigo (desenho original): Supabase `crm-ricardo-alexandre`, reativado em 07/11.

Leia nesta ordem: **1. o que é CRM** → **2. como usar no dia a dia** → **3. como vender**.

---

## 1. CRM em 5 minutos (sem jargão)

**CRM** é o caderno onde você anota cada pessoa que chamou o seu cliente e em que ponto ela está até
comprar. Sem ele, o lead que o seu anúncio trouxe some no WhatsApp e ninguém sabe se o problema
é a campanha ou o atendimento.

| Palavra | O que é | Exemplo na madeireira |
|---|---|---|
| **Lead** | quem demonstrou interesse | chamou no WhatsApp pelo anúncio |
| **Funil / etapas** | o caminho até comprar | Novo → Orçamento pedido → Enviado → Negociação → Ganho |
| **Estágio** | a etapa em que o lead está agora | "Orçamento enviado" |
| **Taxa de conversão** | dos leads que entraram, quantos compraram | 50 leads, 6 vendas = 12% |
| **CPL** | custo por lead = verba ÷ leads | R$ 450 ÷ 150 = R$ 3 |
| **CAC** | custo por cliente = verba ÷ vendas | R$ 450 ÷ 6 = R$ 75 |
| **ROAS** | quanto voltou por real investido = vendido ÷ verba | R$ 9.000 ÷ 450 = 20× |
| **Speed to lead** | tempo até a primeira resposta | quem responde em 5 min vende muito mais que quem responde em 2 h |

**Por que isso é ouro para um gestor de tráfego:** hoje você entrega CPL (custo da conversa). O CRM
mostra **venda**. Com ele você prova o ROAS, descobre que o problema às vezes é o atendimento e não o
anúncio, e o cliente para de achar que "o tráfego não dá resultado".

### O RADAR por dentro
- **Multi-cliente**: você vê todos os clientes; cada cliente vê só o dele (portal).
- **Funil por nicho**: madeireira, clínica, estética, imobiliária, pet, infoproduto, genérico.
  Cada nicho tem as próprias etapas, as faixas de CPL (bom/ruim) e mensagens prontas de WhatsApp.
- **Kanban**: arrastar o card muda a etapa e fica registrado no histórico.
- **Formulário de captura** com UTM e fbclid: sabe de qual campanha veio cada lead.
- **Portal do cliente**: link sem senha onde o dono do negócio vê funil, vendas e ROAS.
- **Simulador de verba**: verba → leads → vendas → faturamento previsto (fecha venda na reunião).
- **Próxima fase (já desenhada no banco)**: envio automático da venda para a Meta (Conversions API),
  o que faz o algoritmo achar mais compradores, e públicos automáticos (compradores, excluir).

## 2. Como usar no dia a dia (rotina de 15 min)
1. **Manhã**: tela *Tarefas* → retornos de hoje e atrasados.
2. **Leads novos**: responder em até 5 min (botão WhatsApp com a mensagem pronta da etapa).
3. **Arrastar os cards** conforme a conversa anda. Venda → informar o valor. Perdeu → o motivo.
4. **Sexta**: *Painel do cliente* → copiar o parágrafo explicativo para o relatório semanal
   (combina com a skill `relatorio-para-cliente-meta`).
5. **Motivos de perda** repetidos viram **criativo** (ex.: "achei caro" → anúncio que mostra o valor).

Quem arrasta os cards? O **atendente do cliente** (pelo celular). Por isso o produto precisa ser simples.

## 3. Como vender para os clientes

### A oferta
> "Eu não só trago o lead: eu te mostro quantos viraram venda e onde o seu atendimento está perdendo
> dinheiro. Você acompanha tudo por um link, do celular."

| Plano | O que inclui | Preço sugerido |
|---|---|---|
| **Essencial** | CRM + Kanban + portal do cliente + formulário de captura | R$ 197/mês |
| **Pro** | Essencial + relatório semanal com leitura dos números + scripts por nicho + treinamento do atendente | R$ 397/mês |
| **Max** | Pro + Conversions API (venda volta para a Meta) + públicos automáticos + revisão mensal do funil | R$ 697/mês |
| Setup (uma vez) | cadastro, importação da base antiga, treinamento de 1 h | R$ 300–500 |

Para quem já é cliente de tráfego: **Essencial grátis por 30 dias**. Depois do 1º mês, quem vê o ROAS
não quer largar. Prioridade: Madeireira Carajás e Pau D'Arco (volume de conversas alto), Dra. Thaynná (clínica).

### Roteiro da reunião (10 min)
1. Abrir o **Simulador** com os números dele: "com R$ 900/mês e o seu ticket, dá X vendas".
2. Mostrar o **portal de demonstração** no celular dele.
3. Pergunta-chave: "hoje você sabe quantas das conversas do anúncio viraram venda?" (quase ninguém sabe).
4. Oferecer os 30 dias e combinar quem vai arrastar os cards.

### Onboarding de um cliente (checklist)
- [ ] Cadastrar o cliente (nicho, verba, ticket, CPL alvo)
- [ ] Importar a base antiga em CSV, se houver
- [ ] Colocar o link do formulário na bio/LP ou registrar os leads do WhatsApp no Kanban
- [ ] Treinar o atendente (15 min): responder rápido, arrastar o card, marcar ganho e perdido
- [ ] Mandar o link do portal ao dono
- [ ] 1ª revisão em 7 dias

## Status e próximos passos
| Item | Status |
|---|---|
| Banco desenhado (Supabase, 13 tabelas, RLS) | ✅ desde 19/09, reativado em 07/11 |
| App — 1ª rodada (07/11, 10 créditos) | ✅ banco + RLS, 7 funis, dados demo, login (1º = owner), painel geral, clientes, Kanban + lista, ficha do lead, tarefas, painel do cliente, simulador |
| App — 2ª rodada (09/11) | 🟡 rodando: Importar CSV, Equipe, Configurações, formulário `/f/:token`, portal `/portal/:token` e correção do build (a prévia só abre depois dela) |
| Publicar (botão Publish no Lovable) | ⏳ você, quando aprovar a prévia |
| Domínio próprio (ex.: crm.agenciara.com.br) | ⏳ opcional, no Lovable |
| Conversions API e públicos automáticos | fase 2 |
| Sincronizar métricas da Meta | fase 2 (depende de reconectar o Facebook) |

> O plano gratuito do Lovable tem poucos créditos por dia. Se a construção parar no meio, o próximo
> pedido continua de onde parou (o Claude faz isso na próxima sessão).
