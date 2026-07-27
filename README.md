# bbc-hymn

## file naming convention

- 1 page pdf file: ./ly/hymn_number.pdf
- multiple pages pdf file: ./ly/hymn_from_to\_\_numberOfPageg.pdf

## work flow

1. Prepare all hymn pdf files. Make sure to follow the file naming convention.

2. Generate hymn-list.tex.
   `lua hymn_list.lua > hymn-list.tex`

3. Generate hymn_index.tex.
   `lua hymn_info.lua > hymn-info.tex`
   `xelatex hymn_index.tex`

4. Make final merged pdf file
   `xelatex hymn_merge.tex`
