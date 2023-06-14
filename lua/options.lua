local opt = vim.opt

opt.bg = "dark" -- Configura a cor de fundo (backgroud)
opt.clipboard = "unnamedplus"
opt.confirm = true -- pesquisa incremental
opt.cursorline = true -- Usado para realçar a coluna do cursos
opt.encoding = "utf8" -- mostrar a numeração das linhas
opt.expandtab = true -- Controla o número de espaços que são inseridos para identação.
opt.guicursor = "" -- Usado para reaçar a linha do cursor
opt.ignorecase = true
opt.incsearch = true -- permite mudar o titulo do terminal
opt.mouse = "a" -- menu para autocompletar na linha de comandos
opt.number = true -- mostrar a numeração das linhas relativas ao cursor
opt.relativenumber = true -- permite a utilização do mouse em todos os modos
opt.shiftwidth = 2 -- Insere o número especificado de espaços quando teclando a tecla Tab.
opt.smartcase = true
opt.softtabstop = 2 -- Controla o tamanho do Tab quando expandtab está desabilitado e
opt.syntax = "on"  -- Habilita o realce de sintaxe
opt.tabstop = 2 -- Altera o formato do cursor 
opt.termguicolors = true -- Ativar essa propriedade faz o Nvim emitir cores verdadeiras (24-bits)
opt.timeoutlen = 500 -- abaixo de desse valor para as keys funcionarem
opt.title = true
opt.wildmenu = true -- pergunta se deseja fechar o programa
opt.wrap = true

-- Corrigir configurações de marcação de markdown
vim.g.markdown_recommended_style = 0
