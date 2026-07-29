\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "아멘 형제 아멘 자매"
engTitle = "Amen Brother, Amen"
hymnNumber = "762"
poet = "Harold A. Keene"
composer = "Harold A. Keene"
bibleInfo = "마 12:46-50"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <c e>4 <c e g> q q |
  <f a> <f a c'> q <f a> |
  <c e g> q a8 g <c e>4 |
  f'4\rest \tiny b8[ b] a4 g \normalsize | \break
  
  <c e>4 <c e g> q q |
  <f a> <f a c'> q <f a> |
  <c e g> <e g c'> <b, d b>8 <c e c'> <d f d'>4 |
  <e g c'>2. b4\rest | \break
  
  <c e>4^\markup "(후렴)" <c e g> q8 q^(_( q4^)_) |
  <f a>4 <f a c'> q8 <f a>^(_( q4^)_) |
  <c e> <c e g> a8 g <c e>4 |
  f'4\rest \tiny b8[ 8] a4 \normalsize 
  
  <d g>4 | \break
  <c e>4 <c e g> q q |
  <f a> <f a c'> q <f a> |
  <c e g>4 <e g c'> <b, d b>8 <c e d'> <d f d'>4 |
  <e g c'>2. b4\rest \bar "|." | 
}

aligner = \fixed c' {
  \global
  <c e>4 <c e g> q q |
  <f a> <f a c'> q <f a> |
  <c e g> q a8 g <c e>4 |
  d2. s4 | 
  
  <c e>4 <c e g> q q |
  <f a> <f a c'> q <f a> |
  <c e g> <e g c'> <b, d b>8 <c e c'> <d f d'>4 |
  <e g c'>2. b4\rest |
  
  <c e>4 <c e g> q8 q^(_( q4^)_) |
  <f a>4 <f a c'> q8 <f a>^(_( q4^)_) |
  <c e> <c e g> a8 g <c e>4 |
  d2. 
  
  <d g>4 |
  <c e>4 <c e g> q q |
  <f a> <f a c'> q <f a> |
  <c e g>4 <e g c'> <b, d b>8 <c e d'> <d f d'>4 |
  <e g c'>2. b4\rest
}

alto = \fixed c' {
  \global
  s1 | s1 | s2 <c e>4 s4 | d2.( 4) |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s2 <c e>4 s4 | d2. 
  s4 | s1 | s1 | s1 | s1 |
  
}

tenor = \fixed c {
  \global
  c2 c | f, f, | c c | e4\rest g, a, b, |
  c2 c | f, f, | c g, | c g,4^> c^> |
  c2 c | f, f, | c c | e4\rest g,4 a, 
  b,4 | c2 c | f, f, | c g, | c g,4^> c^> \bar "|." |
}

bass = \fixed c {
  \global
  s1 | s1 | s1 | g,2. s4 |
  s1 | s1 | s1 | s1 |
  
  s1 | s1 | s1 | g,2.
  s4 | s1 | s1 | s1 | s1 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  예 수 님 은 변 함 없 네
  아 멘 형 제 아 멘
  길 과 진 리 생 명 일 세 
  아 멘 자 매 아 멘
  
  아 멘 형 제 아 멘 자 매 
  아 멘 우 리 모 두
  내 구 주 예 수 살 아 있 네
  아 멘 우 리 모 두
}

verseTwo = \lyricmode {
  \set stanza = "2."
  용 서 하 심 한 량 없 네
  아 멘 형 제 아 멘
  주 님 안 에 평 안 있 네
  아 멘 자 매 아 멘
}

verseThree = \lyricmode {
  \set stanza = "3."
  귀 한 주 님 영 접 하 라
  아 멘 형 제 아 멘
  네 게 기 쁨 주 시 겠 네
  아 멘 자 매 아 멘
}

verseFour = \lyricmode {
  \set stanza = "4."
  어 느 때 나 주 님 일 세
  아 멘 형 제 아 멘
  구 의 능 력 힘 입 으 세
  아 멘 자 매 아 멘
}

verseFive = \lyricmode {
  \set stanza = "5."
  주 의 구 원 온 전 하 네
  아 멘 형 제 아 멘
  내 게 저 주 다 시 없 네
  아 멘 자 매 아 멘
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
        \context Lyrics = "LyrFive" \lyricsto "aligner" { \verseFive }
    
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

