---
tipo: auditoria
data: 2026-11-07
---
# Auditoria geral: vault, conectores, sessões e automações

Feita em 07/11/2026 numa sessão na nuvem. Só leitura nos conectores, **nada foi alterado em conta de anúncio**.

## 🔴 Crítico (resolver primeiro)

### 1. O repositório `claude` é PÚBLICO
O GitHub mostra `visibility: public`. Qualquer pessoa na internet lê:
- os IDs e o gasto das 20 contas Meta (`03-Conhecimento/Meta-Contas-Status.md`);
- nomes de clientes, o fluxo de edição da Sarto, a transcrição resumida de aula e o PDF de pedido de edição;
- o caminho da sua máquina, seus e-mails e sua rotina.

**Como resolver (2 min):** GitHub → repositório `claude` → *Settings* → *General* → *Danger Zone* →
**Change visibility → Private**. O Obsidian Git e o Claude continuam funcionando igual.

### 2. Sem acesso funcionando às contas Meta Ads
| Conector | Situação |
|---|---|
| Pipeboard | conector ok, mas **o login do Facebook caiu** → reconectar em https://pipeboard.co/connections |
| FACEBOOK META ADS (oficial) | `needs_reconnect` → claude.ai → Configurações → Conectores |
| Windsor.ai | leitura **pausada**: plano grátis = 1 conta, há 15 ligadas (11 Meta + 4 Instagram) |
| Adspirer | funciona, mas só enxerga `BM- ANTONIO JUNIOR`; cota 11/15 usada neste mês |
| vidIQ | `needs_reconnect` (as auditorias de Instagram dependem dele) |

Sem isso o Claude não consegue diagnosticar, relatar nem mexer em campanha. **Reconectar o Pipeboard resolve quase tudo.**
No Windsor: ou desliga 14 contas, ou desconecta o Windsor de vez (o Pipeboard já cobre).

### 3. Campanha GPS Financeiro (ADELAIDE VIANA) — início de 01/11 sem confirmação
Os dois agendamentos ("confirmar início" em 27/10 e "ativar campanha" em 01/11) foram **desligados em 14/10**
e não dispararam. Não deu pra conferir no Meta se a campanha `23859542649940790` foi ativada à mão,
porque os conectores estão caídos (item 2). **Conferir no Gerenciador hoje.**

## 🟠 Importante

### 4. Trabalho da Sarto estava fora do `main`
O branch `claude/kind-carson-24nxlv` tinha 5 commits de 28–30/10 (briefings das Lessons 07 e 13,
PDF de edição, controle de edições, diários de 28 e 29/10) que nunca entraram no `main`.
→ **Trazido para este branch** nesta auditoria. Ao aprovar o merge, vai pro `main` e aparece no Obsidian.

