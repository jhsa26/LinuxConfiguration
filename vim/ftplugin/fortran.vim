"[vim]
setlocal expandtab " Fortran 标准不允许 Tab
setlocal shiftwidth=4

let b:fortran_indent_more = 1
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
"    let fortran_fold=99
"    let fortran_fold_conditionals=99
"    let fortran_fold_multilinecomments=99
    let fortran_do_enddo=1 " 这项开启 do enddo 的缩进，很必要
    let fortran_free_source=1 " 这项使得 .f90 结尾的文件是自由格式的，也很必要
    let fortran_have_tabs=1 " 这项可以在看其它人写的有 tab 的代码时，不标红，可以看需要决定开不开启
    unlet! fortran_fixed_source
else
    let fortran_fixed_source=1
    unlet! fortran_free_source
endif
"[/vim]
