---
tipo: cliente
status: ativo
---
# Maria Sarto

Inventário completo em produção (ver branch `claude/sarto-client-inventory-35osqu`).
Ao receber o `INVENTARIO_SARTO.md`, mover o conteúdo pra esta nota.

## Aulas para edição (Sarto Oficial)
Fluxo: a Sarto manda as anotações do Gemini por e-mail → o Claude resume e monta o pedido de edição → o Ricardo repassa para o editor → a aula sobe na plataforma.

| Data aula | Lição | Turma | Nota | Status |
|---|---|---|---|---|
| 2026-10-08 | Unit 01 · Lesson 07 · Speaking (4 aulas) | Turma 01 | [[2026-10-08 Lesson 07 - Turma 01]] | aguardando OK da Sarto / editor |

### Sistema de edição no Drive (ricardoalexandregestor)
- Pasta-mãe: [Sarto · Edição de Aulas](https://drive.google.com/drive/folders/15rPQbNqmKXoHLoV_VcNWpCC7y3VS2Yfz). Uma subpasta por lição, cada uma com:
  - `📋 LEIA PRIMEIRO`: briefing com os links das gravações e os cortes.
  - `✅ Prontas para subir`: onde o editor devolve os vídeos prontos.
- Dois formatos por lição: **AULA BASE** (a melhor gravação, inteira e limpa) e **Perguntas dos alunos** (dúvidas das outras turmas, juntas num vídeo).
  A Sarto já usava essa convenção ("Lesson 03 - AULA BASE", "Tirar melhores perguntas").
- Lesson 07: base = gravação 4 (18:58). Perguntas = gravações 1, 2 e 3. [Briefing](https://docs.google.com/document/d/1ktHN6Z_bik5zeTZnyXU1l4NmG1YTBnUzq52F8WVhO5w/edit)
- Editor: Drayson Alyson. A última enviada foi a Lesson 11. Pendentes: Lesson 07 (curso principal) e o curso básico a partir da 03.
- Lesson 13 (26/10, Turma 01, 09:29): AULA BASE, conforme instrução da Sarto: manter só a 1ª rodada de perguntas estilo entrevista e cortar as repetições. [Briefing](https://docs.google.com/document/d/1OLvqogmeqCz92Jczb3nVM4OjF-oUMp8av6KnmtFDvj4/edit). Faltam as anotações do Gemini para marcar os minutos.
- 2026-10-30: Gmail agora é o **ricardoalexandregestor** (o ricardinhonego saiu). Solicitação de 3 e-mails, **4 vídeos** (2 base + 2 perguntas), com PDF enviado por e-mail ao Ricardo. Controle em [[Controle de edições]].

## CRM RADAR: teste com a Sarto (desde 09/11/2026)
Primeiro cliente real do CRM do Ricardo. Nicho criado: **Inglês Marítimo / Offshore**.
Funil: Novo → Qualificando → Diagnóstico → Proposta enviada → Matriculado / Perdido.

### O que é lead qualificado para a Sarto
Seis perguntas viram um **score de 0 a 100**, calculado sozinho pelo banco:
| Pergunta | Pontua mais |
|---|---|
| Trabalha embarcado? | mercante/offshore (+20), quer entrar (+10) |
| Para que precisa do inglês? | entrevista ou rádio (+20) |
| Entrevista/embarque marcado? | até 30 dias (+25), até 90 dias (+15) |
| Quando pode começar? | agora (+20), até 30 dias (+10) |
| Nível de inglês | "entendo mas travo" ou intermediário (+15), básico (+10) |
| Departamento | (informativo: convés, máquinas, câmara, oficial) |
**Quente ≥ 60** (atender em 5 min) · **Morno 35–59** · **Frio < 35** (nutrir, sem gastar tempo do atendimento).

### Diagnóstico da conta (últimos 30 dias até 07/11, via Pipeboard)
- Investimento: **R$ 1.182** · conversas iniciadas: **316** · custo médio por conversa ≈ **R$ 3,74**.
- Melhor campanha: FUNIL-01-TOPO, R$ 689 e 211 conversas a **R$ 3,27**. SARTO-VENDA-CONVERSAS: R$ 1,79 por conversa, mas com volume pequeno.
- 191 pessoas mandaram 3 ou mais mensagens (60% das conversas): tem gente interessada de verdade.
- **O buraco**: nenhuma dessas conversas é medida até a matrícula. Não há pixel/dataset na conta e nenhum
  formulário de lead. Hoje a Meta otimiza para "quem manda oi", e não para "quem vira aluno".
- ⚠️ Status em 09/11: 4 campanhas aparecem como **ATIVAS** no nível de campanha (01-TOPO, 03-FUNDO, Vendas,
  Tráfego-começo). O Ricardo disse que nada está rodando. Conferir conjuntos e saldo no Gerenciador. **Não mexi.**

### Instalação (passo a passo)
1. ✅ Cliente, nicho e score no banco do CRM (09/11).
2. ⏳ Telas da qualificação e marca "por Ricardo Alexandre": Lovable sem créditos; prompt em [[CRM-Prompt-Lovable-pendente]].
3. ⏳ Atendimento: quem responde o WhatsApp da Sarto (5521…3401) registra cada conversa no **cadastro rápido** com
   as 6 respostas. Os scripts por etapa estão no nicho. As perguntas entram naturalmente na conversa.
4. ⏳ Anúncio: na mensagem de boas-vindas do Click-to-WhatsApp, colocar perguntas rápidas
   ("Já estou embarcado" / "Quero entrar na marinha/offshore" / "Tenho entrevista marcada"). Isso filtra curioso
   já no primeiro toque.
5. ⏳ Fase 2: criar um **dataset** (Gerenciador de Eventos) ligado à página/WhatsApp da Sarto e enviar
   "LeadQualificado" (score ≥ 60) e "Purchase" (matrícula) pela Conversions API com o `ctwa_clid`.
   Aí a campanha passa a buscar quem matricula.
6. Teste de 14 dias quando voltar a anunciar: comparar % de leads quentes e matrículas por campanha.