### 5. Branches e PR parados no GitHub
| Branch | Situação | Sugestão |
|---|---|---|
| `claude/compassionate-cori-9l9owe` | já está todo no `main` | apagar |
| `claude/skills-meta-ads` | já está todo no `main` | apagar |
| `claude/kind-carson-24nxlv` | incorporado neste branch | apagar depois do merge |
| `claude/new-session-sxzm2j` (PR #1) | **sobrescreveria o CLAUDE.md inteiro** e manda "nunca executar, sempre delegar a subagente" — gasta mais token, não menos | fechar o PR; as regras de economia de tokens úteis já foram portadas para o CLAUDE.md |

### 6. Sessões travadas esperando resposta sua
| Sessão | Parada desde | O que ela quer |
|---|---|---|
| Aumentar orçamento campanhas ativas | 26/10 | "sim" + se é R$2 por conjunto ou por campanha |
| Inventário Maria Sarto | 01/10 | "pode subir" (push bloqueado) |
| Meta Ads contas bloqueadas | 09/10 | saída de um comando no CMD — **já resolvido** pelo relatório de 22/10: nenhuma conta bloqueada → arquivar |
| CRM para gestão de tráfego | 19/09 | "começa" — e o Supabase `crm-ricardo-alexandre` está **pausado (INACTIVE)** |
| OpenJarvis | 19/09 | saída do `jarvis doctor` — ou trocar pelo Vibehub OS |
| Configuração de ferramentas | 21/10 | já superada pelo setup de 21–22/10 → arquivar |

Arquivar o que morreu deixa a lista limpa e evita retomar contexto velho.

### 7. Agendamentos (scheduled tasks)
| Nome | Estado | Observação |
|---|---|---|
| Post semanal — nicho tráfego pago | ✅ ligado, seg 09h (Brasília) | rodou 02/11 com sucesso |
| Auditoria Instagram — Madeireira Carajás | ⏸ desligado | depende do vidIQ (reconectar) |
| Auditoria Instagram — Pau D'Arco | ⏸ desligado | idem; o prompt usa caminho de Chromium antigo |
| GPS (2 lembretes) | ⏸ desligados | ver item 3 |

As duas auditorias carregam **17 conectores**, incluindo o **Health Data Avatar (dados de saúde)**,
que não tem nada a ver com Instagram. Ao religar, deixar só os necessários (vidIQ, Apify, Windsor/Pipeboard, Drive).

## 🟡 Melhorias

### 8. Conectores sobrando (pesam no contexto de toda conversa)
- **Instalação incompleta, nunca usados**: Atlassian MCP, Atlassian Rovo (×2), Adobe Customer Journey
  Analytics, Chatfyre, Granola, HubSpot, Ryze AI, Slack, Speko, Higgsfield → remover ou terminar de conectar.
- **Sobreposição em Meta Ads**: Pipeboard, oficial, Windsor, Adspirer, Supermetrics, Motion. Ficar com
  **Pipeboard (operação) + Motion (criativo)** e desligar o resto deixa as respostas mais rápidas e baratas.
- **Health Data Avatar**: dado de saúde não deveria ficar ligado em sessões de trabalho.

### 9. Obsidian Git faz push sozinho a cada 10 min
Conflita com a regra de autorizar push. Decisão sua: `"disablePush": true` no
`.obsidian/plugins/obsidian-git/data.json` mantém o commit automático e deixa o push manual.

### 10. Documentação estava desatualizada (corrigido nesta auditoria)
- `CLAUDE.md` dizia que faltava ffmpeg/yt-dlp e que o CLI não estava instalado; contava 23 skills (são 26);
  lista de conectores sem Windsor, Supermetrics, Motion, Brightdeck, Adobe, morphix, Adspirer.
- `99-Setup/03-Skills-e-Conectores.md`: tabela de ferramentas e de conectores.
- `00-Inbox/Pendencias.md`: prazo da Stripe (31/10) já passou; itens novos desta auditoria.

### 11. Diário parou em 29/10
Sessões de 26/10 (orçamento) e 30/10 (Sarto) não viraram nota. O CLAUDE.md pede registro — vale cobrar isso no fim de cada sessão.

### 12. Clientes sem nota
Só a Maria Sarto tem nota em `01-Clientes/`. As outras 18 contas ativas não têm briefing, metas nem histórico —
é o que mais ajudaria o Claude a responder sem perguntar de novo. Template pronto em `04-Templates/Cliente.md`.
Prioridade pelo gasto: Diametral-Orlamare, Dra. Thaynná, Fernanda Nanda, Madeireira Carajás, Pau D'Arco, ADELAIDE (GPS).

### 13. Vibehub
Progresso real: Módulo 1 4/4 · Módulo 2 1/5 · todo o resto 0. Índice completo em `03-Conhecimento/Vibehub/00-Indice.md`.
Próximo passo sugerido continua: Módulo 2 → Módulo 4 → Vibe Business 2, 3 e 8.

## ✅ O que está saudável
- Nenhuma senha, token ou chave no repositório (varredura feita).
- 13 skills do vault com `SKILL.md` válido (nome + descrição).
- `.gitignore` correto; configuração do Obsidian (diário, templates, Inbox) coerente.
- Gmail, Drive, Agenda, Notion, Trello, Canva, Supabase, Lovable, Apify, Magnific e Vibehub respondendo.
