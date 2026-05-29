\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주께 더욱 더 가까이"
engTitle = "Just a Closer to Walk with Thee"
hymnNumber = "760"
poet = "Anonymous"
composer = "Arr. for John T. Benson"
bibleInfo = "빌 4:1"
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
  <e g>4. <e gs>8 <e a> <c e> <e g> <ef gf> |
  <d f>1 \breathe |
  <f d'>4. q8 <f b> g <f a> <f b>| %\break
  
  <f a>8^(_( <e g>4.^)_)^(_( q2^)_) \breathe |
  s4. s4 <e c'>8 <f d'> s8 |
  <f d'>8^(_( <f c'>4.^)_)^(_( q4^)_) \breathe q8 <f a> |
  <e g>4 q8^(_( q^)_) %\break
  
  g4 <f a>8^(_( g^)_) |
  <f a>8^( c'4.)^( 2) \breathe \bar "||" | \break
  <e g>4.^\markup "(후렴)" <e gs>8 <e a> <c e> <e g> <ef gf> |
  <d f>1 \breathe | %\break 
  
  <f d'>4. q8 <f b> g <f a> <f b> |
  <f a>8^(_( <e g>4.^)_)^(_( q2^)_) \breathe |
  s4. s4 <e c'>8 <f d'> s | %\break
  
  <f d'>8^(_( <f c'>4.^)_)^(_( q4^)_) \breathe q8 <f a> |
  <e g>4 q g <f a>8 g |
  a8( c'4.)( <e c'>2) \bar "|." |
}

aligner = \fixed c' {
  \global
  <e g>4. <e gs>8 <e a> <c e> <e g> <ef gf> |
  <d f>4. f4. s4 |
  <f d'>4. q8 <f b> g <f a> <f b>|   
  
  <f a>4. <e g>4. s4 |
  g4. 8 8 <e c'>8 <f d'> g8 |
  <f d'>8^(_( <f c'>4.^)_)^(_( q4^)_) q8 <f a> |
  <e g>4 q8^(_( q^)_) 
  
  g4 <f a>8^(_( g^)_) |
  <f a>8^( c'8) f8 f8 e2 |
  <e g>4. <e gs>8 <e a> <c e> <e g> <ef gf> |
  <d f>4. d4. s4 |  
  
  <f d'>4. q8 <f b> g <f a> <f b> |
  <f a>4. <e g>4. s4 |
  g4. 8 8  <e c'>8 <f d'> g |
  
  <f d'>8 <f c'>4 q4. q8 <f a> |
  <e g>4 q g <f a>8 g |
  a8 c'8 f f <e c'>2  |
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 |
  s1 | <g e'>4. q8 q s4 q8 | s1 | s2
  f4 s8 f8 | f8( e) f f e2 | s1 | s1 |
  s4. s4 f8 s4 | s1 | <g e'>4. q8 q s4 <g e'>8 |
  s1 | s2 f4 s8 f8 | f( e) f f s2 |
}

tenor = \fixed c {
  \global
  s1 | b1 \breathe | s1 |
  c'8( 4.)( 2) \breathe | s1 | a8( 4.)( 4) \breathe s4 | s2
  s2 | s1 | s1 | b1 \breathe |
  s1 | c'8( 4.)( 2) \breathe | s1 |
  a8( 4.)( 4) \breathe s4 | s1 | s1 |
}

bass = \fixed c {
  \global
  <c c'>4. q8 q <c g> <c c'> <c a> |
  g4 d8 b, g,2 |
  <g b>4. q8 <g d'> <g b> <g d'> q |
 
  c4 e8 g c2 |
  <c c'>4. q8 q <e c'> <d b> <c bf> |
  f4 a,8 c f4 <f a>8 <f c'> |
  <g c'>4 q8 q 
  
  <g d'>4 q8^(_( <g b>^)_) |
  <c c'>^(_( <c g>^)_) <f a> q <c g>2 \breathe \bar "||" |
  <c c'>4. q8 q <c g> <c c'> <c a> |
  g4 d8 b, g,2 
  
  <g b>4. q8 <g d'> <g b> <g d'> q |
  c4 e8 g c2 |
  <c c'>4. q8 q <e c'> <d b> <c bf> |
  
  f8 8 a, c f4 <f a>8 <f c'> |
  <g c'>4 q <g d'> q8 <g b> |
  <c c'>^(_( <c g>^)_) <f a> q <c g>2 \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 는 연 약 하 오 나 (약하나)
  주 의 권 능 크 시 니 (크시니)
  모 든 환 난 시 험 을
  물 리 쳐 주 옵 소 서 (물 리 쳐)
}

verseTwo = \lyricmode {
  \set stanza = "2."
  세 상 유 혹 당 할 때 (당할때)
  자 주 넘 어 지 오 니 (넘어져)
  주 님 외 에 그 누 가 
  내 짐 대 신 지 실 까 (지 녔 네)
  
  주 께 더 욱 가 까 이 (가까이)
  동 행 하 게 합 소 서 (합소서)
  아 무 때 나 어 디 든 지 (어디나)
  주 께 붙 어 있 기 원 하 네 (원 하 네)
}

verseThree = \lyricmode {
  \set stanza = "3."
  아 침 안 개 와 같 이 (안--개)
  나 의 생 명 걷 힐 때 (걷힐때)
  주 의 인 도 함 받 아
  하 늘 나 라 가 겠 네 (가 겠 네)
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
      \tempo 4 = 100
    }
  }
}

