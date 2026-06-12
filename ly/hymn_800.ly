\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "훗날에"
engTitle = ""
hymnNumber = "800"
poet = "N. B. Vandall, 1896~"
composer = "N. B. Vandall, 1896~"
bibleInfo = "살전 4:16-17"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  % L1
  <\tweak font-size #-3 b, \tweak font-size #-3 d \tweak font-size #-3 g b>4 q q
  <\tweak font-size #-3 b, \tweak font-size #-3 ds \tweak font-size #-3 a b>4 q q |
  
  <\tweak font-size #-3 d \tweak font-size #-3 e \tweak font-size #-3 gs b>4 
  <\tweak font-size #-3 d \tweak font-size #-3 e \tweak font-size #-3 gs c'>4.
  <\tweak font-size #-3 d \tweak font-size #-3 e \tweak font-size #-3 gs b>8
  <\tweak font-size #-3 c \tweak font-size #-3 e a>2. \breathe |
  
  <\tweak font-size #-3 c \tweak font-size #-3 d \tweak font-size #-3 fs a>4 q q q
  <\tweak font-size #-3 c \tweak font-size #-3 d g>4
  <\tweak font-size #-3 c \tweak font-size #-3 d fs>4 |
  
  <\tweak font-size #-3 b, \tweak font-size #-3 d g>2.^(_( q^)_) \breathe | \break
  
  % L2
  <\tweak font-size #-3 b, \tweak font-size #-3 d \tweak font-size #-3 g b>4 q q
  <\tweak font-size #-3 b, \tweak font-size #-3 ds \tweak font-size #-3 a b>4 q q |
  
  <\tweak font-size #-3 d \tweak font-size #-3 e \tweak font-size #-3 gs b>4 
  <\tweak font-size #-3 d \tweak font-size #-3 e \tweak font-size #-3 gs c'>4.
  <\tweak font-size #-3 d \tweak font-size #-3 e \tweak font-size #-3 gs b>8
  <\tweak font-size #-3 c \tweak font-size #-3 e a>2. \breathe |
  
  <\tweak font-size #-3 cs \tweak font-size #-3 e \tweak font-size #-3 g a>4 q q   
  <\tweak font-size #-3 a, \tweak font-size #-3 cs e>4
  <\tweak font-size #-3 a, \tweak font-size #-3 cs fs>4
  <\tweak font-size #-3 a, \tweak font-size #-3 cs g>4 |
  
  <\tweak font-size #-3 c \tweak font-size #-3 d \tweak font-size #-3 fs a>2.^(_( q^)_) \breathe | \break
  
  % L3
  <d \tweak font-size #-3 g \tweak font-size #-3 b d'>4^\markup "(후렴)"
  <e \tweak font-size #-3 g cs'>4
  <fs \tweak font-size #-3 a c'>4
  <\tweak font-size #-3 d g b>4
  <\tweak font-size #-3 fs a c'>4
  <\tweak font-size #-3 e as cs'>4 |
  
  <\tweak font-size #-3 d \tweak font-size #-3 g b d'>2.^(_( q^)_) \breathe |
  
  <\tweak font-size #-3 cs \tweak font-size #-3 e \tweak font-size #-3 g b>4
  <\tweak font-size #-3 cs \tweak font-size #-3 e a>
  <\tweak font-size #-3 cs e>4
  <\tweak font-size #-3 cs \tweak font-size #-3 e \tweak font-size #-3 g a>2
  <\tweak font-size #-3 cs \tweak font-size #-3 e \tweak font-size #-3 g b>4 |
  
  <\tweak font-size #-3 cs \tweak font-size #-3 d \tweak font-size #-3 fs a>2.^(_( q2^)_) 
  \breathe <\tweak font-size #-3 fs \tweak font-size #-3 a d'>8 q | \break
  
  % L4
  <\tweak font-size #-3 fs \tweak font-size #-3 a d'>4 
  <\tweak font-size #-3 g \tweak font-size #-3 a cs'> 
  <\tweak font-size #-3 d \tweak font-size #-3 fs c'>
  <\tweak font-size #-3 d \tweak font-size #-3 g b>2 \breathe
  q8 q |
  
  q4
  <\tweak font-size #-3 fs \tweak font-size #-3 a c'>
  <\tweak font-size #-3 g \tweak font-size #-3 b d'>
  <c \tweak font-size #-3 e \tweak font-size #-3 g c'>2. \breathe |
  
  <c \tweak font-size #-3 e a>4
  <\tweak font-size #-3 d \tweak font-size #-3 e gs>
  <\tweak font-size #-3 c \tweak font-size #-3 e a>
  <\tweak font-size #-3 g \tweak font-size #-3 a \tweak font-size #-3 c' e'>2
  <\tweak font-size #-3 c fs fs'>4 |
  
  <\tweak font-size #-3 b, \tweak font-size #-3 d g \tweak font-size #-3 g'>2.^(_( q^)_) \bar "|." |
  
}

aligner = \soprano

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
  <g, g>2. <fs, fs>2 q8[ <f, f>] | 
  <e, e>2 s1 \breathe | 
  <d, d>2. q4 <e, e> <fs, fs> |
  <g, g>2.^(_( q^)_) \breathe |
  
  <g, g>2. <fs, fs> |
  <e, e>2. s |
  s2. s4 <a, fs> <a, e> |
  <d, d>2.^(_( q^)_) \breathe
  
  <d, d>4 <e, e> <fs, fs> <g, g> <fs, fs> <e, e> |
  <g, g>2.^(_( q^)_) \breathe |
  s1. |
  <d, d>2.^(_( q2^)_) \breathe q8 q |
  
  <d, d>4 <e, e> <fs, fs> <g, e>2. \breathe |
  <g, g>4 <a, fs> <b, f> <c e>2. \breathe |
  s2. s2 <d, d>4 |
  <g, g>2.^(_( q^)_) |
  
}

bass = \fixed c {
  \global
  s1. | s2 <e gs>4 <a, a>2. \breathe | s1. | s1. |
  s1. | s2. <a, a> \breathe | <a, g> q4 s2 | s1. |
  s1. | s1. | <a, a>2. q | s1. |
  
  s1. | 
  s1. | 
  <a, a>4 <b, gs> <c g> <a, a>2 s4 | 
  s1. |
}

verseOne = \lyricmode {
  \set stanza = "1."
  이 세 상 수 고 를 다 마 친 후
  고 통 이 다 지 날 때
  눈 물 과 슬 픔 다 사 라 지 고
  예 수 님 만 나 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  답 답 한 한 숨 이 다 지 나 고
  추 운 날 다 지 날 때
  환 란 과 시 련 이 물 러 가 고
  예 수 님 만 나 겠 네

  인 자 한 주 의 얼 굴 
  나 친 히 뵈 오 리
  영 광 보 좌 에 서 맞 아 주 실
  주 와 영 원 히 살 리 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  어 둠 의 그 늘 이 다 걷 히 고
  찬 란 한 아 침 올 때
  주 님 의 음 성 에 놀 라 깨 어
  예 수 님 만 나 겠 네
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

