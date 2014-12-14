" identify if syntax is already set
if exists("b:current_syntax")
    finish
endif

" highlight keywords
syntax keyword clsKeyword new
syntax keyword clsCondition if else
syntax keyword clsLoop while for
syntax keyword clsStructure Set Map
syntax keyword clsType Integer String
syntax keyword clsClass System Pattern Matcher
syntax keyword clsSOQL SELECT FROM WHERE LIMIT

syntax match clsComment '\v\/\/.*'
syntax region clsComment start=/\v\/\*/ skip=/\\./ end=/\v\*\//

highlight link clsKeyword Keyword
highlight link clsCondition Conditional
highlight link clsLoop Repeat
highlight link clsStructure Structure
highlight link clsType Type
highlight link clsClass Function
highlight link clsSOQL Keyword

highlight link clsComment Comment

" set variable to highligh syntax is already present
let b:current_syntax = "potion"
