vim.cmd([[ set encoding=utf8 ]])
-- mostrar a numeração das linhas
vim.cmd([[ set nu! ]])
-- mostrar a numeração das linhas relativas ao cursor
vim.cmd([[ set relativenumber ]])                              
-- permite a utilização do mouse em todos os modos
vim.cmd([[ set mouse=a ]])
-- menu para autocompletar na linha de comandos
vim.cmd([[ set wildmenu ]])
-- pergunta se deseja fechar o programa
vim.cmd([[ set confirm ]])
-- pesquisa incremental
vim.cmd([[ set incsearch ]])
-- permite mudar o titulo do terminal
vim.cmd([[ set title ]])
-- título do terminal
vim.cmd([[ set titlestring=NVIM:\ %-25.55F\ %a%r%m titlelen=70 ]])
vim.cmd([[ set t_Co=256 ]])
-- **********************
-- Use o comando :retab para reajustar todos os tamanhos de tab
-- do arquivo
-- **********************
-- Usa espaços para identar mesmo quando pressionamos Tab
vim.cmd([[ set expandtab ]])
-- Controla o número de espaços que são inseridos para identação.
-- Quando você tecla Enter para a próxima linha e espera que seja
-- identado (um ou mais tabs inseridos automaticamente). No caso
-- abaixo, a identação acontecerá com 2 espaços.
vim.cmd([[ set shiftwidth=2 ]])
-- Insere o número especificado de espaços quando teclando a tecla Tab.
-- É parecido com o tabstop mas com outras particularidades:
-- * Seu valor sobrescreve o informado por tabstop;
-- * Ele também remove o mesmo número de espaços quando se usa Backspace;
-- * Continuará a inserir espaços mesmo se o noexpandtab está habilitado,
-- que é era para inserir tabs ao teclar a tecla Tab;
-- * Um valor zero desabilita e um valor negativo faz recuar o valor de
-- shifwidth.
vim.cmd([[ set softtabstop=2 ]])
-- Controla o tamanho do Tab quando expandtab está desabilitado e
-- o número de caracteres espaços a serem inseridos quando expandtab
-- está habilitado. No caso abaixo, 2 espaços serão inseridos toda
-- vez que digitar a tecla tab.
vim.cmd([[ set tabstop=2 ]])
vim.cmd([[ set guicursor= ]])
vim.cmd([[ set cursorline ]])
vim.cmd([[ syntax on ]])
vim.cmd([[ set bg=dark ]])
vim.cmd([[ set termguicolors ]])
--vim.cmd([[ colorscheme onedark ]])
vim.cmd([[ set clipboard+=unnamedplus ]])
