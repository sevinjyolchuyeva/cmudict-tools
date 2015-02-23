" Vim syntax file
" Language:	Dictionary Entries
" Filenames:    cmudict
" Maintainer:	Reece H. Dunn <msclrhd@gmail.com>
" Last Change:	2015 Feb 23

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match	cmudictPhoneStress	"[0-9]"

syn match	cmudictPhoneCmu		"\<A[AEHOWY][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneCmu		"\<E[HRY][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneCmu		"\<I[HY][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneCmu		"\<O[WY][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneCmu		"\<U[HW][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneCmu		"\<[BDFGKLMNPRSTVWYZ]\>"
syn match	cmudictPhoneCmu		"\<[CDHJSTZ]H\>"
syn match	cmudictPhoneCmu		"\<NG\>"

syn match	cmudictPhoneArpabet	"\<AXR\=0\=\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabet	"\<IX0\=\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabet	"\<[DN]X\>"
syn match	cmudictPhoneArpabet	"\<Q\>"
syn match	cmudictPhoneArpabet	"\<E[LMN]\>"
syn match	cmudictPhoneArpabet	"\<ENG\>"

syn match	cmudictPhoneArpabetExt	"\<[AIU][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabetExt	"\<[EIOU]A[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabetExt	"\<[EI]@[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabetExt	"\<OH[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabetExt	"\<UX[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneArpabetExt	"\<[PBTDKG]CL\>"
syn match	cmudictPhoneArpabetExt	"\<H[VW]\=\>"
syn match	cmudictPhoneArpabetExt	"\<J\>"

syn match	cmudictPhoneLower	"\<a[aehowy]\=[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<e[ahry@][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<i[ahy@]\=[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<o[ahwy][0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<u[ahwx]\=[0-2]\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<axr\=0\=\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<ix0\=\>" contains=cmudictPhoneStress
syn match	cmudictPhoneLower	"\<[bdfghjklmnpqrstvwyz]\>"
syn match	cmudictPhoneLower	"\<[cdhjqstz]h\>"
syn match	cmudictPhoneLower	"\<[dn]x\>"
syn match	cmudictPhoneLower	"\<[pbtdkg]cl\>"
syn match	cmudictPhoneLower	"\<e[lmn]\>"
syn match	cmudictPhoneLower	"\<e\=ng\>"
syn match	cmudictPhoneLower	"\<h[vw]\>"

syn match	cmudictPhoneSyllable	"\-"

syn match	cmudictPhone		"\<[^ \t]\+\>" contains=cmudictPhoneCmu,cmudictPhoneArpabet,cmudictPhoneArpabetExt,cmudictPhoneLower

syn region	cmudictVariant		start='(' end=')'

syn region	cmudictEntryComment	start='#' end='$'

syn match	cmudictEntry		"^[^A-Za-z0-9]\=[^ \t(#]\+"

syn match	cmudictPronunciation	"  [a-zA-Z0-9@ \t]\+" contains=cmudictPhone

syn region	cmudictLineComment	start='^;;;' end='$'
syn region	cmudictLineComment	start='^##' end='$'

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link cmudictEntryComment		cmudictComment
hi def link cmudictLineComment		cmudictComment
hi def link cmudictComment		Comment
hi def link cmudictEntry		Identifier
hi def link cmudictVariant		Statement
hi def link cmudictPhoneCmu		Type
hi def link cmudictPhoneArpabetExt	cmudictPhoneArpabet
hi def link cmudictPhoneLower		cmudictPhoneArpabet
hi def link cmudictPhoneArpabet		PreProc
hi def link cmudictPhoneStress		Constant
hi def link cmudictPhoneSyllable	Operator
hi def link cmudictPhone		Error

let b:current_syntax = "cmudict"
" vim: ts=8
