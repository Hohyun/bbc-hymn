\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내게 참 귀한 예수"
engTitle = "He Is So Precious to Me"
hymnNumber = "754"
poet = "Charles H. Gabriel, 1856~1932"
composer = "Charles H. Gabriel, 1856~1932"
bibleInfo = "빌 2:10-12"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <b, d>4 |
  <d b> q q <d c'> <d b> <ds a> |
  <e a> <e g> <c e> <b, d>2 \breathe d4 |
  <c fs> q q q %\break
  
  <c e> <d fs> |
  <d g> <d a> <d b> <d a>2 \breathe d4 |
  <d b> q q <e c'> <d b> <c a> |
  <b, g> <c a> <d b> <e c'>2 \breathe %\break
  
  <e c'>4 |
  <d b> <b, d> <b, g> <c a>8 <d b>4. <c a>4 |
  <b, g>2.^(_( q2^)_) \breathe \bar "||" \break
  <d b>4_\fermata^\markup "(후렴)" |
  <b, d>4 <b, e> <b, fs> <b, g>8 <c a>4. <b, g>4 | %\break
  
  b2.( 2) \breathe <b d'>4\fermata |
  <d a> q q q8 <d b>4. <d c'>4 |
  b2.( 2) \breathe \break <d b>4 |
  \stemDown <g d'> <g e'> %\break
  
  <g d'> \stemUp <g b>2 <fs a>8 <fs b> |
  <e g>4 <fs a> <f b> <e c'>2\fermata \breathe q4\fermata |
  <d b> <b, d> <b, g> <c a>8 <d b>4. <c a>4 |
  <b, g>2.^(_( q2^)_) \bar "|."
}

aligner = \soprano

alignerb = \fixed c' {
  s4 | s2. s2. | s2. s2. | s1
  s2 | s2. s2. | s2. s2. | s2. s2 
  s4 | s2. s2. | s2. s2. | s2. s2. |
  d8 g4. e4 d2 s4 | s2. s2. | d8 g4. e4 d2 s4 | s2
  s4 s2. | s2. s2. | s2. s2. | s2. s2
}


alto = \fixed c' {
  \global
  s4 | s2. s2. | s2. s2 d4 | s1
  s2 | s2. s2 d4 | s2. s2. | s2. s2 
  s4 | s2. s2. | s2. s2. | s2. s2. |
  d8 g4. e4 d2 s4 | s2. s2. | d8 g4. e4 d2 s4 | s2
  s4 s2. | s2. s2. | s2. s2. | s2. s2
}

tenor = \fixed c {
  \global
  <g, g>4 |
  q q q q q s |
  s2. <g, g>2 s4 |
  s1 
  
  s2 | 
  s4 <a, fs> <g, g> s2. | 
  <g, g>4 q q q q <g, d> | 
  q q <g, g> s2
  
  s4 |
  s2. s2. |
  <g, d>2.^(_( q2^)_) \breathe <g, g>4_\fermata |
  q q <g, d> q8 q4. q4 |
  
  <g, g>2.^(_( q2^)_) \breathe s4 |
  s2. s2. |
  <g, g>2.^(_( q2^)_) \breathe g4 |
  s2
  
  s4 s2. |
  s2. s2. |
  s2. s2. |
  <g, d>2.^(_( q2^)_)
}

bass = \fixed c {
  \global
  s4 | 
  s2. s2 <b, g>4 | 
  <c g> q q s2 \breathe <b, g>4 | 
  <d a> q q q 
  
  <d g> <c a> | 
  <b, g> s2 <d fs>2 \breathe q4 | 
  s2. s2. | 
  s2. <c g>2 \breathe
  
  <c g>4 | 
  <d g> q q <d fs>8 q4. q4 |
  s2. s2. |
  s2. s2. |
  
  s2. s2 <d a>4\fermata |
  <d fs> q q q8 <d g>4. <d a>4 |
  s2. s2. |
  <g b>4 <g c'>
  
  <g b>4 <g d'>2 <d c'>8 q |
  <e b>4 <d d'> <g d'> <c c'>2\fermata \breathe <c g>4\fermata |
  <d g>4 q q <d fs>8 q4. q4 |
  s2. s2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  오 내 구 주 예 수 참 귀 중 한 주
  나 항 상 기 쁨 넘 쳐 찬 양 하 네
  내 주 안 에 거 할 때 힘 주 시 네
  오 내 게 참 귀 한 예 수
  
  오 내 게 참 귀 한 예 수
  오 내 게 참 귀 한 예 수
  주 내 모 든 죄 대 속 하 셨 으 니
  오 내 게 참 귀 한 예 수
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 주 님 을 떠 나 서 방 황 할 때
  주 끝 까 지 참 으 사 구 하 셨 네
  내 수 치 가 변 하 여 영 광 되 니
  오 내 게 참 귀 한 예 수
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 은 혜 의 산 위 에 올 라 서 니
  이 세 상 의 구 름 이 발 아 래 라
  주 미 소 의 햇 빛 을 비 추 시 니
  오 내 게 참 귀 한 예 수
}

verseFour = \lyricmode {
  \set stanza = "4."
  내 주 님 이 예 비 한 천 국 있 네
  주 자 비 를 힘 입 어 올 라 가 리
  주 인 자 한 그 얼 굴 나 대 할 때
  오 내 게 참 귀 한 예 수
}

verseExtra = \lyricmode {
  귀 한 예 수
  귀 한 예 수
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
      \tempo 4 = 120
    }
  }
}

