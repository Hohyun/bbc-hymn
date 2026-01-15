\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 하나님 큰일을 행하셨네"
engTitle = "To God be the Glory"
hymnNumber = "713"
poet = "Fanny J. Crosby, 1820~1915"
composer = "William H. Doane, 1832~1915"
bibleInfo = "요 3:16"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 3/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \relative c' {
  \global
  ef4 |
  << 
    { \voiceOne 
      ef2
    }
    \new Voice {
      \voiceTwo
      c4( ef)
    }
  >> 
  f8 g |
  af4 ef af |
  bf4 
    << 
    { \voiceOne 
      ef,4
    }
    \new Voice {
      \voiceTwo
      ef4
    }
  >> 
  bf'4 |
  c2 \breathe c4 |
  df4 f, df' | \break
  
  c4 af c |
  c4 bf f |
  
  << 
    { \voiceOne 
      bf2 \breathe ef,4 |
      ef2
    }
    \new Voice {
      \voiceTwo
      ef2 df4 |
      c4( ef)
    }
  >>
  f8 g |
  af4 ef af | \break
  bf 4
  << 
    { \voiceOne 
       ef,4
    }
    \new Voice {
      \voiceTwo
      ef4
    }
  >>
  bf' |
  
  c2 \breathe c4 |
  ef4 df bf |
  af4 g af |
  c4 c bf |
  af2 \bar "||" \break
  
  c8. df16 |
  \stemDown ef2 \stemNeutral c8. df16 |
  ef2 \breathe ef8. c16 |
  af4 bf c |
  bf2 \breathe bf8. c16 |
  df2 \break
  
  bf8. c16 |
  df2 df8 bf |
  ef4 ef df |
  c2 \breathe ef,4 |
   << 
    { \voiceOne 
       ef2
    }
    \new Voice {
      \voiceTwo
      c4( ef)
    }
  >>
  f8 g |
  af4 ef af |
}

alto = \relative c' {
  \global
  c4 |
  s2 df8 df |
  c4 c ef |
  ef4 s ef |
  ef2 ef4 |
  f4 df4 f |
  
  ef4 ef ef |
  d4 d d |
  s2. |
  s2 df8 df |
  c4 c ef |
  
  ef4 s ef |
  ef2 gf4 |
  f4 f f |
  ef4 ef ef |
  ef4 ef df |
  c2
  
  ef8. ef16 |
  af2 ef8. ef16 |
  af2 ef8. ef16 |
  ef4 ef ef |
  ef2 ef8. ef16 |
  ef2
  
  ef8. ef16 |
  ef2 ef8 ef |
  ef4 ef ef |
  ef2 c4 |
  s2 df8 df |
  c4 c ef |
}

tenor = \relative c {
  \global
  af'4 |
  << 
    { \voiceOne 
      af2 g8 ef |
    }
    \new Voice {
      \voiceTwo
      af,4( c) ef8 ef |
    }
  >> 
  ef4 \stemDown af af |
  g4 g g|
  << 
    { \voiceOne 
      af2 \breathe af4 |
    }
    \new Voice {
      \voiceTwo
      af2 af4 |
    }
  >>    
  \stemDown af4 af af |
  
  af4 af af |
  f4 f af |
  g2 \breathe g4 |
  << 
    { \voiceOne 
      af2 g8 ef |
    }
    \new Voice {
      \voiceTwo
      \autoBeamOff
      af,4( c) ef8 ef |
    }
  >> 
  ef4 \stemDown af af | 
}

bass = \relative c {
  \global
  af4 |
  s2. |
  af4 af c |
  ef4 ef ef |
  s2. |
  df4 df df |
  
  af4 c af |
  bf4 bf bf |
  ef2 ef4 |
  s2. |
  af,4 af c |
}

verseOne = \lyricmode {
  \set stanza = "1."
}

verseTwo = \lyricmode {
  \set stanza = "2."
}

verseThree = \lyricmode {
  \set stanza = "3."
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    oddFooterMarkup = \markup {
      \if \on-first-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfo
        \smallCaps \smaller \engTitle
      }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \header {
    tagline = ##f
  }
  
  \score {
    \header {
      title = \korTitle
      %subtitle = \engTitle
      opus = \hymnNumber
      poet = \poet
      composer = \composer
    } 
  
    <<
      \new ChoirStaff <<
        \new ChordNames \myChords
        \context Staff = upper \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \context Voice = sop {
            <<
              \soprano
              \alto
            >>
          }
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \new Voice {
            \clef bass
            <<
              \tenor
              \bass
            >>
          }
        }
      >>
    >>
    \layout {
      indent = 0.0
      page-count = #1
      \context {
        \Lyrics
        % Adjusting font size to fit 4 verses comfortably
        %\override LyricText.font-size = #-1
        %\override LyricText.font-family = #'serif
      }
    }
    \midi {}
  }
}

