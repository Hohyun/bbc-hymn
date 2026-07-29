\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "구름 없는 날"
engTitle = "The Unclouded Day"
hymnNumber = "802"
poet = "J. K. Alwood"
composer = "Rev. J. K. Alwood"
bibleInfo = "계 21:1-8"
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
  <d g>8. q16 q8. q16 q4 <d b>8. <d a>16 |
  <e g>4 <c e> <b, d> \breathe <b, d>8. q16 | %\break
  
  <d g>8. q16 q8. q16 q8. q16 <g b>8. q16 |
  <fs d'>2. \breathe \break
  \repeat segno 2 {
    d8. 16 |
    <d g>8. q16 q8. q16 q4 %\break
    
    <d b>8. <d a>16 |
    <e g>8^(_( q^)_) <c e>4 <b, d>\fermata \breathe <g d'>8. \stemDown <g e'>16 \stemUp |
    <g d'>8. <g b>16 g8. a16 <g b>4 <fs a>8.^(_( q16^)_) |
    g2
    
    \volta 2 \fine \break
    \volta 1 
    <g d'>4.^\markup "(후렴)"^(_( \stemDown <g e'>8^)_) \stemUp |
    <g d'>4 <g b> g <d b> |
    g2 \breathe <g d'>4. \stemDown <g e'>8 \stemUp |
    <g d'>4 <g b>8. a16 <d g>4 <g b>8. q16 |
    <fs a>2.
  }
  \section
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4 | s1 | s1 |
  s1 | s2. \break
  \repeat segno 2 {
    d8. 16 | s2.
    s4 | s1 | s4 g8. 16 s2 | g2
    
    \volta 2 \fine
    \volta 1 
    s2 | s2 g4 s4 | s1 | s4 s8. g16 s2 | s2.
  }
  \section
}

tenor = \fixed c {
  \global
  g8. 16 | s2. g8. 16 | s2. g8. 16 |
  s1 | s2.
  \repeat segno 2 {
    s4 | s2.
    <g, g>8. q16 | s2 g4 s4 | s8. g16 s2. | s2
    
    \volta 2 \fine
    \volta 1 
    s2 | s2. g4 | s1 | s1 | s2.
  }
  \section
}

bass = \fixed c {
  \global
  g8. 16 | 
  <g b>8. q16 q8. q16 q4 g8. 16 | 
  <c g>4 <e g> g \breathe 8. 16 |
  
  <g b>8. q16 q8. q16 q8. q16 <e b>8. <e g>16 | 
  <d a>2. \breathe
  
  \repeat segno 2 {
    <d c'>8. q16 | 
    <g, b>8. q16 q8. q16 q4
    
    s4 | 
    <c g>8^(_( q^)_) <e g>4 g\fermata \breathe <g b>8.\fermata <g c'>16 | 
    <g b>8. g16 <g c'>8. <g d'>16 <d d'>4 <d c'>8.^(_( q16^)_) | 
    <g, b>2
    
    \volta 2 \fine
    \volta 1 
    <g b>4.^(_( <g c'>8^)_) | 
    <g b>4 <g d'> <g b> g | 
    <g b>2 \breathe q4. <g c'>8 | 
    <g b>4 <g d'>8. <g c'>16 <g b>4 <g d'>8. q16  | 
    <d d'>2.
  }
  \section
}

alignerb = \fixed c {
  \global
  s4 | s1 | s1 |
  s1 | s2.
  \repeat segno 2 {
    d8. 16  | g,8. 16 8. 16 4
    g,8. 16 | c4 e g4 8. 16 | 8. 16 8. 16 d4 4 | g,2
    
    \volta 2 \fine
    \volta 1 
    s2 | s1 | s1 | s1 | s2.
  }
  \section
}

verseOne = \lyricmode {
  \set stanza = "1."
  하 늘 너 머 저 편 에 천 국 있 으 니
  우 리 가 서 쉬 일 처 소 있 다 오
  심 한 폭 풍 비 바 람 일 지 않 는 곳
  오 그 날 은 구 름 없 는 날
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 자 녀 다 함 께 모 일 그 곳 에
  나 도 속 히 그 곳 가 서 쉬 리 라
  거 기 생 명 나 무 꽃 만 발 하 리 니
  오 그 향 기 충 만 하 겠 네

  오 구 름 없 는 날
  오 구 름 한 점 도 없 는 날
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 를 대 속 해 주 신 주 가 계 신 곳
  나 의 눈 이 주 님 밝 히 보 겠 네
  보 좌 위 에 앉 으 신 주 의 밝 은 빛
  그 빛 온 누 리 를 비 치 리
}

verseFour = \lyricmode {
  \set stanza = "4."
  나 를 바 라 보 시 는 주 의 미 소 에
  나 의 눈 물 모 두 사 라 지 겠 네
  다 시 눈 물 없 으 니 영 원 희 락 뿐
  오 그 날 은 구 름 없 는 날
}

verseExtra =  \lyricmode {
  심 한 폭 풍 비 바 람 
  일 지 않 는 곳 
  오 나 거 기 영 영 살 겠 네
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
    ragged-last-bottom = ##f
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

