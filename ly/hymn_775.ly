\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "반가운 구조선"
engTitle = "Ship Ahoy"
hymnNumber = "775"
poet = "M. J. Cartwright"
composer = "Daniel B. Towner, 1850~1919"
bibleInfo = "요 4:35"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <c e>8^(_( <d f>^)_) |
  <e g>4 q8 q8 g4 <f a>8 <f b> |
  <e c'>4 q8 q q4 \breathe <e g>8 <e c'> | %\break
  
  <f d'>4 q8 q q4 g8 <g d'>8 |
  q4 <e c'>8 <c e> <e g>4\fermata \breathe \break <c e>8 <d f> |
  <e g>4 q8 q g4 <f a>8 <f b> | %\break
  
  <e c'>4 q8 q q4 \breathe <e g>8 <e c'> |
  <f d'>4 q8 q <fs d'>4 <fs b>8 g |
  <g b>4 <fs b>8. <fs a>16 g4\fermata \breathe \bar "||" %\break
  
  g8. 16 |
  <e c'>2. <e g>8. q16 |
  <g d'>2. \breathe g8 g |
  <g e'>4 <a e'>8 q <a f'>4 <f b>8. q16 |
  <e c'>2. \bar "|."
  
}

aligner = \fixed c' {
  \global
  c8 8 |
  <e g>4 q8 q8 g4 <f a>8 <f b> |
  <e c'>4 q8 q q4 <e g>8 <e c'> |
  
  <f d'>4 q8 q q4 g8 <g d'>8 |
  q4 <e c'>8 <c e> <e g>4 <c e>8 <d f> |
  <e g>4 q8 q g4 <f a>8 <f b> | 
  
  <e c'>4 q8 q q4 <e g>8 <e c'> |
  <f d'>4 q8 q <fs d'>4 <fs b>8 g |
  <g b>4 <fs b>8. <fs a>16 g4 
  
  g8. 16 |
  <e c'>2. <e g>8. q16 |
  <g d'>2. g8 g |
  <g e'>4 <a e'>8 q <a f'>4 <f b>8. q16 |
  <e c'>2.
  
}

alto = \fixed c' {
  \global
  s4 | s2 f4 s | s1 |
  s2. f8 s | s1 | s2 f4 s |
  s1 | s2. s8 g | s2 g4 
  f8. 16 | s1 | s2. g8 g | s1 | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s2. 
  s4 | s1 | s1 | c'4 s2 g8. 16 | s2.
}

bass = \fixed c {
  \global
  <c g>8 q |
  <c c'>4 q8 q <g b>4 <g d'>8 q |
  <c c'>4 <c g>8 q q4 \breathe <c c'>8 q |
  
  <g b>4 q8 q q4 q8 q |
  <c c'>4 <c g>8 <c c'> q4 \breathe <c g>8 q |
  <c c'>4 q8 q <g b>4 <g d'>8 q |
  
  <c c'>4 <c g>8 q q4 \breathe <c c'>8 q |
  <g b>4 q8 q <d a>4 <d d'>8 <d b> |
  <d d'>4 q8. <d c'>16 <g b>4\fermata \breathe
  
  d4\rest |
  d4\rest <c g>8. q16 q4 d4\rest |
  d4\rest <g b>8. q16 q4 \breathe q8 q |
  c'4 <a c'>8 q <f c'>4 g8. 16 |
  <c g>2.
}

alignerb = \fixed c' {
  \global
  s4 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s2. 
  
  s4 |
  d4\rest <c g>8. q16 q4 d4\rest | 
  d4\rest <g b>8. q16 q4 s4 | 
  s1 | 
  s2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  성 난 바 다 물 결 내 게 엄 습 하 여
  절 망 가 운 데 로 휘 몰 아 칠 때 에
  저 멀 리 나 타 난 반 가 운 구 조 선
  나 도 모 르 는 새 큰 소 리 외 쳤 네
  "\"나" 를 좀 보 소 "서\""
  큰 소 리 외 쳤 네
  "\"보" 소 "서\""
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 배 는 시 온 선 천 국 에 가 는 배
  배 안 에 있 는 이 즐 겁 게 노 래 해
  인 자 한 선 장 은 귀 를 기 울 이 고
  두 려 워 외 치 는 내 음 성 들 었 네
  "\"나" 를 좀 보 소 "서\""
  큰 소 리 외 쳤 네
  "\"보" 소 "서\""
}

verseThree = \lyricmode {
  \set stanza = "3."
  선 "-" 한 선 장 은 생 명 줄 내 리 고
  강 한 손 내 밀 어 나 를 구 하 셨 네
  다 시 는 죽 음 과 고 통 이 없 으 니
  내 안 에 평 화 가 항 상 넘 칩 니 다
  "\"내" 주 여 내 주 "여\""
  내 영 혼 부 르 네
  "\"내" 주 "여\""
}

verseFour = \lyricmode {
  \set stanza = "4."
  오 "-" 죄 가 운 데 죽 어 가 는 영 혼
  전 능 한 주 님 이 능 히 구 하 시 네
  지 금 곧 간 절 히 주 님 을 부 르 면
  시 온 선 위 에 서 구 원 함 받 겠 네
  "\"고" 마 운 예 수 "님\""
  영 원 찬 미 할 분
  "\"예" 수 "님\""
}

verseExtra = \lyricmode {
  나 를 좀 보 소 서
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
              \context NullVoice = alignerb {
                \alignerb
              }	      
          >>       
        }

        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
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

