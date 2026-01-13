\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = ""
engTitle = ""
hymnNumber = ""
poet = ""
composer = ""
bibleInfo = ""
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \relative c'' {
  \global
}

alto = \relative c' {
  \global
}

tenor = \relative c {
  \global
}

bass = \relative c {
  \global
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

verseFour = \lyricmode {
  \set stanza = "4."
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
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
    
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

