---
tipo: guia
data: 2026-11-07
---
# Reconectar o Meta Ads e arrumar os conectores (15 min, só você pode)

## Por que caiu
O Facebook **invalidou a sessão** da sua conta, por troca de senha ou checagem de segurança
(erro 190/460, visto em 07/11). Todo conector que usa esse login caiu junto: Pipeboard, Windsor,
o conector oficial do Meta e o vidIQ. O Claude não consegue reautorizar sozinho, porque a autorização
abre a tela de login do Facebook.

## Passo a passo, na ordem (do mais importante ao menos)
1. **Pipeboard** (principal: 136 ferramentas, lê e mexe em todas as contas)
   → https://pipeboard.co/connections → *Reconnect* no seu login do Facebook.
   Entre com o Facebook que tem acesso às BMs. Na tela de permissões, marque **todas as contas e páginas**.
2. **Conector oficial "FACEBOOK META ADS"** → claude.ai → Configurações → Conectores → *Reconectar*.
3. **vidIQ** → mesmo lugar → *Reconectar* (as auditorias de Instagram dependem dele).
4. **Windsor.ai**: o plano grátis só lê **1 conta**. Escolha uma das duas:
   - (recomendado) deixar o Windsor só com o **Instagram do seu perfil** e usar o Pipeboard para o Meta Ads; ou
   - assinar o Windsor se quiser relatórios multi-conta por lá.
   Para reconectar: claude.ai → peça ao Claude "me dá o link de reconexão do Windsor".
   O link é pessoal, então não fica salvo aqui.
5. Avisar o Claude: **"reconectei"**. Ele então:
   - pausa a campanha GPS da Adelaide (você mandou desligar);
   - atualiza o status das 20 contas em `03-Conhecimento/Meta-Contas-Status.md`;
   - preenche os números de cada nota em `01-Clientes/`.

## Repositório privado (2 min)
O Claude não tem permissão para mudar a visibilidade do repositório. Faça você:
GitHub → `ricardoalexandregestor-ai/claude` → **Settings** → General → *Danger Zone* →
**Change visibility → Make private**. Nada quebra: Obsidian e Claude continuam funcionando.
Depois disso dá para guardar no vault material mais sensível (skills pagas do Vibehub, transcrições).

## Limpeza de conectores (deixa o Claude mais rápido e barato)
claude.ai → Configurações → Conectores:
- **Remover** (instalação incompleta, nunca usados): Atlassian MCP, Atlassian Rovo (×2),
  Adobe Customer Journey Analytics, Chatfyre, Granola, HubSpot, Ryze AI, Slack, Speko.
- **Desligar**: Health Data Avatar (dados de saúde não precisam ficar ligados no trabalho).
- **Manter para marketing**: Pipeboard, Meta oficial, Motion (criativos), Canva, Magnific, Apify,
  Vibehub, Supabase, Lovable, Gmail, Drive, Agenda, Notion, Trello.
- **Avaliar**: Supermetrics e Windsor fazem o mesmo papel (relatório multi-plataforma). Fique com um só.

## WhatsApp
Não existe conector oficial do WhatsApp no Claude. Caminhos, em ordem de recomendação:
1. **Curso "Agente de WhatsApp" do Vibehub** (8 aulas, 48 min): Z-API ou API oficial + IA + banco.
   É o caminho para atendimento automático de lead dos clientes, e casa com o CRM RADAR.
2. Repositório **OpenWA** (arsenal do Vibehub): open source, roda num servidor.
3. Conectores do diretório (Bird, MyChatBot): pagos e sem relação com o seu fluxo. Só se o curso não resolver.

## Ainda falta (do guia de stack)
- PATH do CLI `claude` no notebook (comando em `00-Inbox/Pendencias.md`).
- Chave da ElevenLabs (transcrição para o Vibe Viral): guardar no `.env`, nunca no chat.
- Rodar `99-Setup/instalar-arsenal-vibehub.ps1` no notebook.
