\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "모두 오라"
engTitle = "Come to the Feast"
hymnNumber = "722"
poet = "Charlotte G. Homer"
composer = "W. A. Ogden"
bibleInfo = "마 11:28"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>4 q8. q16 <ef g>8 <d f>4 b8\rest \breathe |
  <f d'>4 <ef c'>8. q16 <d bf>2 \breathe |
  <g bf>4 <ef g>8. <f a>16 <g bf>8. q16 <f a>8. <ef g>16 | %\break
 
  <d f>2. f4 |
  f <ef c'> q a8[ g] |
  <d f>4 <f bf> q <f d'> \breathe |
  <f c'> <f a>8. q16 <e c'>4 <g bf> |
  <f a>2^(_( <ef g>^)_) \breathe |  %\break
 
  f2^(^\markup "(후렴)" 8.) 16 g8. a16 |
  bf2 4 \breathe 4 |
  c'2^( 8.) 16 bf8. c'16 |
  d'2^( 4) \breathe bf | %\break
 
  bf2^( 8.) 16 a8. g16 |
  f2 bf4 \breathe 4 |
  <f d'>4. <d bf>8 <ef c'>8 q4. |
  <d bf>2. b4\rest \bar "|." |
}

aligner = \fixed c' {
  \global
  <d f>4 q8. q16 <ef g>8 <d f>4 b8\rest  |
  <f d'>4 <ef c'>8. q16 <d bf>2  |
  <g bf>4 <ef g>8. <f a>16 <g bf>8. q16 <f a>8. <ef g>16 | 
 
  <d f>2. f4 |
  f <ef c'> q a8[ g] |
  <d f>4 <f bf> q <f d'>  |
  <f c'> <f a>8. q16 <e c'>4 <g bf> |
  <f a>2^(_( <ef g>^)_)  |  
  d8. 16 8. 16 4 4 | 8. 16 8. 16 4 d4\rest | f8. 16 8. 16 f8.[ ef16] d8.[ ef16] | f8. 16 8. 16 4 4 |
  g8. 16 8. 16 4 f8. ef16 | d8. 16 8. 16 4 f | s1 | s1 |
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 |
  s2. f4 | ef s2 ef4 | s1 | s1 | s1 |
  d8. 16 8. 16 4 4 | 8. 16 8. 16 4 d4\rest | f8. 16 8. 16 f8.[ ef16] d8.[ ef16] | f8. 16 8. 16 4 4 |
  g8. 16 8. 16 4 f8. ef16 | d8. 16 8. 16 4 f | s1 | s1 |
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 |
  s1 | s2. c'8[ a] | bf4 s2. | s1 | s1 |
  s1 | s1 | s1 | bf8. 16 s2. |
  s1 | s1 | s4. s4 f4. | s1  |
}

bass = \fixed c {
  \global
  <bf, bf>4 q8. q16 q8 q4 d8\rest |
  <f bf>4 <f a>8. q16 <bf, bf>2 \breathe |
  <ef bf>4 q8. q16 q8. q16 q8. q16 |
  
  <bf, bf>2. \breathe <d bf>4 |
  <f a>4 q q f |
  bf <bf d'> q <bf, bf> \breathe |
  <c a> <c c'>8. q16 <c g>4 <c c'> |
  <f c'>2^(_( <f a>^)_) \breathe |
  
  <bf, bf>8. q16 q8. q16 q4 <bf, f> |
  <bf, f>8. q16 q8. q16 q4 \breathe d4\rest |
  <f a>8. q16 q8. q16 q4 q4 |
  bf8. 16 <f bf>8. <d bf>16 <bf, bf>4 \breathe <d bf>4 |
  
  <ef bf>8. q16 q8. q16 q4 q8. q16 |
  <bf, bf>8. q16 q8. q16 q4 \breathe <d bf> |
  <f bf>4. q8 <f a> f4. |
  <bf, f>2. d4\rest \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  다 준 비 됐 다 모 두 오 라
  큰 잔 치 배 설 되 었 다
  너 굶 주 린 자 피 곤 한 자 
  배 불 리 먹 어 라
  
  청 함 들 었 을 때 
  누 구 나 오 너 라
  누 구 나 주 께 오 면
  주 구 원 하 시 리
}

verseTwo = \lyricmode {
  \set stanza = "2."
  다 준 비 됐 다 모 두 오 라
  구 원 의 문 이 열 렸 다
  네 영 혼 쉴 곳 주 님 께 서
  예 비 하 셨 도 다
  
  청 함 들 었 을 때 누 구 나 오 라
  청 함 들 었 을 때 누 구 나 오 라
  누 구 나 주 께 오 면 다 구 원 하 시 리
}

verseThree = \lyricmode {
  \set stanza = "3."
  다 준 비 됐 다 모 두 오 라
  주 님 이 기 다 리 신 다
  너 지 체 말 고 오 늘 주 로
  내 맘 에 모 셔 라  
}

verseFour = \lyricmode {
  \set stanza = "4."
  다 준 비 됐 다 모 두 오 라
  네 염 려 떨 쳐 버 리 고
  주 하 나 님 의 사 랑 안 에 
  영 생 수 마 셔 라
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
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
    
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

