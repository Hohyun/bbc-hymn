\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "최고로 좋은것을 드리세"
engTitle = "Our Best"
hymnNumber = "796"
poet = "S. C. Kirk, 1854~1945"
composer = "Grant Colfax Tullar, 1869~1950"
bibleInfo = "롬 12:1-2"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
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
  주 오 늘 우 리 게 물 으 시 되
  진 실 로 네 가 날 사 랑 하 느 냐
  주 님 께 대 소 간 받 은 것 중
  최 고 로 좋 은 것 을 드 리 세
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 오 늘 네 집 에 찾 아 오 면
  반 갑 게 뛰 어 가 영 접 하 려 나
  못 자 국 난 그 손 붙 잡 으 며
  최 고 로 좋 은 자 리 드 리 세

  주 를 위 한 일 이 복 되 나
  주 는 우 리 맘 을 원 하 네
  대 소 간 주 님 께 받 은 것 중
  최 고 로 좋 은 것 을 드 리 세
}

verseThree = \lyricmode {
  \set stanza = "3."
  우 리 의 일 할 날 쉬 지 나 고
  주 앞 에 제 각 기 서 "-" 는 날 에
  주 우 리 외 모 를 안 보 시 고
  최 선 을 드 린 자 를 보 시 네
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

