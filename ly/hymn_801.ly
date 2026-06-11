\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "놀라워라 주님의 사랑"
engTitle = "And Can It Be That I Should Gain?"
hymnNumber = "801"
poet = "Charles. Wesley, 1707~1788"
composer = "Anonymous"
bibleInfo = "엡 2:1-4"
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
  주 보 혈 로 날 구 해 준 
  그 사 랑 깊 고 크 셔 라
  상 하 심 과 죽 으 심 이
  날 대 속 해 구 원 했 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  하 늘 영 광 버 리 시 고
  이 땅 위 에 오 신 은 혜
  주 의 사 랑 그 사 랑 이
  그 일 을 이 루 셨 도 다
  
  고 마 워 라 주 사 랑 이
  날 위 해 죽 으 신 큰 사 랑
  놀 라 워 라 주 사 랑 이
  어 찌 나 크 고 깊 은 지
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 는 주 의 양 이 되 고
  주 는 나 의 목 자 되 니
  그 인 도 만 따 르 리 라
  한 없 는 축 복 넘 치 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  그 사 랑 이 내 맘 속 에
  큰 위 로 평 안 늘 주 니
  나 또 한 늘 감 사 하 여
  내 맘 을 다 해 찬 양 해
}

verseExtra = \lyricmode {
  놀 라 워 라
  주 사 랑 이 어 찌 나

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

