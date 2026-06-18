\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "능력 많으신 그 손길"
engTitle = "When He Reached Down His Hand for Me"
hymnNumber = "725"
poet = "G. E. Wright, 1916"
composer = "G. E. Wright, 1916"
bibleInfo = "엡 2:4-6"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key c \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <g, c>8. <c e>16 |
  <e g>4.^(_( <f a>8^)_) q4 |
  <e g>2 c8. 16 |
  <c e>4. c8 <b, d>4 |
  <g, c>2 \breathe <e g>8. <ds a>16 | %\break
  
  <e c'>4. <f b>8 <g c'>4 |
  <f d'>4. <f c'>8 <g d'>4 |
  \stemDown <g e'>2.^(_( | \stemUp
  q2^)_) \breathe \break <e c'>8. <f d'>16 |
  s4. <e c'>8 <f d'>4 |
  <e c'>2 <g c'>8 q | %\break 
  
  <f c'>4. <f a>8 q4 |
  <e g>2 \breathe <g, c>8. <c e>16 |
  <e g>2 <c g>8 q |
  <c e>2 <b, d>4 |
  <g, c>2.^(_( |
  q2^)_) \breathe \bar "||" \break <e g>8.^\markup "(후렴)" q16 |
  q4. q8 q4 | %\break 
  
  <f a>2 <f c'>4 | <e c'>2.^(_( |
  q2^)_) \breathe <e c'>8. <f d'>16 |
  s2 <g c'>8 q |
  <fs d'>2 <fs e'>4 |
  <g d'>2.^(_( |
  q2^)_) \breathe \break <e c'>8. <f d'>16 |
  s2. | %\break 
  
  <e c'>2 <g c'>8 q |
  <f c'>4. <f a>8 q4 |
  <e g>2 \breathe <g, c>8. <c e>16 |
  <e g>2 <c g>8 q |
  <c e>2 <b, d>4 |
  <g, c>2.^(_( |
  q2^)_) \bar "|."
}

aligner = \fixed c' {
  \global
  <g, c>8. <c e>16 |
  <e g>4. <f a>8 q4 |
  <e g>2 c8. 16 |
  <c e>4. c8 <b, d>4 |
  <g, c>2 <e g>8. <ds a>16 | 
  
  <e c'>4. <f b>8 <g c'>4 |
  <f d'>4. <f c'>8 <g d'>4 |
  <g e'>2.^(_( | 
  q2^)_) <e c'>8. <f d'>16 |
  <g e'>4. <e c'>8 <f d'>4 |
  <e c'>2 <g c'>8 q |  
  
  <f c'>4. <f a>8 q4 |
  <e g>2 <g, c>8. <c e>16 |
  <e g>2 <c g>8 q |
  <c e>2 <b, d>4 |
  <g, c>2.^(_( |
  q2^)_)  <e g>8. q16 |
  q4. q8 q4 |  
  
  <f a>2 <f c'>4 | <e c'>2.^(_( |
  q2^)_) <e c'>8. <f d'>16 |
  <g e'>2 <g c'>8 q |
  <fs d'>2 <fs e'>4 |
  <g d'>2.^(_( |
  q2^)_) <e c'>8. <f d'>16 |
  <g e'>4. q8 q4 | 
  
  <e c'>2 <g c'>8 q |
  <f c'>4. <f a>8 q4 |
  <e g>2 <g, c>8. <c e>16 |
  <e g>2 <c g>8 q |
  <c e>2 <b, d>4 |
  <g, c>2.^(_( |
  q2^)_) 
}

alto = \fixed c' {
  \global
  s4 | s2. | s2 c8. 16 | s4. c8 s4 | s2. |
  s2. | s2. | s2. | s2. | <g e'>4. s4. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | <g e'>2 s4 | s2. | s2. | s2. | <g e'>4. q8 q4 |
  s2. | s2. | s2. | s2. | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  s4 | s2. | s2 <a, e>8. q16 | <g, g>4. <g, e>8 <g, f>4 | s2. |
  s2. | s4. a8 s4 | s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | g2 <g, f>4 | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. | g2 <g, f>4 | s2. | s2 
}

bass = \fixed c {
  \global
  <c e>8. <c g>16 |
  <c c'>4.^(_( q8^)_) q4 |
  q2 s4 |
  s2. |
  <c e>2 \breathe <c c'>8. q16 |
  
  <c g>4. <d g>8 <e c'>4 |
  <g b>4. g8 <g b>4 |
  <c c'>2.^(_( |
  <c g>2^)_) \breathe q8. q16 |
  <c c'>4. <c g>8 <c a>4 |
  <c g>2 <e bf>8 q |
  
  <f a>4. <f c'>8 q4 |
  <c c'>2 \breathe <c e>8. <c g>16 |
  <c c'>2 <e g>8 q |
  s2. |
  <c e>2.^(_( |
  q2^)_) \breathe \bar "||" <c c'>8. q16 |
  q4. q8 q4 |
  
  <f c'>2 <f a>4 |
  <c g>2.^(_( |
  q2^)_) \breathe q8. q16 |
  <c c'>2 q8 q |
  <e a>2 <e c'>4 |
  <g b>2.^(_( |
  q2^)_) \breathe <c g>8. q16 |
  <c c'>4. q8 q4 |
  
  <c g>2 <e bf>8 q |
  <f a>4. <f c'>8 q4 |
  <c c'>2 \breathe <c e>8. <c g>16 |
  <c c'>2 <e g>8 q |
  s2. |
  <c e>2.^(_( |
  q2 ^)_) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 의 영 "-" 혼 이 천 국 길 벗 어 나 
  사 망 길 에 서 방 황 할 때
  주 님 사 랑 으 로 내 게 손 내 미 사
  내 게 참 생 명 주 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 님 오 시 기 전 죄 의 노 예 되 어
  절 망 중 에 서 헤 매 일 때
  주 님 나 의 영 혼 친 히 붙 드 시 사
  죄 의 속 박 을 푸 셨 네
  
  능 력 많 으 신 그 손 길
  능 력 많 으 신 그 손 길
  능 력 많 으 신 주 손 길 임 했 을 때
  곧 내 죄 사 함 얻 었 네
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  예 수 영 접 한 후 내 영 기 뻐 뛰 며
  심 판 날 올 때 주 께 숨 네
  주 의 안 전 한 팔 의 지 함 으 로 써 
  모 든 환 난 을 피 하 네
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
      \tempo 4 = 90
    }
  }
}

