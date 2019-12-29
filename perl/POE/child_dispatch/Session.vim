let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map <NL> j_
map  k_
map <silent> ,V :source ~/.vimrc:filetype detect:exe ":echo 'vimrc reloaded'"
map ,v :sp ~/.vimrc_
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetBrowseX(expand("<cWORD>"),0)
map <F6> :!perldoc %
map <F5> :!perl %
iabbr psql :r ~/work/lib/perl/snippets/mysql_connect.pl
iabbr pexp :r ~/work/lib/templates/perl/perl_exporter.pm
iabbr pmot :r ~/work/lib/templates/perl/perl_module.t
iabbr psub2 :r ~/work/lib/templates/perl/perl_sub2.pl
iabbr psub :r ~/work/lib/templates/perl/perl_sub.pl
iabbr pmod :r ~/work/lib/templates/perl/perl_module.pm
iabbr papp :r ~/work/lib/templates/perl/perl_application.pl
iabbr hul <ul>  <li></li><BS><BS></ul>
iabbr htbl :r ~/work/lib/templates/html/table.html
iabbr ppoe my ($kernel, $heap, $session) = @_[KERNEL, HEAP, SESSION];
iabbr plog my $logger = Log::Log4perl->get_logger(__PACKAGE__);
iabbr pudd use Data::Dumper;
iabbr pubp #!/usr/bin/perluse strict; use warnings;
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set expandtab
set fileencodings=utf-8,latin1
set formatoptions=tcql
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=en
set history=50
set hlsearch
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,:
set matchpairs=(:),{:},[:],<:>
set ruler
set shiftround
set shiftwidth=4
set tabstop=4
set textwidth=78
set viminfo='20,\"50
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/lib/perl/snippets/POE/child_dispatch
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 /var/www/imsense/lib/IMS/MSN/Proxy.pm
badd +1 Dispatch.pm
badd +0 run.pl
badd +53 Proxy.pm
badd +1 NS.pm
badd +0 SB.pm
args /var/www/imsense/lib/IMS/MSN/Proxy.pm
edit run.pl
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 21) / 42)
exe '2resize ' . ((&lines * 1 + 21) / 42)
exe '3resize ' . ((&lines * 32 + 21) / 42)
exe '4resize ' . ((&lines * 1 + 21) / 42)
exe '5resize ' . ((&lines * 1 + 21) / 42)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.8,/usr/lib/perl5/site_perl/5.8.7,/usr/lib/perl5/site_perl/5.8.6,/usr/lib/perl5/site_perl/5.8.5,/usr/lib/perl5/site_perl,/usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.8,/usr/lib/perl5/vendor_perl/5.8.7,/usr/lib/perl5/vendor_perl/5.8.6,/usr/lib/perl5/vendor_perl/5.8.5,/usr/lib/perl5/vendor_perl,/usr/lib/perl5/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/5.8.8,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 14 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
argglobal
edit SB.pm
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tlcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.8,/usr/lib/perl5/site_perl/5.8.7,/usr/lib/perl5/site_perl/5.8.6,/usr/lib/perl5/site_perl/5.8.5,/usr/lib/perl5/site_perl,/usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.8,/usr/lib/perl5/vendor_perl/5.8.7,/usr/lib/perl5/vendor_perl/5.8.6,/usr/lib/perl5/vendor_perl/5.8.5,/usr/lib/perl5/vendor_perl,/usr/lib/perl5/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/5.8.8,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 31 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
wincmd w
argglobal
edit Proxy.pm
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tlcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.8,/usr/lib/perl5/site_perl/5.8.7,/usr/lib/perl5/site_perl/5.8.6,/usr/lib/perl5/site_perl/5.8.5,/usr/lib/perl5/site_perl,/usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.8,/usr/lib/perl5/vendor_perl/5.8.7,/usr/lib/perl5/vendor_perl/5.8.6,/usr/lib/perl5/vendor_perl/5.8.5,/usr/lib/perl5/vendor_perl,/usr/lib/perl5/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/5.8.8,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 49 - ((12 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 059l
wincmd w
argglobal
edit NS.pm
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tlcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.8,/usr/lib/perl5/site_perl/5.8.7,/usr/lib/perl5/site_perl/5.8.6,/usr/lib/perl5/site_perl/5.8.5,/usr/lib/perl5/site_perl,/usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.8,/usr/lib/perl5/vendor_perl/5.8.7,/usr/lib/perl5/vendor_perl/5.8.6,/usr/lib/perl5/vendor_perl/5.8.5,/usr/lib/perl5/vendor_perl,/usr/lib/perl5/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/5.8.8,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 37 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
wincmd w
argglobal
edit Dispatch.pm
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=[^A-Za-z_]
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'perl'
setlocal filetype=perl
endif
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcrq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\<\\(use\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=/usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/site_perl/5.8.8,/usr/lib/perl5/site_perl/5.8.7,/usr/lib/perl5/site_perl/5.8.6,/usr/lib/perl5/site_perl/5.8.5,/usr/lib/perl5/site_perl,/usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.7/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.6/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.5/i386-linux-thread-multi,/usr/lib/perl5/vendor_perl/5.8.8,/usr/lib/perl5/vendor_perl/5.8.7,/usr/lib/perl5/vendor_perl/5.8.6,/usr/lib/perl5/vendor_perl/5.8.5,/usr/lib/perl5/vendor_perl,/usr/lib/perl5/5.8.8/i386-linux-thread-multi,/usr/lib/perl5/5.8.8,,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'perl'
setlocal syntax=perl
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 71 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 09l
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 1 + 21) / 42)
exe '2resize ' . ((&lines * 1 + 21) / 42)
exe '3resize ' . ((&lines * 32 + 21) / 42)
exe '4resize ' . ((&lines * 1 + 21) / 42)
exe '5resize ' . ((&lines * 1 + 21) / 42)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
