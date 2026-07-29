\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주와 사귐 있나"
engTitle = "Is Thy Heart Right With God"
hymnNumber = "797"
poet = "Elisha A. Hofeman, 1839~1929"
composer = "Elisha A. Hofeman, 1839~1929"
bibleInfo = "요일 1:6-7"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \numericTimeSignature
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>8 q q <bf, d> <c ef> <d f> |
  <ef g> q q <g bf>4. \breathe |
  <f d'>8 q <d bf> <ef c'>4 <f d'>8 |
  <d bf>4.^(_( q4^)_) b8\rest | \break
  
  <d f>8 q q <bf, d> <c ef> <d f> |
  <ef g> q q <g bf>4. \breathe |
  <f d'>8 q <d bf> <ef c'>4 <f d'>8 |
  <d bf>4.^(_( q4^)_) b8\rest | \break
  
  <d f>8^\markup "(후렴)" q q <ef g>4 q8|
  <d f>4.^(_( q4^)_) b8\rest \breathe |
  <d bf>8 q q <f d'>4 <f bf>8 |
  <f c'>4.^(_( q4^)_) b8\rest \breathe | \break
  
  <f d'>8 q q <f bf> q b8\rest |
  <ef g> q q <d f> q b8\rest \breathe |
  <d bf> q q <ef c'>4 q8 |
  bf4.( 4) b8\rest \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | d4 ef8 d4 s8 |
}

tenor = \fixed c {
  \global
  s2. | s2. | s4. f4 8 | <bf, f>4.^(_( q4^)_) d8\rest \breathe |
  s2. | s2. | s4. f4 8 | <bf, f>4.^(_( q4^)_) d8\rest \breathe |
  
  s2. | s2. | s4. bf4 s8 | s2. |
  s2. | s2. | s4. f4 8 | f4 g8 f4 s8 |
}

bass = \fixed c {
  \global
  <bf, bf>8 q q <bf, f> q <bf, bf> |
  <ef bf> q q q4. \breathe |
  <f bf>8 q q f4 8 |
  s2. |
  
  <bf, bf>8 q q <bf, f> q <bf, bf> |
  <ef bf> q q q4. \breathe |
  <f bf>8 q q f4 8 |
  s2. |
  
  <bf, bf>8 q q <ef bf>4 q8 |
  <bf, bf>4.^(_( q4^)_) d8\rest \breathe |
  <bf, f>8 q q bf4 <d bf>8 |
  <f a>4.^(_( q4^)_) d8\rest \breathe |
  
  <bf, bf>8 q q q q d8\rest |
  <ef bf> q q <bf, bf> q d8\rest \breathe |
  <bf, f> q q f4 8 |
  bf,4. 4 d8\rest
}

verseOne = \lyricmode {
  \set stanza = "1."
  네 정 욕 십 자 가 못 박 았 나
  주 와 사 귐 있 나
  네 일 생 주 앞 에 다 맡 겼 나
  주 와 사 귐 있 나

  주 와 사 귐 있 나
  주 와 사 귐 있 나
  주 님 의 피 로 온 전 케 됐 나
  주 와 사 귐 있 나  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  네 죄 의 속 박 을 벗 어 났 나
  주 와 사 귐 있 나
  안 과 밖 모 두 가 깨 끗 한 가
  주 와 사 귐 있 나  
}

verseThree = \lyricmode {
  \set stanza = "3."
  다 시 는 정 죄 함 없 어 졌 나
  주 와 사 귐 있 나
  네 안 에 주 님 이 거 하 시 나
  주 와 사 귐 있 나  
}

verseFour = \lyricmode {
  \set stanza = "4."
  밝 은 빛 가 운 데 행 하 는 가
  주 와 사 귐 있 나
  네 영 혼 흰 옷 을 입 고 있 나
  주 와 사 귐 있 나  
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

