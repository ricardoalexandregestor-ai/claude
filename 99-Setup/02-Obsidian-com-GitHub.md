# Abrir este vault no Obsidian (sincronizado com o GitHub)

1. Instale o Obsidian: https://obsidian.md
2. Clone o repositório (se ainda não clonou — ver `01-Claude-Code-no-notebook.md`).
3. Obsidian → **Abrir pasta como vault** → escolha a pasta `claude`.
4. Configurações → **Plugins da comunidade** → ativar → procurar **Obsidian Git** → instalar e ativar.
5. Em Obsidian Git, ligue:
   - *Auto pull on startup*: ON
   - *Auto commit-and-sync interval*: 10 minutos
6. Pronto: o que você escrever no Obsidian sobe pro GitHub, e o que o Claude escrever (da nuvem
   ou local) aparece no seu Obsidian.

## Skills de Obsidian para o Claude
Skill do Vibehub "Obsidian Skills (kepano)" — ensina o Claude a escrever no formato do Obsidian
(links `[[nota]]`, propriedades, Canvas, Bases). No notebook:
```bash
git clone https://github.com/kepano/obsidian-skills.git /tmp/obsidian-skills
mkdir -p ~/.claude/skills && cp -r /tmp/obsidian-skills/skills/* ~/.claude/skills/
```
(Se a estrutura do repositório mudar, copie as pastas que contêm `SKILL.md`.)
