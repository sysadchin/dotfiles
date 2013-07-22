" A quick canned-response script. Modified from a mutt-vim script I found in
" the Public Domain. The idea is to use shorthand for most of my common
" typings. 
" 
" For example, the text 'psyt' can be extended out to "It was a pleasure
" speaking with you today". These definitions are in ~/.canned/, as plain
" files. 
" 
" To activate: Control-X-X.. 
"
" NOTE: This may actually work nicely in gvim, I wouldn't know, but mean to try
"       that at some point.   Feedback welcome.
"
" Author: Andrew Glenn <andrew@andrewglenn.net>
" License: Public Domain

fun! Read_Canned()
    let canned = split(glob("~/.canned/*"), "\n")
    if len(canned)
        for file in canned
		let ftok = split(file, "/")
		let bnam = substitute(ftok[-1], '\s', '_', 'g')
		let cannedtxt = readfile(file)
		silent! exec ':%s/'.bnam.'/'.cannedtxt[0].'/g'
        endfor
    endif
endfun


set wildmenu
set cpo-=<
set wcm=<C-X>

"call Read_Canned()

 map <C-X><C-X> :call Read_Canned()<C-X>
vmap <C-X><C-X> :call Read_Canned()<C-X>

