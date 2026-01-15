\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = "주의 깊은 자비를"
engTitle = "Depth of Mercy"
hymnNumber = "757"
poet = "Charles Wesley, 1707~1788"
composer = "Willam B. Bradbury, 1816~1868"
bibleInfo = "마 11:28"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 3/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  % temporary polyphonic passage
  << 
    { \voiceOne 
      a4( c) f, |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  g2 g4 |
  g4( f) g |
  a2. \breathe |
  
  << 
    { \voiceOne 
      a4( c) f, |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  g2 g4 |
  
  << 
    { \voiceOne 
      g4( a) g |
      f2. \breathe | \break
    }
    \new Voice {
      \voiceTwo
      e2 e4 |
      f2. |
    }
  >> 
  
  bes2 bes4 |
  a2 a4 |
  g2 f4 |
  c'2. \breathe |
  << 
    { \voiceOne 
      c4( a) f |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  g2 g4 |
  g4( a) g |
  f2. \bar "|." |
}

alto = \relative c' {
  \global
  s2. |
  e2 e4 |
  s2. |
  f2. |
  s2. |
  e2 e4 |
  s2. |
  s2. |
  
  f2 f4 |
  f2 f4 |
  c2 d4 |
  e2. |
  s2. |
  e2 e4 |
  e2 e4 |
  c2. |
}

tenor = \relative c' {
  \global
  << 
    { \voiceOne
      c4( a) a |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  \stemDown
  c'2 c4 |
  c2 c4 |
  c2. \breathe |
  
  << 
    { \voiceOne
      c4( a) a |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  \stemDown
  c'2 c4 |
  
  << 
    { \voiceOne 
      bes4( c) bes |
      
    }
    \new Voice {
      \voiceTwo
      c,2 c4 |
    }
  >> 
  
  \stemDown
  a'2. \breathe | \break
  
  \stemDown
  d2 d4 |
  c2 c4 |
  c2 b4 |
  c2. \breathe |
  << 
    { \voiceOne
      a4( c) a |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  \stemDown
  c'2 c4 |
  << 
    { \voiceOne
      bes4( c) bes |
    }
    \new Voice {
      \voiceTwo
      c,2 c4 |
    }
  >> 
  
  
  \stemDown
  a'2. \bar "|." |
}

bass = \relative c {
  \global
  s2. |
  c2 c4 |
  c2 c4 |
  f2. |
  s2. |
  c2 c4 |
  s2. |
  f2. |
  
  f2 f4 |
  f2 f4 |
  e2 d4 |
  c2. |
  s2. |
  c2 c4 |
  s2. |
  f2. |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 의 깊 은 자 비 를 나 를 위 해 두 셨 나
  죄 인 괴 수 된 나 를 오 래 참 고 계 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 은 혜 배 반 코 주 께 욕 을 돌 렸 네
  주 의 부 름 떠 나 서 주 께 슬 픔 돌 렸 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  지 금 주 께 돌 아 와 죄 로 슬 퍼 합 니 다
  주 의 말 씀 따 라 서 믿 고 주 께 옵 니 다
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 가 응 답 하 시 고 나 를 맞 아 주 셨 네
  주 는 사 랑 이 시 라 죄 인 구 원 하 시 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
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
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \header {
    tagline = ##f
  }
  
  
}

