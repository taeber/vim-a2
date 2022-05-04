" Quit when a (custom) syntax file has been loaded.
if exists("b:current_syntax")
    finish
endif

syn keyword     a2Keywords      use var let sub
syn keyword     a2Conditional   if
syn keyword     a2Loop          while
syn keyword     a2Statement     stop repeat
syn match       a2Outputs       "->"
syn match       a2Inputs        "<-"

hi def link     a2Keywords      Keyword
hi def link     a2Conditional   Conditional
hi def link     a2Loop          Repeat
hi def link     a2Statement     Statement
hi def link     a2Outputs       Operator
hi def link     a2Inputs        Operator


if get(g:, 'a2_highlight_idents', 1)
  syn match     a2Identifier    "\v[a-zA-Z][a-zA-Z0-9]*"
  hi def link   a2Identifier    Identifier
endif


syn match       a2Types         /\v(\:\s*)@<=([a-zA-Z][a-zA-Z0-9]*)/
hi def link     a2Types         Type


syn match       a2Decimal       "\v-?\d+"
syn match       a2Binary        "\v\%[01]+"
syn match       a2Hexadecimal   "\v\$\x+"

hi def link     a2Decimal       Number
hi def link     a2Binary        Number
hi def link     a2Hexadecimal   Number


syn region      a2TextLiteral   start=/"/ skip=/\\"/ end=/"/ oneline
syn match       a2CharLiteral   /`[!-~]/
hi def link     a2TextLiteral   String
hi def link     a2CharLiteral   Character

syn match       a2Comment       "\v;.*$"
hi def link     a2Comment       Comment


syn match       a2Assignment    "\v[:+\-~]?\="
syn match       a2Index         "\v_"
syn match       a2Pointer       "\v\^"
syn match       a2Accessor      "\v\."
syn match       a2Location      "\v\@"
syn match       a2Separator     "\v,"

hi def link     a2Assignment    Operator
hi def link     a2Index         Operator
hi def link     a2Pointer       Operator
hi def link     a2Accessor      Operator
hi def link     a2Location      Operator

syn match       a2Register      /\v(\@\s*)@<=((A[XY]?)|(X[AY]?)|(Y[AX]?))(\W|\_s)@=/
hi def link     a2Register      Special


syn include     @asmMerlin65816 syntax/asmMerlin65816.vim
syn region      a2Assembly      start="\vasm \{" end=/}/ contains=@asmMerlin65816

