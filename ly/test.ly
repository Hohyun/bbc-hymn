\version "2.24.0"

musicA = \relative { c'4 d e f | g a b c \break | c b a g | f e d c }
musicB = \relative { c'4 c c c | c c c c \break | c c c c | c c c c }
musicC = \relative { r1 | r1 \break | r1 | r1 }

\score {
  <<
    \new Staff \musicA
    \new Staff \musicB
    \new Staff \with {
      % Hides this third staff on pages/lines where it only contains rests
      \RemoveEmptyStaves
    } { \musicC }
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
    }
  }
}