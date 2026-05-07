syn case match

syn iskeyword @,48-57,192-255,<,-,_

syn match       defStatement         "\v(\\(ParRef|ParName|OpRef|ValRef))"
syn match       defStatement         "\v(\\(item|paragraph|begin|end))"
syn match       defStatement         "\v(^short|abstract|result_state|attention|parameter_descriptions$)+"
hi def link     defStatement         Statement

syn match       defIdentifier        /\v\{[a-zA-Z0-9 _]*\}/hs=s+1,he=e-1
hi def link     defIdentifier        Identifier

syn match       defOperator          "\v[{[}\]]"
hi def link     defOperator          Operator

syn match       defMismatchBrace     "\v\{[^\}]+(\{|$)"
syn match       defMismatchBracket   "\v\[[^\]]+(\[|$)"
hi def link     defMismatchBrace     Error
hi def link     defMismatchBracket   Error

syn region      defComment           start="/\*" end="\*/"
hi def link     defComment           Comment

syn keyword     defKeywords          en_US de_DE ja_JA <- itemize
hi def link     defKeywords          Keyword

syn match       defOperatorName      "\v(^.*)( \<-)@="
hi def link     defOperatorName      Function
