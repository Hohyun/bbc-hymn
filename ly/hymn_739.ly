\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주가 나의 맘에 기쁨 주시네"
engTitle = "You May Have the Joy Bells"
hymnNumber = "739"
poet = "J. Edward Ruark, 1915"
composer = "W. J. Kirkpatrick, 1938~1921"
bibleInfo = "시 4:7-8"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d b>8. <c a>16 <b, g>8. <c a>16 <d b>4 d |
  <c e>8. ds16 <c e>8. <d fs>16 <d g>2 \breathe |
  <d fs>8. <e g>16 <fs a>8. <g b>16 %\break
  
  <a c'>8. <g b>16 <fs a>8. <e g>16 | 
  <d fs>4 <cs g> <d a>2 \breathe | \break
  <d b>8. <d c'>16 <d b>8. <d a>16 <d g>8. <d fs>16 <c e>4 |
  <cs a>8. <d b>16 %\break
  
  <cs a>8. <cs g>16 <cs fs>8. <cs e>16 d4 \breathe |
  \repeat segno 2 {
      d8. e16 <d fs>8. <d g>16 <d a>4 <fs d'>\fermata |
      <d b>16 <e c'>8. <fs b>8. <fs a>16 <d g>2 \break
    \volta 2 \fine %\break
    \volta 1
      <g d'>2^\markup "(후렴)" <g b> |
      <d g>8. q16 q8. q16 <g b>2 \breathe |
      <fs a>2 <fs d'> |
      <g cs'>8. q16 <g b>8. <g cs'>16 <fs d'>2 \breathe | %\break
      
      d'8. c'16 b8. a16 g8. fs16 e4 \breathe |
      c'8. b16 a8. g16 fs8. e16 d4 \bar "||" |
  }
  \section
}

aligner = \soprano

alto = \fixed c' {
  \global
  s2. d4 | s8. c16 s2. | s2
  s2 | s1 | s1 | s4
  s2 d4 | d8. 16 s2. | s1 |
  s1 | s1 | s1 |s1 |
  d'8. c'16 b8. a16 g8. fs16 e4 | c'8. b16 a8. g16 fs8. e16 d4
}

tenor = \fixed c {
  \global
  <a, g>8. q16 <a, d>8. q16 <a, g>4 s | s1 | s2
  s2 | s1 | g8. 16 <g, g>8. <a, fs>16 s2 | s4
  s2. |
  \repeat segno 2 {
      s1 | s1 |
    \volta 2 \fine
    \volta 1 
      s1 | s1 | s1 | s1 |
      d'8. c'16 b8. a16 g8. fs16 e4 | c'8. b16 a8. g16 fs8. e16 d4 |
  }
  \section
}

bass = \fixed c {
  \global
  s2. <b, g>4 |
  <c g>8. <c fs>16 <c g>8. <c a>16 <b, g>2 \breathe |
  <d a>8. q16 <d d'>8. q16 
  
  <d d'>8. q16 q8. q16 |
  <d a>4 <e a> <fs a>2 \breathe |
  g8. 16 s4 <b, g>8. q16 <c g>4 |
  <e g>8. q16
  
  <a, g>8. <a, b>16 <a, a>8. <a, g>16 <d fs>4 \breathe |
  <d fs>8. <d g>16 <d a>8. <e a>16 <fs a>4 <d a>^\fermata |
  <d g>16 q8. <d d'>8. <d c'>16 <g b>2 \breathe |
  
  <g b>2 <g d'> |
  <g b>8. q16 q8. <g c'>16 <g d'>2 \breathe |
  <d d'>2 <d a> |
  <e a>8. q16 <a, a>8. q16 <d a>2 \breathe |
  d'8. c'16 b8. a16 g8. fs16 e4 | c'8. b16 a8. g16 fs8. e16 d4 |
}

alignerb = \fixed c' {
  s1 | s1 | s2
  s2 | s1 | s1 | s4
  s2. | d8. e16 <d fs>8. <d g>16 <d a>4 <fs d'> | <d bf>16 <e c'>8. <fs b>8. <fs a>16 <d g>2 
}


verseOne = \lyricmode {
  \set stanza = "1."
  나 의 마 음 속 에 기 쁨 넘 치 니
  주 가 주 신 참 된 평 강 이 로 다
  예 수 님 을 따 라 서 
  좁 은 길 로 갈 때 에
  주 가 나 의 맘 에 기 쁨 주 시 네
  
  기 쁜 종 이 울 리 네 
  기 쁜 종 이 울 리 네
  주 님 영 접 한 이 후
  어 느 곳 에 있 어 도
}

verseTwo = \lyricmode {
  \set stanza = "2."
  예 수 님 의 사 랑 넓 고 깊 도 다
  주 의 사 랑 내 맘 속 에 넘 치 네
  부 드 러 운 그 말 씀
  나 의 귀 에 들 릴 때
  주 가 나 의 맘 에 기 쁨 주 시 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  천 국 가 는 동 안 환 란 당 할 때
  주 가 이 길 힘 을 항 상 주 시 네
  눈 에 아 니 보 여 도 
  나 의 곁 에 계 시 니
  주 가 나 의 맘 에 기 쁨 주 시 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 의 말 씀 항 상 널 리 전 하 세
  우 리 에 게 맡 긴 일 을 행 하 세
  잃 어 버 린 죄 인 도 
  구 주 예 수 믿 으 면
  주 가 나 의 맘 에 기 쁨 주 시 네
}

verseExtra = \lyricmode {
  \once \override LyricText.self-alignment-X = 1.0 "D.S. 주" 가 나 의 맘 에 기 쁨 주 시 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
   top-margin = 7\mm
   bottom-margin = 2\mm    
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    last-bottom-spacing.padding = #0
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
                \voiceTwo
                \alignerb
              }
          >>       
        }
        
        \context Lyrics = "LyrChorus" \lyricsto "alignerb" { \verseExtra }
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

