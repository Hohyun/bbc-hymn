\version "2.24.0"

\header {
  title = "BBC Hymn Book"
  subtitle = "A Collection of Hymns"
  tagline = "Created with LilyPond"
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm
  ragged-last-bottom = ##f
  page-breaking = #ly:optimal-breaking
}

% Include individual hymn files
\include "hymns/hymn001.ly"
\include "hymns/hymn002.ly"
