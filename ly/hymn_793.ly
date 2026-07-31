\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}


% Hymn Info
korTitle = "내 죄짐 벗었네"
engTitle = "My Burdens Rolled Away"
hymnNumber = "793"
poet = "Mrs. Minne A. Steels"
composer = "Mrs. Minnie A. Steels"
bibleInfo = "엡 2:4-6"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  c8 c |
  <c f>8 q q q q <c e> d <c e> |
  <c f>2. \breathe <f a>8 <g bf> |
  <a c'>8 q q q %\break
  
  q4 <g bf>8 <f a> |
  <e g>2. \breathe <f a>8 q |
  <e bf> q q <f a> <e g>4 <e c'>8 q |
  <f a> q q <c g> %\break
  
  <c f>4 \breathe q8 q |
  <d g>4 q8 q <c e>8 q d8. <c e>16 |
  <c f>2. \breathe \bar "||" \break
  \stemDown <a c'>8.^\markup "(후렴)" <bf d'>16 | 
  <a c'>2. \stemUp <f a>8. <g bf>16 | %\break
  
  <f a>2. \breathe q8 q |
  <e g> q q q <f d'> q q8. q16 |
  c'2.\fermata \breathe <a c'>8. \stemDown <bf d'>16 \stemUp | %\break
  
  <a c'>2. <f a>8. <g bf>16 |
  <f a>2. \breathe c8 c |
  <c f> q <f c'>\fermata <g bf> <f a> q <e a>8. <e g>16 |
  f2. \bar "|."
}

aligner = \soprano

alignerb = \fixed c' {
  \global
  s4 | s1 | s1 | s2
  s2 | s1 | s1 | s2
  s2 | s1 | s1 | s4 f8. 16 4 s4
  s4 f8. 16 4 s4 | s2. g8. 16 | g8 a bf c c4 s4 |
  s4 f8. 16 4 s4 | s4 f8. 16 4 s4 | s1 | s2.
}

alto = \fixed c' {
  \global
  s4 | s2. c8 s | s1 | s2
  s2 | s1 | s1 | s2
  s2 | s2. c8. s16 | s1 | s1
  s1 | s1 | e8 f g a bf4^\fermata s4 |
  s1 | s2. c8 c | s1 | f2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s2
  s2 | s1 | s1 | s2
  s2 | s1 | s1 | s1
  s1 | s1 | g8 a bf c' c'4\fermata \breathe s4 |
  s1 | s1 | s1 | s2.
}

bass = \fixed c {
  \global
  <f a>8 q |
  q q q q <f bf> q q q |
  <f a>2. \breathe <f c'>8 q |
  q q q q
  
  q4 q8 q |
  <c c'>2. \breathe <f c'>8 q |
  <g c'>8 q q q <c c'>4 q8 q |
  <f c'>8 q q <f bf>
  
  <f a>4 \breathe q8 <e a> |
  <bf, bf>4 q8 q <c g> q <c bf>8. q16 |
  <f a>2. \breathe d4\rest |
  d4\rest <f c'>8. q16 q4 d4\rest |
  
  d4\rest <f c'>8. q16 q4 \breathe q8 q |
  <g c'> q q q <g b>8 q q8. q16 |
  c2.\fermata d4\rest |
  
  d4\rest <f c'>8. q16 q4 d4\rest |
  d4\rest q8. q16 q4 \breathe <f a>8 q |
  q q q\fermata <bf, d'> <c c'> q q8. <c bf>16 |
  <f a>2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 의 죄 짐 벗 은 날 못 잊 겠 네
  항 상 고 통 주 던 큰 죄 의 짐
  인 자 하 신 주 님 께 의 지 하 고 맡 길 때
  나 의 온 죄 짐 벗 겨 주 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 의 죄 짐 벗 은 날 못 잊 겠 네
  항 상 나 를 따 르 던 죄 의 짐
  십 가 가 에 달 리 사 주 님 대 신 죽 으 사
  나 의 죄 모 두 대 속 하 셨 네

  죄 의 짐 벗 었 네
  나 는 이 제 염 려 할 것 없 겠 네
  죄 의 짐 벗 었 네
  주 가 주 신 기 쁨 회 복 되 었 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 죄 짐 벗 은 날 못 잊 겠 네
  나 를 방 해 하 던 저 죄 의 짐
  주 께 무 릎 꿇 고 서 주 의 이 름 부 를 때
  나 의 죄 벌 써 풀 어 주 셨 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  죄 짐 벗 은 날 부 터 늘 찬 미 해
  내 맘 속 에 숨 겨 진 이 평 안
  주 를 위 해 살 때 에 기 쁨 으 로 외 칠 말
  할 렐 루야 나 의 죄 짐 풀 었 네
}

verseExtra = \lyricmode {
  죄 의 짐 벗 었 네
  염 려 할 것 없 겠 네
  죄 의 짐 벗 었 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %top-margin = 5\mm
    %bottom-margin = 2\mm        
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.1) (stretchability . 30))
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

