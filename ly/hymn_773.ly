\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "생명 빛 비추세"
engTitle = "Send the Light"
hymnNumber = "773"
poet = "Charles H. Gabriel, 1856~1932"
composer = "Charles H. Gabriel, 1856~1932"
bibleInfo = "엡 5:8-13"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <b, d>8. q16 |
  <b, g>4 q q8. <b, d>16 <b, g>8. <c a>16 |
  <d b>4 q q \breathe <e c'>8. <d b>16 |
  <c a>2. \break
  
  <d b>8. <c a>16 |
  <b, g>2. \breathe <b, d>8. q16 |
  <b, g>4 q q8. <b, d>16 <b, g>8. <c a>16 |
  <d b>4 q q \breathe \break 
  
  <e c'>8. <d b>16 |
  <c a>2. <d b>8. <c a>16 |
  <b, g>2. \breathe 
  \repeat volta 2 { 
    <g b>8.^\markup "(후렴)" <a c'>16 |
    s2. %\break
    
    s4 |
    <g b>4 q q \breathe <a c'>8. <g b>16 |
    
    \alternative {
      \volta 1 { 
        <fs a>2^(_( q8.^)_) <a c'>16 <g b>8. <fs a>16 
        <g b>2.
      }
      \volta 2 {
        <fs a>2^(_( q8.^)_) <e c'>16 <d b>8. <c a>16 
        g2.\fermata \bar "|."
      }
    }
  }
}

aligner = \fixed c' {
  \global
  <b, d>8. q16 |
  <b, g>4 q q8. <b, d>16 <b, g>8. <c a>16 |
  <d b>4 q q <e c'>8. <d b>16 |
  <c a>2. 
  
  <d b>8. <c a>16 |
  <b, g>2. <b, d>8. q16 |
  <b, g>4 q q8. <b, d>16 <b, g>8. <c a>16 |
  <d b>4 q q 
  
  <e c'>8. <d b>16 |
  <c a>2. <d b>8. <c a>16 |
  <b, g>2.  
  \repeat volta 2 { 
    <g b>8. <a c'>16 |
    <b d'>2^(_( q8.^)_) <c' e'>16 
    
    <b d'>8. <a c'>16 |
    <g b>4 q q <a c'>8. <g b>16 |
    
    \alternative {
      \volta 1 { 
        <fs a>2^(_( q8.^)_) <a c'>16 <g b>8. <fs a>16 
        <g b>2.
      }
      \volta 2 {
        <fs a>2^(_( q8.^)_) <e c'>16 <d b>8. <c a>16 
        g2.
      }
    }
  }
}

alignerb = \fixed c' {
  s4 | 
  s1 | 
  s1 | 
  d4\rest <d fs>8. q16 q4 
  
  s4 | 
  d4\rest <g, d>8. q16 q4 s4 | 
  s1 | 
  s2.
  
  s4 | 
  d4\rest <d fs>8. q16 q4 d4\rest | 
  d4\rest <g, d>8. q16 q4 
  
  \repeat volta 2 { 
    d4\rest | 
    d4\rest <g d'>8. q16 q4
    
    q  | 
    q8. q16 q8. q16 q4 d4\rest |
    
    \alternative {
      \volta 1 { 
        d4\rest <d d'>8. q16 q4 d4\rest 
        d8.\rest <g d'>16 q8. q16 q4 
      }
      \volta 2 {
        d4\rest <d d'>8. q16 q8. <d a>16 <d fs>8. q16  
        g8. 16 fs8. e16 d4
      }
    }
  }
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s2.
  s4 | s1 | s1 | s2.
  s4 | s1 | s2. 
  \repeat volta 2 { 
    s4 |
    <b d'>2^(_( q8.^)_) <c' e'>16 \break
    <b d'>8. <a c'>16 |
    s1 |
    
    \alternative {
      \volta 1 { 
        s1 
        s2.
      }
      \volta 2 {
        s1  
        b,8. 16 d8. c16 b,4\fermata
      }
    }
  }
}

tenor = \fixed c {
  \global
  <g, g>8. q16 | 
  <g, d>4 q q8. q16 q8. q16 |
  g4 g g s | s2.
  s4 | 
  d4\rest \breathe <g, d>8. q16 q4 \breathe <g, g>8. q16 | 
  <g, d>4 q q8. q16 q8. q16 | 
  g4 g g
  
  s4 | 
  s1 | 
  d4\rest <g, d>8. q16 q4 \breathe
  
  \repeat volta 2 { 
    s4 | s2. s4 | s1 |
    
    \alternative {
      \volta 1 { 
        s1 
        s2.
      }
      \volta 2 {
        s1  
        g8. 16 fs8. e16 d4\fermata
      }
    }
  }
}

bass = \fixed c {
  \global
  s4 | 
  s1 | 
  g4 g g \breathe d4\rest   | 
  d4\rest <d fs>8. q16 q4 
  
  d4\rest | 
  s1 |
  s1 |
  g4 g g \breathe
  
  d4\rest | 
  d4\rest <d fs>8. q16 q4 d4\rest | 
  s2.
  
  \repeat volta 2 { 
    d4\rest | 
    d4\rest <g d'>8. q16 q4
    
    q  | 
    q8. q16 q8. q16 q4 \breathe d4\rest |
    
    \alternative {
      \volta 1 { 
        d4\rest <d d'>8. q16 q4 d4\rest 
        d8.\rest <g d'>16 q8. q16 q4 
      }
      \volta 2 {
        d4\rest <d d'>8. q16 q8. <d a>16 <d fs>8. q16  
        g,2.\fermata
      }
    }
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  흑 암 속 에 죽 어 가 는 자 에 게
  생 명 빛 비 추 세
  주 의 구 원 갈 급 하 는 자 에 게
  생 명 빛 비 추 세
  
  생 명 빛 복 음 의 밝 은 빛 
  땅 끝 까 지 비 추 세
  토 록 비 추 세 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 방 에 도 주 의 구 원 임 했 네
  생 명 빛 비 추 세
  주 님 앞 에 귀 한 영 혼 드 리 세
  생 명 빛 비 추 세
  
  생 명 빛 복 음 의 밝 은 빛
  영 원 
}

verseThree = \lyricmode {
  \set stanza = "3."
  보 라 지 금 은 혜 받 을 때 로 다
  생 명 빛 비 추 세
  보 라 지 금  구 원 의 날 이 로 다
  생 명 빛 비 추 세
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 의 일 에 피 곤 함 이 있 으 랴
  생 명 빛 비 추 세
  천 국 보 배 모 아 주 께 바 치 세
  생 명 빛 비 추 세
}

verseExtra = \lyricmode {
  생 명 빛 비 추 세
  생 명 빛 비 추 세
  
  생 명 빛 복 음 의 밝 은 빛
  땅 위 에 땅 끝 까 지
  영 원 토 록 비 추 세
  
  영 원 토 록
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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

