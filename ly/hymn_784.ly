\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "나의 모든 죄가 용서 받은 후"
engTitle = "Since the Saviour Found Me"
hymnNumber = "784"
poet = "Edgar J. Haskins, 1906~"
composer = "Edgar J. Haskins, 1906~"
bibleInfo = "롬 8:1-5"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \numericTimeSignature
  \time 4/4
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
  나 의 모 든 죄 가 용 서 받 은 후
  내 맘 속 에 기 쁨 소 망 넘 치 네
  지 난 날 의 수 치 모 든 죄 악 이
  주 예 수 귀 한 피 로 정 케 되 었 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  구 속 하 신 주 께 발 길 돌 린 후
  기 쁜 나 라 에 서 살 아 갑 니 다
  주 가 정 죄 함 을 거 두 셨 으 니
  내 영 혼 기 뻐 뛰 며 자 유 얻 었 네

  주 은 혜 로 구 원 받 은 후
  날 로 주 를 사 랑 합 니 다
  주 가 나 의 맘 에 계 신 후 그
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 모 든 것 을 주 께 맡 기 니
  내 게 필 요 한 것 모 두 주 시 네
  주 님 다 시 와 서 자 녀 모 을 때
  나 들 림 받 아 영 원 찬 미 하 겠 네
}

verseExtra = \lyrincmode {
  D.S.능 력 으 로 나 를 매 일 지 키 네
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

