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

4. Make final hymn book
   - 신국판, A4용지에 재단선 표시 (New_A5 size in A4 stock)
     `xelatex bbc_hymn_newa5_in_a4.tex`
   - 신국판 (New_A5 size)
     `xelatex bbc_hymn_newa5.tex`
   - 국배판 (A4 size)
     `xelatex bbc_hymn_a4.tex`

## Hymns in the svg folder

Those files was edited manually using inkspace to fit the page.
If those svg file are changed, it should be converted to pdf files and copied into pdf folder.

## Custom page size

- 702, 704, 713, 717, 739, 745, 793, 788_789, 798_799, 801, 814_815 --> 160 x 236 (105%)
- 777_778 --> 167.2 x 247.5 (110%)
- 708, 711, 712, 763, 773, 774, 792, 804_805 --> 184 x 272 (121%)

## 신국판

- 신국판 (newmum) : 152mm x 225mm (단행본 출판시 가장 많이 쓰이는 크기)
  Stock Size: 가로 158mm × 세로 231mm (사방 3mm씩 여유 재단선 추가)

- 사륙배판 (dblx2) : 182 x 257 (B5)
- 국판 (mum): 148×210mm (A5)
