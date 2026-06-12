\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주께 모두 맡기오"
engTitle = "His Way With Thee"
hymnNumber = "803"
poet = "Cyrus S. Nusbaum, 1861~1937"
composer = "Cyrus S. Nusbaum, 1861~1937"
bibleInfo = "시 23:1-11"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 4
}

soprano = \fixed c' {
  \global
  d8. <d g>16 q8. <d a>16 <g b>8. q16  q8. q16 |
  q8. <fs a>16 q8. <g b>16 <a c'>2 \breathe |
  d8. <d fs>16 <fs a>8. <g b>16  %\break
  
  <a c'>4. q8 |
  q8. <g b>16 q8. <a c'>16 \stemDown <b d'>2 \stemUp \breathe |
  d8. <d g>16 q8. <d a>16 <g b>8. q16 q8. q16 |
  <e b>8. <e a>16  %\break
  
  <e a>8. <e b>16 <e c'>2 \breathe |
  d8. 16 8. <d c'>16 b4 <fs a> |
  g2. \bar "||" \break 
  
  <g d'>4^\markup "(후렴)" |
  <fs d'>4. <fs a>8 <fs d'>8. q16 <fs a>8. <a c'>16 | %\break
  
  <a c'>4 <g b> q \breathe <g d'> |
  <fs d'>4. <fs a>8 <fs d'>8. q16 <fs a>8. <a c'>16 |
  <a c'>4 <g b> q \breathe d |
  <d g>4. q8 %\break
  
  <fs a>8. <g b>16 q8. g16 |
  <e g>4 <e c'> q\fermata \breathe <c e> |
  <b, d>4. q8 <d g>8. <d a>16 <g b>8. <g c'>16 |
  <g b>4 <fs a> <d g>2 \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  d8. s16 s2. | s1 | d8. s16 s4
  s2 | s1 | d8. s16 s2. | s4
  s2. | d8. 16 8. s16 d8[ g] s4 | s1 | s1 |
  s1 | s1 | s2. d4 | s2
  s4 s8. f16 | s1 | s1 |s1 |
  
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
  <g b>8. q16 q8. <g c'>16 <g d'>8. q16 q8. q16 |
  <d d'>8. q16 q8. q16 q2 \breathe  |
  <d fs>8. <d a>16 <d d'>8. q16
  
  <d d'>4. q8 |
  <g d'>8. q16 q8. q16 q2 \breathe |
  <g b>8. q16 q8. <g c'>16 <g d'>8. q16 q8. q16 |
  <c c'>8. q16 
  
  <c c'>8. <b, gs>16 <a, a>2 \breathe |
  <d fs>8. q16 q8. <d a>16 << { d4 <d c'> } \\ { \stemUp g8[ d'8] s4 } >>  |
  <g b>2. q4 | <d a>4. <d d'>8 <d a>8. q16 <d d'>8. q16 |
  
  <g d'>4 q q \breathe <g b> |
  <d a>4. <d d'>8 <d a>8. q16 <d d'>8. q16 |
  <g d'>4 q q \breathe <g b> |
  q4. q8
  
  <d d'>8. q16 q8. <g b>16 |
  <c c'>4 <c g> q\fermata \breathe q |
  <d g>4. q8 <d b>8. <d c'>16 <d d'>8. <d e'>16 |
  <d d'>4 <d c'> <a, g b>2 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  그 대 영 혼 주 와 항 상 온 전 한 가 요
  좁 은 길 도 주 와 동 행 하 느 뇨
  무 거 운 짐 주 께 모 두 맡 기 고 있 나
  주 께 모 두 맡 기 오
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 말 씀 듣 고 즉 시 응 답 하 느 뇨
  들 림 으 로 받 을 평 안 아 느 뇨
  그 대 구 원 하 신 주 께 도 움 구 했 나
  주 께 모 두 맡 기 오

  주 예 수 능 력 내 게 임 하 여
  그 피 로 너 의 죄 를 씻 겠 네
  주 사 랑 너 의 영 혼 채 우 리
  네 주 께 모 든 일 을 맡 기 오
}

verseThree = \lyricmode {
  \set stanza = "3."
  영 생 복 락 주 의 나 라 바 라 보 느 뇨
  모 든 일 에 주 를 인 정 하 느 뇨
  주 의 일 을 맡 아 할 때 힘 다 하 느 뇨
  주 께 모 두 맡 기 오
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

