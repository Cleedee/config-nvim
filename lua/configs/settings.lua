local set = vim.opt


set.encoding = "utf8"
-- mostrar a numeração das linhas
set.number = true
-- mostrar a numeração das linhas relativas ao cursor
set.relativenumber = true                              
-- permite a utilização do mouse em todos os modos
set.mouse = "a"
-- menu para autocompletar na linha de comandos
set.wildmenu = true
-- pergunta se deseja fechar o programa
set.confirm = true
-- pesquisa incremental
set.incsearch = true
-- permite mudar o titulo do terminal
set.title = true
-- título do terminal
-- set.titlestring ="NVIM:\ %-25.55F\ %a%r%m titlelen=70"
-- set.t_Co = "256"
-- **********************
-- Use o comando :retab para reajustar todos os tamanhos de tab
-- do arquivo
-- **********************
-- Usa espaços para identar mesmo quando pressionamos Tab
set.expandtab = true
-- Controla o número de espaços que são inseridos para identação.
-- Quando você tecla Enter para a próxima linha e espera que seja
-- identado (um ou mais tabs inseridos automaticamente). No caso
-- abaixo, a identação acontecerá com 2 espaços.
set.shiftwidth = 2
-- Insere o número especificado de espaços quando teclando a tecla Tab.
-- É parecido com o tabstop mas com outras particularidades:
-- * Seu valor sobrescreve o informado por tabstop;
-- * Ele também remove o mesmo número de espaços quando se usa Backspace;
-- * Continuará a inserir espaços mesmo se o noexpandtab está habilitado,
-- que é era para inserir tabs ao teclar a tecla Tab;
-- * Um valor zero desabilita e um valor negativo faz recuar o valor de
-- shifwidth.
set.softtabstop = 2
-- Controla o tamanho do Tab quando expandtab está desabilitado e
-- o número de caracteres espaços a serem inseridos quando expandtab
-- está habilitado. No caso abaixo, 2 espaços serão inseridos toda
-- vez que digitar a tecla tab.
set.tabstop = 2
-- Altera o formato do cursor 
set.guicursor = ""
-- Usado para reaçar a linha do cursor
set.cursorline = true
-- Usado para realçar a coluna do cursos
-- vim.cmd([[ set cursorcolumn ]])
-- Habilita o realce de sintaxe
set.syntax = "on"
-- Configura a cor de fundo (backgroud)
set.bg = "dark"
-- Ativar essa propriedade faz o Nvim emitir cores verdadeiras (24-bits)
-- no terminal. https://neovim.io/doc/user/term.html
set.termguicolors = true
-- Faz com que os comandos y e p usem o sistema de área de transferência 
-- (clipboard)
set.clipboard = "unnamedplus"
-- Ignore as letras maisculas quando fazendo uma busca
set.ignorecase = true
-- Faz a busca ignorar maisculas a menos que coloquemos maiuscula na consulta
set.smartcase = true
-- Faz textos longos sempre visíveis
set.wrap = true
-- preserva a identação de uma linha virtual
-- uma linha virtual é aquela que é somente visíveil quando wrap está habilitada
--
--
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
--
