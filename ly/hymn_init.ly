\version "2.24.0"

#(set-global-staff-size 18)

\paper {
   #(set-paper-size '(cons (* 155 mm) (* 220 mm)))
   print-all-headers = ##t
   %print-page-number = ##t
   %print-first-page-number = ##t
   ragged-bottom = ##f
   ragged-last-bottom = ##f
   % page-breaking = #ly:one-page-breaking
   
   %scoreTitleMarkup = #(hymnScoreTitleMarkup hymnNumber)
   #(define fonts (make-pango-font-tree "Batang" "DejaVu Sans Mono" "DejaVu Sans Mono" (/ staff-height pt 20)))
}

hymnOddScoreTitleMarkup = \markup { 
  \column {
    \fill-line { 
      ""
      { \huge \larger \larger \bold \fromproperty #'header:title }
      { \number \fontsize #5 \fromproperty #'header:opus }
    }
    \fill-line {
      \smallCaps { \smaller \fromproperty #'header:poet }
      \smallCaps { \smaller \fromproperty #'header:composer }
    }
  }
}

hymnEvenScoreTitleMarkup = \markup { 
  \column {
    \fill-line { 
      { \number \fontsize #5 \fromproperty #'header:opus }
      { \huge \larger \larger \bold \fromproperty #'header:title }
      ""
    }
    \fill-line {
      \smallCaps { \smaller \fromproperty #'header:poet }
      \smallCaps { \smaller \fromproperty #'header:composer }
    }
  }
}

#(define (hymnScoreTitleMarkup arg) 
   (if (odd? (string->number arg))
       hymnOddScoreTitleMarkup
       hymnEvenScoreTitleMarkup))

