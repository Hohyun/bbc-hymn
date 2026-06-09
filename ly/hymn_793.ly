\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내 죄짐 벗었네"
engTitle = "My Burdens Rolled Away"
hymnNumber = "793"
poet = "Mrs. Minne A. Steels"
composer = "Mrs. Minnie A. Steels"
bibleInfo = "엡 2:4-6"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
}

aligner = \fixed c' {
  \global
}

alignerb = \fixed c' {
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
  나 의 죄 짐 벗 은 날 못 잊 겠 네
  항 상 고 통 주 던 큰 죄 의 짐
  인 자 하 신 주 님 께 의 지 하 고 맡 길 때
  나 의 온 죄 짐 벗 겨 주 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 의 죄 짐 벗 은 날 못 잊 겠 네
  항 상 나 를 따 르 던 죄 의 짐
  십 가 가 에 달 리 사 주 님 대 신 죽 으 사
  나 의 죄 모 두 대 속 하 셨 네

  죄 의 짐 벗 었 네
  나 는 이 제 염 려 할 것 없 겠 네
  죄 의 짐 벗 었 네
  주 가 주 신 기 쁨 회 복 되 었 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 죄 짐 벗 은 날 못 잊 겠 네
  나 를 방 해 하 던 저 죄 의 짐
  주 께 무 릎 꿇 고 서 주 의 이 름 부 를 때
  나 의 죄 벌 써 풀 어 주 셨 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  죄 짐 벗 은 날 부 터 늘 찬 미 해
  내 맘 속 에 숨 겨 진 이 평 안
  주 를 위 해 살 때 에 기 쁨 으 로 외 칠 말
  할 렐 루야 나 의 죄 짐 풀 었 네
}

verseExtra = \lyricmode {
  죄 의 짐 벗 었 네
  염 려 할 것 없 겠 네
  죄 의 짐 벗 었 네
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
            \context NullVoice = alignerb {
               \alignerb
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
    
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

