\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = "내일 일은 난 몰라요"
engTitle = "I Know Who Holds Tomorrow"
hymnNumber = "723"
poet = "I.F.S"
composer = "Ira F.Stanphill"

global = {
  \key bes \major
  \time 3/4
  \tempo 4 = 90
  \autoBeamOff
  \partial 4
}

soprano = \relative c' {
\global
bes8 c |
d4. cis8 \tuplet 3/2 { d8 g f } |
d2 c8 bes | g'4. bes8 a g |
f2 \break 

bes8 bes |
bes4. bes8 \tuplet 3/2 { a g bes } |
f2 ees8 d |
g4. d8 c bes |
c2 \break

bes8 c |
d4. cis8 \tuplet 3/2 { d8 g f } |
d2 c8 bes | g'4. bes8 a g | 
f2 \break

bes8 bes |
bes4. bes8 \tuplet 3/2 { a g f } |
d2 bes8 c |
d4. ees8 d c |
bes2 \break

bes'8 bes |
bes4. a8 \tuplet 3/2 { c8 bes g } |
f2 bes8 bes | g4. d'8 c bes | 
c2 \break

bes8 c |
d4. d8 \tuplet 3/2 { c8 bes bes } |
g2 bes8 c | d4. f,8  \tuplet 3/2 { a8 bes c } | 
bes2 \break

}

alto = \relative c' {
\global
}

tenor = \relative c {
\global
}

bass = \relative c {
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

\bookpart {
  
  \paper {
    scoreTitleMarkup = #(hymnScoreTitleMarkup hymnNumber)
    property-defaults.fonts.serif = "Batang"
    property-defaults.fonts.sans = "DejaVu Sans"
    property-defaults.fonts.typewriter = "DejaVu Sans Mono"
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
        \override LyricText.font-family = #'serif
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

