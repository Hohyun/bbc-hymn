\version "2.24.0"

\score {
  \new ChoirStaff <<
    \new Staff = "soprano" <<
      \new Voice = "soprano" {
        \relative c' {
          \clef treble
          \key g \major
          \time 4/4
          \tempo "Moderato"
          
          g'2 g4 a | b2 b2 | c4 b4 a4 g4 | a1 |
          b2 b4 c4 | d2 d2 | e4 d4 c4 b4 | c1 |
          d2 d4 e4 | d4 c4 b4 a4 | g4 a4 b4 c4 | b1 |
          a2 g4 a4 | b4 a4 g4 fis4 | g1 ~ | g1 \bar "|."
        }
      }
      \new Lyrics \lyricsto "soprano" {
        A -- maz -- ing grace! How sweet the sound
        That saved a wretch like me!
        I once was lost, but now am found;
        Was blind, but now I see.
      }
    >>
    \new Staff = "bass" <<
      \new Voice = "bass" {
        \relative c {
          \clef bass
          \key g \major
          \time 4/4
          
          g'2 g4 fis4 | g2 g2 | e4 g4 c,4 e4 | d1 |
          g2 g4 a4 | b2 b2 | c4 b4 a4 g4 | e1 |
          d2 d4 c4 | d4 e4 d4 c4 | b4 c4 d4 e4 | g1 |
          d2 e4 fis4 | g4 fis4 e4 d4 | g,1 ~ | g1 \bar "|."
        }
      }
    >>
  >>
  \layout { }
  \midi { 
    \tempo 4 = 90
  }
  \header {
    piece = "Hymn 001: Amazing Grace"
    composer = "Traditional"
  }
}
