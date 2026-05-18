\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "온 세상에 충만한 말씀"
engTitle = "An Open Bible for the World"
hymnNumber = "712"
poet = "Henry M. King"
composer = "WM J. Kirkpatrick, 1838~1921"
bibleInfo = "요 1:8-12"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

aligner = \fixed c' {
  \global 
  f4 | bf4 4 8. f16 d8. ef16 | f2. 4 | <ef g>4 q <e c'>8. <e bf>16 <e a>8. <e bf>16 | <f c'>2. 
  f4 | bf4 4 8. f16 d8. ef16 | f2. 4 | <ef g> <ef c'> <d bf>8. <f a>16 <e g>8. <ef a>16 | <d bf>2 b8\rest 
  
  <d bf>8^\markup "(후렴)" <c a>8. <d bf>16 | <ef c'>2^(_( q8^)_) q <d bf>8. <ef c'>16 | <f d'>2^(_( q8^)_) 
  <f d'>8 <f c'>8. <f d'>16 | <ef ef'>4^> <f d'>^> <g c'>^> <g bf>^> | f8. 16 8. 16 8 f <e g>8. <ef a>16 | 
  <d bf>4. q8 <g c'>4 <g d'> | f' ef'^( 8) <g ef'>8 <g d'>^> <g c'>^> | <f bf>4 q <f a> <f c'> | <f bf>2. 
}

alignerb = \fixed c' {
  \global 
  s4 | s1 | s1 | s1 | s2. 
  s4 | s1 | s1 | s1 | s2 s8
  
  s4. | d8\rest <f a>8 q8. q16 q8 d8\rest d4\rest | d8\rest <bf, bf>8 q8. q16 q8 s8 s4 |
}

soprano = \fixed c' {
  \global 
  f4 | bf4 4 8. f16 d8. ef16 | f2. 4 | <ef g>4 q <e c'>8. <e bf>16 <e a>8. <e bf>16 | <f c'>2. %\break
  f4 | bf4 4 8. f16 d8. ef16 | f2. 4 | <ef g> <ef c'> <d bf>8. <f a>16 <e g>8. <ef a>16 | <d bf>2 b8\rest %\break
  
  <d bf>8^\markup "(후렴)" <c a>8. <d bf>16 | <ef c'>2^(_( q8^)_) q <d bf>8. <ef c'>16 | <f d'>2^(_( q8^)_) %\break
  <f d'>8 <f c'>8. <f d'>16 | <ef ef'>4^> <f d'>^> <g c'>^> <g bf>^> | d'2^( c'8)\fermata f <e g>8. <ef a>16 | %\break
  <d bf>4. q8 <g c'>4 <g d'> | f' ef'^( 8) s8 <g d'>^> <g c'>^> | <f bf>4 q <f a> <f c'> | <f bf>2. \bar "|." 
}

alto = \fixed c' {
  \global
  f4 | bf4 4 8. f16 d8. ef16 | f2. 4 | s1 | s2.
  f4 | bf4 4 8. f16 d8. ef16 | f2. 4 | s1 | s2 s8
  
  s4. | s1 | s2 s8  
  s4. | s1 | f8. 16 8. 16 8 8 s4 |
  s1  | g4_( g g8) <g ef'>8^> s4 | s1 | s2.
}

tenor = \fixed c {
  \global
  f4 | bf4 4 8. f16 d8. ef16 | f2. s4 | s1 | s2. 
  f4 | bf4 4 8. f16 d8. ef16 | f2. s4 | s2 f8. s16 s4 | s2 s8
  
  s4. | s1 |s8 s2
  bf8 s8. bf16 | s1 | s1 |
  s1 | s1 | s1 | s2.
}

bass = \fixed c {
  \global
  f4 | bf4 4 8. f16 d8. ef16 | f2. <d bf>4 | <ef bf> <ef g> <c g>8. q16 <c c'>8. <c bf>16 | <f a>2.
  f4 | bf4 4 8. f16 d8. ef16 | f2. <d bf>4 | <ef bf> <ef g> f8. <f c'>16 <f bf>8. <f c'>16 | <bf, bf>2 e8\rest
  
  e8\rest e4\rest | d8\rest <f a>8 q8. q16 q8 d8\rest d4\rest | d8\rest <bf, bf>8 q8. q16 q8
  bf8 <a c'>8. af16 | <g bf>4 <f bf> <ef bf> <e bf> | <f bf>2^(_( <f a>8^)_)\fermata q <f bf>8. <f c'>16 | 
  <g bf>4. q8 <ef g>4 <d b> | <c c'> q4(_( q8^)_) q <d b> <ef c'> | <f d'>4 q4 <f c'> <f ef'> | <bf, bf>2.
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  온 세 상 방 방 곡 곡 에 하 나 님 말 씀 열 렸 네
  그 말 씀 바 람 을 타 고 은 혜 로 가 득 채 우 네
  주 의 말 씀 세 상 의 빛
  온 누 리 두 루 비 칠 때(두 루 비 칠 때) 이 빛 을
  받 는 자 들 마 다 하 나 님 자 녀 가 되 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  그 말 씀 가 는 곳 마 다 찬 란 한 햇 빛 되 어 서
  죄 악 에 죽 을 인 생 들 다 씻 어 정 케 하 시 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  그 말 씀 바 라 볼 때 에 하 나 님 사 랑 보 이 네
  아 담 에 속 한 자 들 을 값 없 이 놓 아 주 시 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  짐 진 자 쉬 게 하 시 며 우 는 자 위 로 하 시 고
  연 약 자 힘 을 주 시 며 영 원 한 생 명 주 시 네
}

verseExtra = \lyricmode {
  주 의 말 씀
  세 상 의 빛
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
        %\override LyricText.font-name = "GungsuhChe"
        \override LyricText.font-series = #'bold
      }
    }
    \midi {
      \tempo 4 = 90
    }
  }
}

