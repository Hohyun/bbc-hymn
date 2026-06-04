\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "할 준비 됐느뇨"
engTitle = "Ready"
hymnNumber = "765"
poet = "A. C. Palmer, 1845~1922"
composer = "Charlie D. Tillman, 1861~1943"
bibleInfo = "마 9:37-38"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 9/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

soprano = \fixed c' {
  \global
  <f a>8 q q |
  q4. <c f> <f c'>8 q q |
  q4.^(_( q^)_) \breathe <e c'>8 <e g> <e a> |
  \time 6/8 <e bf>4. <e c'> |
  \time 9/8 <f a>4.^(_( q4^)_) b8\rest \break  
  
  <f a>8 q q |
  q4. <c f> <f c'>8 q q | |
  q4.^(_( q^)_) \breathe <e c'>8 <e g> <e a> |
  \time 6/8 <e bf>4. <c e> |
  \time 9/8 <c f>4.^(_( q4^)_) b8\rest \break
  
  s4. |
  s2. s4. |
  s2. \breathe <g c'>8 <e g> <f a> |
  \time 6/8 <g bf>4. <e c'> |
  \time 9/8 <f a>4.^(_( q4^)_) b8\rest \breathe \break
  
  <f d'>8 q q |
  q4. <f bf> <f c'>8 q q |
  q4.^(_( q^)_) \breathe <e c'>8 <e g> <f a> |
  \time 6/8 <e bf>4. <c e> |
  \time 9/8 <c f>4.^(_( q4^)_) b8\rest \bar "|."
}

aligner = \fixed c' {
  \global
  <f a>8 q q |
  q4. <c f> <f c'>8 q q |
  q4.^(_( q^)_) <e c'>8 <e g> <e a> |
  \time 6/8 <e bf>4. <e c'> |
  \time 9/8 <f a>4.^(_( q4^)_) b8\rest   
  
  <f a>8 q q |
  q4. <c f> <f c'>8 q q | |
  q4.^(_( q^)_) <e c'>8 <e g> <e a> |
  \time 6/8 <e bf>4. <c e> |
  \time 9/8 <c f>4.^(_( q4^)_) b8\rest 
  
  <bf d'>8 q q 
  q4.^(_( q^)_) <a c'>8 q q |
  q4.^(_( q^)_) <g c'>8 <e g> <f a> |
  \time 6/8 <g bf>4. <e c'> |
  \time 9/8 <f a>4.^(_( q4^)_) b8\rest 
  
  <f d'>8 q q |
  q4. <f bf> <f c'>8 q q |
  q4.^(_( q^)_) <e c'>8 <e g> <f a> |
  \time 6/8 <e bf>4. <c e> |
  \time 9/8 <c f>4.^(_( q4^)_) b8\rest 
}

alto = \fixed c' {
  \global
  s4. | s2. s4. | s2. s4. | s2. | s2.
  s4. | s2. s4. | s2. s4. | s2. | s2.
  <bf d'>8 q q | q4.^(_( q^)_) <a c'>8 q q | q4.^(_( q^)_)  s4. | s2. | s2.
  s4. | s2. s4. | s2. s4. | s2. | s2.
}

tenor = \fixed c {
  \global
  s4. | s2. s4. | s2. s4. | s4. g4( c'8) | s2.
  s4. | s2. s4. | s2. s4. | s2. | s2.
  s4. | s2. s4. | s2. s4. | s4. g4( c'8) | s2.
  s4. | s2. s4. | s2. s4. | s2. | s2.
}

bass = \fixed c {
  \global
  <f c'>8 q q |
  q4. <f a> q8 q q |
  q4.^(_( q^)_) \breathe <c g>8 <c c'> q |
  <c g>4. c4. |
  <f c'>4.^(_( q4^)_) f8\rest 
  
  q8 q q |
  q4. <f a> q8 q q |
  q4.^(_( q^)_) \breathe <c g>8 <c bf> <c a> |
  <c g>4. <c bf> |
  <f a>4.^(_( q4^)_) d8\rest
  
  <bf, bf f'>8 q q |
  q4.^(_( <d bf f'>^)_) <f f'>8 q q |
  q4.^(_( q^)_) \breathe <c e'>8 <c c'> q |
  <c c'>4. c |
  <f c'>4.^(_( 4^)_) d8\rest \breathe
  
  <bf, bf>8 q q |
  q4. <d bf> <f a>8 q q |
  q4.^(_( q^)_) \breathe <c g>8 <c bf> <c a> |
  <c g>4. <c bf> |
  <f a>4.^(_( q4^)_) d8\rest
}

verseOne = \lyricmode {
  \set stanza = "1."
  괴 로 울 때 나 슬 플 때 나
  혹 시 험 당 할 때
  집 에 있 으 나 박 에 서 나
  준 비 가 됐 느 뇨
  
  아 무 때 나 어 디 든 지
  주 님 이 부 를 때
  주 의 일 이 면 귀 천 없 이
  할 준 비 됐 느 뇨
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 님 이 가 라 명 하 실 때
  주 저 하 지 않 고
  주 님 이 갈 길 밝 히 실 때
  갈 준 비 됐 느 뇨
}

verseThree = \lyricmode {
  \set stanza = "3."
  말 씀 전 할 때 묵 상 할 때 
  주 말 씀 따 라 서
  주 님 이 불 러 세 우 실 때
  순 종 하 겠 느 뇨
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 말 씀 따 라 잃 은 영 혼
  긍 휼 히 여 기 며
  어 디 서 든 지 주 님 맞 을
  준 비 가 됐 느 뇨
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

