local opt = vim.opt

opt.completeopt = { "menuone", "noselect"}    -- controle do menu de completar
opt.backspace = 'start,eol,indent'
opt.backup = false                            -- Cria um arquivo de backup
opt.bg = "dark"                               -- Configura a cor de fundo (backgroud)
opt.clipboard = "unnamedplus"                 -- Permite o Neovim acessar o sistema de clipboard
opt.confirm = true                            -- pesquisa incrementail
opt.cursorline = true                         -- Usado para realçar a coluna do cursos
opt.encoding = "utf8"                         -- mostrar a numeração das linhas
opt.expandtab = true                          -- Controla o número de espaços que são inseridos para identação.
opt.guicursor = ""                            -- Usado para reaçar a linha do cursor
opt.ignorecase = true
opt.incsearch = true                          -- realce de palavras que casem a pesquisa
opt.mouse = "a"                               -- permite a utilização do mouse em todos os modos
opt.number = true                             -- mostrar a numeração das linhas relativas ao cursor
opt.relativenumber = true
opt.shiftwidth = 2                            -- Insere o número especificado de espaços quando teclando a tecla Tab.
opt.smartcase = true
opt.softtabstop = 2                           -- Controla o tamanho do Tab quando expandtab está desabilitado e
opt.syntax = "on"                             -- Habilita o realce de sintaxe
opt.tabstop = 2                               -- Insere dois espaços para o Tab
opt.termguicolors = true                      -- Ativar essa propriedade faz o Nvim emitir cores verdadeiras (24-bits)
opt.timeoutlen = 500                          -- abaixo de desse valor para as keys funcionarem
opt.title = true
opt.wildmenu = true                           -- menu vertical para o modo comando
opt.wrap = false

-- Corrigir configurações de marcação de markdown
vim.g.markdown_recommended_style = 0

vim.opt_local.conceallevel = 2
