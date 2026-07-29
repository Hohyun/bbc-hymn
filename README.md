# bbc-hymn

## file naming convention

- 1 page pdf file: ./ly/hymn_number.pdf
- multiple pages pdf file: ./ly/hymn_from_to\_\_numberOfPageg.pdf

## work flow

1. Put hymn pdf files in the pdf, svg folder.
   `prepare_hymn_pdf.sh`
   - put original pdf files into the pdf folder.
   - put edited pdf files in the svg folder into the pdf folder.
   - delete redundent files like hymn_711.pdf (--> hymn_711-1, hymn_711-2) ...

2. Prepare hymn_index.tex.
   `lua hymn_info.lua > hymn-info.tex`
   `xelatex hymn_index.tex`
   `cp hymn_index.tex > ../pdf/hymn_index__8.pdf` (8 means 8page)

3. Generate hymn-list.tex.
   `lua hymn_list.lua > hymn-list.tex`

4. Make final merged pdf file
   `xelatex hymn_merge.tex`

## Hymns in the svg folder

Those files was edited manually using inkspace to fit the page.
If those svg file are changed, it should be converted to pdf files and copied into pdf folder.

## Custom page size

- 711 --> 생략할 수도 있음 부분 삭제 (사유: 2 page 초과)
- 712 --> 121% (187 mm \* 266 mm)
- 773 --> 121% (187 mm \* 266 mm)
- 774 --> 121% (187 mm \* 266 mm)
- 763 --> 121% (187 mm \* 266 mm)
- 801 --> 130% (187 mm \* 266 mm)

## 신국판

- 신국판 (newmum) : 152mm x 225mm (단행본 출판시 가장 많이 쓰이는 크기)
  Stock Size: 가로 158mm × 세로 231mm (사방 3mm씩 여유 재단선 추가)

- 사륙배판 (dblx2) : 182 x 257 (B5)
- 국판 (mum): 148×210mm (A5)
