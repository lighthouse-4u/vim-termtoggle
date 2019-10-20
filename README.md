# vim-termtoggle
Easily toggle a terminal at the bottom of your screen with :TermToggle


## Installation    

With pathogen:    
```shell
cd ~/.vim/bundle && \    
git clone https://github.com/KaraMCC/vim-termtoggle.git    
```    
    

With vim-plug:    
```vim    

Plug 'KaraMCC/vim-termtoggle'    

```    

With vundle:
```vim                                                                                

Plugin 'KaraMCC/vim-termtoggle'                                                  

```                                                                                   
                
                
## Settings             
Easily toggle terminal with Ctrl+t by putting this in your .vimrc
```vim
nnoremap <silent> <C-t> :TermToggle <CR>    
tnoremap <silent> <C-t> <C-\><C-n>:TermToggle <CR>    
inoremap <silent> <C-t> <C-o>:TermToggle <CR>
```

Show line numbers in the terminal with (Default: 0)
```vim
let g:toggleterm_numbers = 1
```
Change terminal size with (Default: 14)
```vim
let g:termtoggle_terminal_size = 10
```
Set a custom shell with
```vim
let g:termtoggle_shell = 'bash'
```
