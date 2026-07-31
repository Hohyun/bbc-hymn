\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 내게 사시세"
engTitle = "Christ Lives In Me"
hymnNumber = "759"
poet = "Daniel W. Whittle, 1840~1901"
composer = "James McGranahan, 1840~1907"
bibleInfo = "계 3:20"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  c4 |
  <f a>2 <e g>4 <d f>2 <c f>4 |
  <d f>^(_( <c e>^)_) <bf, d> <a, c>2 \breathe q4 |
  <bf, d>2 <d f>4 <d bf>2 <f d'>4 |
  <f c'>2.^(_( q2^)_) \break
  
  <c bf>4 | 
  <c a>2 q4 a( g) a |
  <ef c'>2 <d bf>4 <d f>2 \breathe g4 |
  <f a>2 q4 <e g> c <e g> |
  <c f>2.^(_( q2^)_) b4\rest \break |
  
  <f a>2.^\markup "(후렴)" \stemDown <a c'>4 \stemUp <g bf> <f a> |
  <e g>2.^(_( q2^)_) b4\rest |
  <d f>2. <f a>4 <e g> <d f> |
  <cs e>2.^(_( q2^)_) b4\rest | \break
  
  d2. <d f>4 <d bf> <f d'> |
  <f c'>2 <e a>4 <d f>2 g4 |
  <f a>2. <e g>4 c <e g> |
  <c f>2.^(_( q2^)_) \bar "|." 
}

aligner = \soprano

alignerb = \fixed c' {
  \global
  s4 | s2. s2. | s2. s2. | s2. s2. | s2. s2
  s4 | s2. s2. | s2. s2. | s2. s2. | s2. s2. |
  s2. s2. | c2. 4 4 4 | d2. 2 r4 | a2. 4 4 g | 
  f2. s2. | s2. s2. | s2. s2. | s2. s2
}

alto = \fixed c' {
  \global
  c4 | s2. s2. | s2. s2. | s2. s2. | s2. s2
  s4 | s2. c2 c8[ef] | s2. s2 f4 | s1 c4 s4 | s2. s2. |
  s2. s2. | s2. s2. | s2. s2. | s2. s2. | 
  d2. s2. | s2. s2 f4 | s2. s4 c s4 | s2. s2
}

tenor = \fixed c {
  \global
  s4 | s2. s2 <a, f>4 | s2. <f, f>2 \breathe q4 | s2. s2. | s2. s2
  s4 | f2 4 4 s4 f4 | s2. s2. | s2. s2. | s2. s2. |
  f,2. s2. | s2. s2. | s2. s2. | s2. s2. | 
  s2. s2. | s2. s2. | s2. s2. | s2. s2
}

bass = \fixed c {
  \global
  <f a>4 |
  <f c'>2 <c bf>4 <d a>2 s4 |
  <bf, f>2 q4 s2. |
  <bf, f>2 q4 q2 <bf, bf>4 |
  <f a>2.^(_( q2^)_) 
  
  <e g>4 |
  f2 4 4^(_( <e g>^)_) f |
  <bf, f>2 q4 <bf, bf>2 \breathe <bf, d'>4 |
  <c c'>2 q4 <c bf> q q |
  <f a>2.^(_( q2^)_) d4\rest |
  
  s2. f | <c c'>2. q4 q <c bf> |
  <d a>2. q2 d4\rest |
  <a, a>2. q4 q <a, g> |
  
  <bf, f>2^(_( q4^)_) <bf, bf> q <b, gs> |
  <c a>2 <cs a>4 <d a>2 <df bf>4 |
  <c c'>2. <c bf>4 q q |
  <f a>2.^(_( q2^)_) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 하 나 님 을 떠 나 서 끝 없 이 헤 맬 때
  주 빛 을 바 라 본 후 에 주 내 안 에 사 시 네
  
  주 내 맘 속 에 살 아 계 시 네
  큰 구 원 을 받 았 네 주 내 게 사 시 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 말 씀 빛 이 비 친 후 공 어 둠 다 가 고
  생 명 을 도 로 찾 으 니 주 내 안 에 사 시 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  저 씨 앗 속 에 생 명 이 들 어 있 음 같 이
  하 나 님 영 이 내 맘 속 에 들 어 와 계 시 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 예 수 님 을 닮 고 자 나 심 히 원 하 네
  주 성 령 내 게 임 하 사 주 내 안 에 사 시 네
}

verseExtra = \lyricmode {
  내 맘 속 에
  살 아 살 아 계 시 네
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
      \tempo 4 = 120
    }
  }
}

