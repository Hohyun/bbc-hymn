\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = ""
engTitle = ""
hymnNumber = ""
poet = ""
composer = ""

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 110
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

\bookpart {
  
  \paper {
    scoreTitleMarkup = #(hymnScoreTitleMarkup hymnNumber)
  }
  \header {
    tagline = ##f
  }
  
  \score {
    \header {
      title = \korTitle
      opus = \hymnNumber
      poet = \poet
      composer = \composer
    } 
  
    <<
      \new ChoirStaff <<
      \context Staff = upper {
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
  
      \context Staff = lower {
        \new Voice {
          \clef bass
          \accidentalStyle modern-cautionary
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
  
  \markup { 
    \fill-line { 
      ""
      \smallCaps \engTitle
    } 
  }
}

