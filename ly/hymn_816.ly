\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "이 세상은 내 집이 아니네"
engTitle = "This World is Not My Home"
hymnNumber = "816"
poet = "Albert E. Brumley"
composer = "Albert E. Brumley"
bibleInfo = "고후 4:16-5:5"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  <b, g>8 |
  <d b>8 q q <c a> <b, g>4 <f b> |
  <e a>8 <e g> q <c e> \acciaccatura e8 <b, d>4. q8 |
  <d g>8 q q q <g b>4. q8 | %\break
  
  <g b>8 <e a> q16 <g b>8. \acciaccatura b8 <fs a>4. <fs d'>8 |
  \stemDown <g d'>8 q q \stemUp <g b> \acciaccatura b8 <d g>4 <f b> |
  <e a>8 <e g> q <c e> <b, g>4  %\break
  
  \repeat segno 2 {
    <b, d>8 <c e> |
    <b, g>4 <d g>16 <g b>8. \stemDown <g d'>4 <g e'>8 <g d'> \stemUp |
    <g b>4 <fs a>16 q8. <d g>4. %\break
    
    \volta 2 \fine
    \volta 1 
    \stemDown <g d'>8^\markup "(후렴)" |
    q4. \stemUp <g b>8 \acciaccatura b8 g4. <fs b>8 |
    <e a> <e g> q <c e> <b, d>4. q8 |
    <d g>8 q q q <g b>4. q8 | %\break
    
    <g b>8 <e a>8 q <g b> <fs a>4. <fs d'>8 |
    \stemDown <g d'>8 q q \stemUp <g b> <d g>4 <f b> |
    <e a>8 <e g> q <c e> <b, g>4 
  }
  \section
}

aligner = \soprano

alto = \fixed c' {
  \global
  s8 | s1 | s1 | s1 |
  s1 | s1 | s2.
  s4 s1 | s2. s8
  
  s8 s2 f4. s8 | s1 | s1 |
  s1 | s1 | s2.
}

tenor = \fixed c {
  \global
  <g, d>8 |
  <g, g>8 q q q <g, d g>4 <g, g> |
  s2 <g, g>4. q8 |
  s1 |
  
  s1 | s2. g4 | s2 <g, g>4
  
  \repeat segno 2 {
    <g, g>8 q |
    q4 s2. |
    s4 s4 s4.
    
    \volta 2 \fine
    \volta 1 
    s8 | s1 | s2 <g, g>4. q8 | s1 |
    s1 | s2. g4 | s2 <g, g>4
  }
  \section  
}

bass = \fixed c {
  \global
  s8 | 
  s1 | 
  <c g>8 <c c'> q <c g> s2 | 
  <g, b>8 q q q <g, d'>4. q8 |
  
  <g, cs'>8 q q16 q8. <d d'>4. <d c'>8 |
  <g b>8 q q <g d'> \acciaccatura d'8 <g b>4 g4 |
  <c g>8 <c c'> q <c g> s4
  
  \repeat segno 2 {
    s4 |
    s4 <b, g>16 <d g>8. <g b>4 <g c'>8 <g b> |
    <d d'>4 <d c'>16 q8. <g, b>4.
    
    \volta 2 \fine
    \volta 1 
    <g b>8 |
    q4. <g d'>8 <g b>4. <g d'>8 |
    <c c'>8 q q <c g> s2 |
    <g, b>8 q q q <g, d'>4. q8 |
    
    <g, cs'>8 q q q <d d'>4. <d c'>8 |
    <g b>8 q q <g d'> <g b>4 g |
    <c g>8 <c c'> q <c g> s4
  }
  \section
}

verseOne = \lyricmode {
  \set stanza = "1."
  죄 많 은 이 세 상 은 내 집 아 니 네
  내 모 든 보 화 는 저 하 늘 에 있 네
  저 천 국 문 을 열 로 나 를 부 르 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  저 천 국 에 서 모 두 날 기 다 리 네
  내 주 예 수 피 로 죄 씻 음 받 았 네
  나 비 록 약 하 나 주 님 날 지 키 리
  나 는 이 세 상 에 정 들 수 없 도 다
  
  오 주 님 같 은 친 구 없 도 다
  저 천 국 없 으 면 난 어 떻 게 하 나
  저 천 국 문 을 열 고 나 를 부 르 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  저 영 광 의 땅 에 나 길 이 살 겠 네
  손 잡 고 승 리 를 외 치 는 성 도 들
  이 기 쁜 찬 송 하 늘 울 려 퍼 지 네
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

