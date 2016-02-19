let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
argglobal
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
17
normal zo
18
normal zo
19
normal zo
19
normal zo
20
normal zo
21
normal zo
21
normal zo
22
normal zo
22
normal zo
22
normal zo
21
normal zo
21
normal zo
20
normal zo
19
normal zo
19
normal zo
18
normal zo
17
normal zo
111
normal zo
112
normal zo
113
normal zo
112
normal zo
120
normal zo
124
normal zo
125
normal zo
124
normal zo
136
normal zo
138
normal zo
136
normal zo
145
normal zo
146
normal zo
147
normal zo
147
normal zo
148
normal zo
148
normal zo
149
normal zo
149
normal zo
150
normal zo
150
normal zo
157
normal zo
157
normal zo
157
normal zo
150
normal zo
150
normal zo
149
normal zo
149
normal zo
148
normal zo
148
normal zo
168
normal zo
168
normal zo
169
normal zo
169
normal zo
174
normal zo
174
normal zo
174
normal zo
174
normal zo
169
normal zo
169
normal zo
189
normal zo
189
normal zo
194
normal zo
194
normal zo
198
normal zo
199
normal zo
200
normal zo
206
normal zo
200
normal zo
199
normal zo
198
normal zo
194
normal zo
194
normal zo
189
normal zo
189
normal zo
168
normal zo
168
normal zo
147
normal zo
147
normal zo
146
normal zo
145
normal zo
111
normal zo
230
normal zo
231
normal zo
232
normal zo
231
normal zo
237
normal zo
239
normal zo
243
normal zo
245
normal zo
243
normal zo
251
normal zo
252
normal zo
253
normal zo
253
normal zo
254
normal zo
254
normal zo
255
normal zo
255
normal zo
255
normal zo
263
normal zo
263
normal zo
263
normal zo
254
normal zo
254
normal zo
253
normal zo
253
normal zo
252
normal zo
251
normal zo
230
normal zo
302
normal zo
303
normal zo
304
normal zo
304
normal zo
303
normal zo
365
normal zo
366
normal zo
367
normal zo
368
normal zo
367
normal zo
366
normal zo
365
normal zo
302
normal zo
let s:l = 143 - ((1 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
143
normal! 0
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
" vim: set ft=vim :
