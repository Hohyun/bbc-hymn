\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "그대 쉴만한 곳 있네"
engTitle = "Room at the Cross for You"
hymnNumber = "736"
poet = "I. F. Stanphill, 1914"
composer = "I. F. Stanphill, 1914"
bibleInfo = "마 11:28-29"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  <b, d>8 |
  <d b>8. <c a>16 <b, g>8 <b, d> <as, cs> <b, d> |
  <c e>4.^(_( e4^)_) \breathe e16 16 | <e c'>8. <e b>16 <e a>8 %\break
  
  <c e>8 ds <c e> | 
  <c fs>4.^(_( q4^)_) \breathe d16 16 | 
  <d d'>8 q q <e cs'>4 q16 q | %\break
  
  <e c'>8. q16 q8 <d b>4 \breathe e8 | 
  <cs b>8. <cs a>16 <cs b>8 <cs a> <cs g>8. <cs e>16 |
  <c fs>8 <c a>8. <c fs>16 <c e>4 \breathe \break
  
  d8^\markup "(후렴)" | <d b>4 <c a>16 <d b> <cs a>4 <cs g>8 |
  <c fs>4.^(_( q4^)_) \breathe d8 |
  <e c'>4 <d b>16 <e c'> <d b>4 <c a>8 |
  <b, g>4.^(_( q4^)_) \breathe <b, d>8 | \break
  
  <f d'>8. <f c'>16 <f b>8 <f a>4 <ds g>8 |
  <e a> <e gs> <e a> <as, e>4 \fermata \breathe <as, fs>16 <as, g> |
  <b, d>4 <d b>16 <e c'> <d b>4 <c a>8 |
  <b, g>4.^(_( q4^)_) \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s8 | s2. | s4. d4 16 16 | s4. 
  s8 c s | s4. s4 d16 16  | s2. |
  s4 s4. d8 | s2. | s4. s4
  c8 | s2. | s4. s4 c8 | s2. | s2. |
  s2. | s2. | s2. | s4. s4
}

tenor = \fixed c {
  \global
  <g, g>8 | q8. q16 q8 q q q | s2. | s4.
  s4. | s2. | s2. |
  s2. | s2 <a, e>8. s16 | s4. s4
  s8 | <g, g>4 q16 q s4. | s2. | s2. | <g, g>4.^(_( q4^)_) \breathe q8 |
  s4 <g, g>8 s4. | s2. | s2. | <g, g>4.^(_( q4^)_) \bar "|."
}

bass = \fixed c {
  \global
  s8 | 
  s2. | 
  <c g>4.^(_( <b, gs>4^)_) \breathe q16 q |
  <a, a>8. <b, gs>16 <c a>8
  
  <e a>8 <fs a> <e a> |
  <d a>4.^(_( q4^)_) \breathe <c fs>16 q |
  <b, g>8 q q <bf, g>4 q16 q |
  
  <a, a>8. q16 q8 <e gs>4 \breathe q8 |
  <a, a>8. q16 q8 q s8. <a, g>16 |
  <d a>8 <d fs>8. <d a>16 <d fs>4 \breathe
  
  <d fs>8 | s4. <e g>4 <ef a>8 |
  <d a>4.^(_( q4^)_) \breathe <d fs>8 |
  q4 q16 q q4 q8 | s2. |
  
  <g, b>8. <g, a>16 s8 <g, b>4 q8 |
  <c c'>8 q q <cs g>4\fermata \breathe <cs e>16 q |
  <d g>4 q16 q <d fs>4 q8 |
  s4. s4
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 달 리 신 저 십 자 가
  우 리 숨 을 곳 피 난 철 세
  하 나 님 의 사 랑 자 비 나 타 네 사
  주 예 수 님 세 상 에 보 내 셨 네
  
  그대 쉴 만 한 곳 있 네
  그대 쉴 만 한 곳 있 네
  주 십 자 가 밑 에 나 아 오 면
  그 대 쉴 만 한 곳 있 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 예 수 님 흘 린 보 혈
  우 리 죄 악 을 정 케 하 네
  주 님 이 시 간 에 문 을 열 어 놓 고
  모 든 죄 인 되 오 기 기 다 리 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  능 력 있 는 주 의 손 에
  사 랑 많 으 신 그 팔 안 에
  그 대 온 전 하 게 모 두 다 맡 길 때
  그 무 거 운 죄 짐 을 벗 기 시 네
}


myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
      \tempo 4 = 80
    }
  }
}

