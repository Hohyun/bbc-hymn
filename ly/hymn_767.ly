\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "저 강건너 있는 내집"
engTitle = "I've a Home Beyond the River"
hymnNumber = "767"
poet = "John W. Peterson, 1921"
composer = "John W. Peterson, 1921"
bibleInfo = "계 22:1-4"
oneOrTwo = #1  % odd page: 1, even page: 2

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
  <b, g>8. <c a>16 |
  <d b>2^(_( q8.^)_) <e c'>16 <d b>8. <c a>16 |
  <b, g>4 <b, d>2 \breathe <b, g>8. <d b>16 |
  <g d'>2^(_( q8.^)_) <d b>16 <cs b>8. <cs g>16 |
  a2. \breathe \break
  
  <d g>8. <d a>16 |
  <d b>2^(_( q8.^)_) <e c'>16 <d b>8. <c a>16 |
  <b, g>4 <b, d>2 \breathe <e c'>8. q16 |
  <d b>4 <b, g> <d a>8 <c a>4. |
  g2. \bar "||" \break
  
  d'8.^\markup "(후렴)" 16 |
  d'2^( 8.)  s16 <g d'>8. <d b>16 |
  <d g>8 <d b>4.^(_( q4^)_) \breathe d'8. 16 %\break
  
  d'2^( 8.) s16 <g d'>8. <g b>16 |
  <fs a>2. \breathe <fs d'>8. q16 |
  d'2^( %\break
  
  8.) s16 <g d'>8. <d b>16 |
  <d g>8 <d b>4.^(_( q4^)_) \breathe <e c'>8. q16 |
  <d b>4 <b, g> <d a>8 <c a>4. |
  g2. \bar "|."
}

aligner = \fixed c' {
  \global
  <b, g>8. <c a>16 |
  <d b>2^(_( q8.^)_) <e c'>16 <d b>8. <c a>16 |
  <b, g>4 <b, d>2 <b, g>8. <d b>16 |
  <g d'>2^(_( q8.^)_) <d b>16 <cs b>8. <cs g>16 |
  a2. 
  
  <d g>8. <d a>16 |
  <d b>2^(_( q8.^)_) <e c'>16 <d b>8. <c a>16 |
  <b, g>4 <b, d>2 <e c'>8. q16 |
  <d b>4 <b, g> <d a>8 <c a>4. |
  g2. 
  
  d'8. 16 |
  d'2^( 8.) 16 <g d'>8. <d b>16 |
  <d g>8 <d b>4.^(_( q4^)_) d'8. 16 
  
  d'2^( 8.) 16 <g d'>8. <g b>16 |
  <fs a>2. <f d'>8. q16 |
  d'2^( 
  
  8.) 16 <g d'>8. <d b>16 |
  <d g>8 <d b>4.^(_( q4^)_) <e c'>8. q16 |
  <d b>4 <b, g> <d a>8 <c a>4. |
  g2.
}

alignerb = \fixed c' {
  s4 | s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s2.
 
  e4\rest | e4\rest g8. 16 8. <g e'>16 8. 16 | 8 4.( 4) e4\rest |
  e4\rest g8. 16 8. <g e'>16 8. 16 | 4 8. 16 4 8. 16 | g8. 16 fs8. 16
  g8. <g e'>16 8. 16 | 8 4.( 4) s4 | s1 | s2.
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s1 | d4( cs d)
  s4 | s1 | s1 | s1 | b,4( c b,)
  
  e4\rest | e4\rest g8. 16 8. <g e'>16 s4 | s2. e4\rest |
  e4\rest g8. 16 8. <g e'>16 s4 | s1 | g8. 16 fs8. 16
  g8. <g e'>16 s4 | s1 | s1 | b,4 c b,
}

tenor = \fixed c {
  \global
  <g, d>8. q16 | 
  <g, g>2^(_( q8.^)_) q16 q8. q16 | 
  <g, d>4 <g, g>2 \breathe <g, d>8. <g, g>16 | 
  s2 s8. g16 s4 | s2 fs4 
  
  s8. <a, fs>16 |
  <g, g>2^(_( q8.^)_) q16 q8. q16 | 
  <g, d>4 <g, g>2 \breathe s4 | 
  s1 | 
  g4 e d
  
  s4 | s2. s8. g16 | s8 g4.^_( 4^)_) \breathe s4 |
  
  s1 | d'2. \breathe 8. 16 | s2
  
  s2 | s8 g4.( 4) s4 | s1 | g4( e d)
}

bass = \fixed c {
  \global
  s4 | 
  s1 | 
  s1 | 
  <g b>2^(_( q8.^)_) g16 <e g>8. <e a>16 | 
  <d fs>4 <e g> d8.[ c16] \breathe
  
  <b, g>8. s16 |
  s1 |
  s2. <c g>8. q16 |
  <d g>4 <e g> <d fs>8 q4. |
  a,2.
  
  d4\rest |
  d4\rest <g b>8. q16 q8. <g c'>16 <g b>8. g16 |
  <g b>8 g4. 4 d4\rest |
  
  d4\rest <g b>8. q16 q8. <g c'>16 <g b>8. <g d'>16 |
  d4 fs8. a16 d4 c'8. 16 |
  <b d'>8. q16 <a c'>8. q16
  
  <g b>8. <g c'>16 <g b>8. g16 |
  <g b>8 g4.( 4) \breathe <c g>8. q16 |
  <d g>4 <e g> <d fs>8 q4. |
  g,2
}

verseOne = \lyricmode {
  \set stanza = "1."
  이 세 상 에 거 할 동 안
  괴 론 일 을 당 해 도
  저 강 건 너 있 는 내 집
  속 히 들 어 가 겠 네

  저 강 건 너 있 는 내 집
  아 름 다 운 내 고 향
  저 강 건 너 있 는 내 집
  주 와 길 이 살 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 가 맡 긴 모 든 일 을
  마 칠 때 가 멀 잖 네
  잠 시 고 통 끝 난 후 에
  주 께 들 림 받 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 의 피 로 속 죄 받 은
  형 제 자 매 만 날 때
  입 을 모 아 우 리 주 께
  감 사 찬 미 하 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  이 세 상 에 근 심 많 고
  슬 픈 일 을 당 해 도
  나 의 갈 곳 천 국 안 에
  기 쁨 평 화 넘 치 네
}

verseExtra = \lyricmode {
  저 강 건 너 있 는 내 집
  아 름 다 운 내 고 향
  내 고 향 저 강 건 너
  저 강 건 너 있 는 내 집
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.2) (stretchability . 30))
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
      \tempo 4 = 100
    }
  }
}

