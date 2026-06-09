\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주와 사귐 있나"
engTitle = "Is Thy Heart Right With God"
hymnNumber = "797"
poet = "Elisha A. Hofeman, 1839~1929"
composer = "Elisha A. Hofeman, 1839~1929"
bibleInfo = "요일 1:6-7"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \numericTimeSignature
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
}

aligner = \fixed c' {
  \global
}

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
}

verseOne = \lyricmode {
  \set stanza = "1."
  네 정 욕 십 자 가 못 박 았 나
  주 와 사 귐 있 나
  네 일 생 주 앞 에 다 맡 겼 나
  주 와 사 귐 있 나

  주 와 사 귐 있 나
  주 와 사 귐 있 나
  주 님 의 피 로 온 전 케 됐 나
  주 와 사 귐 있 나  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  네 죄 의 속 박 을 벗 어 났 나
  주 와 사 귐 있 나
  안 과 밖 모 두 가 깨 끗 한 가
  주 와 사 귐 있 나  
}

verseThree = \lyricmode {
  \set stanza = "3."
  다 시 는 정 죄 함 없 어 졌 나
  주 와 사 귐 있 나
  네 안 에 주 님 이 거 하 시 나
  주 와 사 귐 있 나  
}

verseFour = \lyricmode {
  \set stanza = "4."
  밝 은 빛 가 운 데 행 하 는 가
  주 와 사 귐 있 나
  네 영 혼 흰 옷 을 입 고 있 나
  주 와 사 귐 있 나  
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    %% tip: adjust pading number and set ragged-last-bottom to ##f to fit one page 
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
      \tempo 4 = 100
    }
  }
}

