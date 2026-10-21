# Abrir este vault no Obsidian (sincronizado com o GitHub)

1. Instale o Obsidian: https://obsidian.md
2. Clone o repositório (se ainda não clonou — ver `01-Claude-Code-no-notebook.md`).
3. Obsidian → **Abrir pasta como vault** → escolha a pasta `claude`.
4. Configurações → **Plugins da comunidade** → ativar → procurar **Obsidian Git** → instalar e ativar.
5. As configurações já vêm prontas no repositório (`.obsidian/`):
   - Obsidian Git: *pull ao abrir* ON, *commit-and-sync* a cada 10 min.
   - Notas novas vão para `00-Inbox/`; nota diária em `05-Diario/AAAA-MM-DD` usando `04-Templates/Diario`.
   - Modelos (`Ctrl+T` / *Inserir modelo*) vêm de `04-Templates/`.
6. Pronto: o que você escrever no Obsidian sobe pro GitHub, e o que o Claude escrever (da nuvem
   ou local) aparece no seu Obsidian.

## Skills de Obsidian para o Claude
Skill do Vibehub "Obsidian Skills (kepano)" — ensina o Claude a escrever no formato do Obsidian
(links `[[nota]]`, propriedades, Canvas, Bases). **Já estão em `.claude/skills/` deste vault**, então
qualquer sessão aberta nesta pasta (nuvem ou notebook) já as carrega. Para tê-las também fora do vault:
```bash
git clone https://github.com/kepano/obsidian-skills.git /tmp/obsidian-skills
mkdir -p ~/.claude/skills && cp -r /tmp/obsidian-skills/skills/* ~/.claude/skills/
```
(Se a estrutura do repositório mudar, copie as pastas que contêm `SKILL.md`.)
