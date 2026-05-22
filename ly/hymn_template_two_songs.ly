\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "내 주의 이름이 전보다 더욱 귀하네"
engTitle = "Still Sweeter Every Day"
hymnNumber = "756"
poet = "Willam Martin, 19th century"
composer = "C. Austin Miles, 1868~1946"
bibleInfo = "엡 2:15-18"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \relative c' {
  \global
  <d f>8 q q q <ef g> <d f>4. |
}

aligner = \relative c'' {
  \global
}


alto = \relative c' {
  \global
}

tenor = \relative c' {
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
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "주의 깊은 자비를"
engTitleB = "Depth of Mercy"
hymnNumberB = "757"
poetB = "Charles Wesley, 1707~1788"
composerB = "Willam B. Bradbury, 1816~1868"
bibleInfoB = "마 11:28"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key f \major
  \time 3/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \relative c'' {
  \globalB
  <d f>8 q q q q q |
}

alignerB = \relative c'' {
  \globalB
}

altoB = \relative c' {
  \globalB
}

tenorB = \relative c' {
  \globalB
}

bassB = \relative c {
  \globalB
}

verseOneB = \lyricmode {
  \set stanza = "1."
}

verseTwoB = \lyricmode {
  \set stanza = "2."
}

verseThreeB = \lyricmode {
  \set stanza = "3."
}

verseFourB = \lyricmode {
  \set stanza = "4."
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    page-breaking = #ly:minimal-breaking
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
      \if \on-last-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfoB
        \smallCaps \smaller \engTitleB
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
          <<
            \context Voice = sop {
              \voiceOne
                \soprano
            }
            \context Voice = alto {
              \voiceTwo
                \alto
            }
            \context NullVoice = aligner {
             \aligner
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
           \clef bass
            <<      
              \context Voice = tenor {
                \voiceOne
                \tenor
              }
              \context Voice = bass {
                \voiceTwo
                \bass
              }
          >>       
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
        \override LyricText.font-series = #'bold
      }
    }
    \midi {
      \tempo 4 = 90
    }
  }
}

  \noPageBreak

  \paper {
    page-breaking = #ly:minimal-breaking
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwoB)
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    oddFooterMarkup = \markup {
      \if \on-first-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfo
        \smallCaps \smaller \engTitle
      }
      \if \on-last-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfoB
        \smallCaps \smaller \engTitleB
      }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  
  \score {
    
      \header {
      title = \korTitleB
      %subtitle = \engTitle
      opus = \hymnNumberB
      poet = \poetB
      composer = \composerB
    } 
  
    <<
      \new ChoirStaff <<
        \new ChordNames \myChordsB
        \context Staff = upper \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          <<
            \context Voice = sop {
              \voiceOne
                \sopranoB
            }
            \context Voice = alto {
              \voiceTwo
                \altoB
            }
            \context NullVoice = alignerb {
             \alignerB
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "alignerb" { \verseOneB }
        \context Lyrics = "LyrTwo" \lyricsto "alignerb" { \verseTwoB }
        \context Lyrics = "LyrThree" \lyricsto "alignerb" { \verseThreeB }
        \context Lyrics = "LyrFour" \lyricsto "alignerb" { \verseFourB }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
           \clef bass
            <<      
              \context Voice = tenor {
                \voiceOne
                \tenorB
              }
              \context Voice = bass {
                \voiceTwo
                \bassB
              }
          >>       
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
        \override LyricText.font-series = #'bold
      }
    }
    \midi {
      \tempo 4 = 90
    }
}

