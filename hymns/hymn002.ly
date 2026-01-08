\version "2.24.0"

\score {
  \new ChoirStaff <<
    \new Staff = "soprano" <<
      \new Voice = "soprano" {
        \relative c' {
          \clef treble
          \key d \major
          \time 3/4
          \tempo "Andante"
          
          fis2 e4 | d2 e4 | fis2 g4 | a2. |
          b2 a4 | g2 fis4 | e2 d4 | d2. |
          a'2 a4 | b2 a4 | g2 fis4 | e2. |
          fis2 e4 | d2 cis4 | d2. ~ | d2. \bar "|."
        }
      }
      \new Lyrics \lyricsto "soprano" {
        What a friend we have in Je -- sus,
        All our sins and griefs to bear!
        What a pri -- vi -- lege to car -- ry
        Ev -- ery -- thing to God in prayer!
      }
    >>
    \new Staff = "bass" <<
      \new Voice = "bass" {
        \relative c {
          \clef bass
          \key d \major
          \time 3/4
          
          d2 cis4 | b2 cis4 | d2 e4 | fis2. |
          g2 fis4 | e2 d4 | cis2 b4 | a2. |
          fis'2 fis4 | g2 fis4 | e2 d4 | cis2. |
          d2 cis4 | b2 a4 | d2. ~ | d2. \bar "|."
        }
      }
    >>
  >>
  \layout { }
  \midi { }
  \header {
    piece = "Hymn 002: What a Friend We Have in Jesus"
    composer = "Charles C. Converse"
  }
}
