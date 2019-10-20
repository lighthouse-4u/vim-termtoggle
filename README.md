# vim-termtoggle
Easily toggle a terminal at the bottom of your screen


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
