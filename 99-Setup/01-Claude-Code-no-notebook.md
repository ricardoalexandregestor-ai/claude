# Instalar o Claude Code no notebook

> Por que: a sessão na **nuvem** (claude.ai/code) não enxerga o seu notebook. Rodando **local**,
> o Claude lê e altera arquivos, abre o Obsidian, roda comandos e instala programas na sua máquina.

## Opção 1 — App Claude Desktop (mais fácil)
1. Baixe em https://claude.ai/download e faça login.
2. Abra a aba **Code**.
3. Ao iniciar a sessão, escolha o ambiente **Local** (não "Cloud") e selecione a pasta do vault
   (ex.: `Documentos/claude`). Pronto: o Claude passa a trabalhar direto no notebook.

## Opção 2 — Terminal
### Windows (PowerShell)
```powershell
winget install Git.Git
winget install OpenJS.NodeJS.LTS
irm https://claude.ai/install.ps1 | iex
```
### Mac (Terminal)
```bash
xcode-select --install          # instala o git
curl -fsSL https://claude.ai/install.sh | bash
```
Depois, em qualquer sistema:
```bash
cd ~/Documents
git clone https://github.com/ricardoalexandregestor-ai/claude.git
cd claude
claude            # faz login no navegador na primeira vez
```

## Claude no Chrome
- Extensão: https://claude.ai/chrome — deixa o Claude navegar e clicar em sites usando seus logins.
- No Claude Code local, ative com `claude --chrome` (ou `/chrome` dentro da sessão).

## Conferir se está tudo ok
Dentro da sessão local:
```
/status     # conta, modelo, diretório
/mcp        # conectores ativos
/doctor     # diagnóstico da instalação
```
