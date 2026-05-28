\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "최후 심판의 날 더 다가오네"
engTitle = "There's a Great Day Coming"
hymnNumber = "752"
poet = "Will. L. Thompson, 1847~1909"
composer = "Will. L. Thompson, 1847~1909"
bibleInfo = "롬 2:16"
oneOrTwo = #2  % odd page: 1, even page: 2

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
  <b, d>8 q |
  <b, g>4 q q16 q8. b8\rest q8 |
  <d b>4 q <c a>16 <b, g>8. \breathe <c e>8 <b, d> | %\break
  
  <b, g>4 q <d g>8 q <d a> <d b> |
  <d a>2. \breathe <d g>8 <d a> |
  <d b>4 q8 q q <d d'> q <d b> | %\break
  
  <e a>8 <e g> q <c e> <b, d>4 \breathe <b, d>8 q |
  <d g> q q q <c a>4 q | 
  <b, g>2. b4\rest | %\break
  
  \stemDown <g d'>4.^\markup "(후렴)" q8 <g e'> <g d'> b4\rest | \stemUp
  <g b>4. q8 <g c'> <g b> b4\rest |
  <d g>4. q8 <b, g> q <d g> q |
  <cs b>4 <cs a> <d a>2 \breathe | %\break
  
  \stemDown <g d'>4. q8 <g e'> <g d'> b4\rest | \stemUp
  <g b>4. q8 <g c'> <g b> b4\rest |
  <d g>4. q8 <c a>4 q |
  <b, g>2. \bar "|." 
}

aligner = \soprano

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
  <g, g>8 q |
  q4 q q16 q8. d8\rest q8 |
  g4 4 16 8. \breathe 8 8 |
  
  <g, g>4 q s4 <a, fs>8 <g, g> |
  s1 |
  g4 8 8 8 s4 g8 |
  
  s2 <g, g>4 \breathe q8 q |
  s1 |
  <g, g>2. d4\rest |
  
  s1 | 
  s1 | 
  s2 <g, g>8 q s4 | 
  <a, g>4 <a, e> s2 |
  
  s1 |
  s1 |
  s1 |
  <g, g>2.
}

bass = \fixed c {
  \global
  s4 | s1 | g4 4 16 8. 8 8  |
  
  s2 <b, g>8 q s4 | 
  <d fs>2. \breathe <b, g>8 <d fs> |
  g4 8 8 8 <g b> q g8 |
  
  <c c'>8 q q <c g> s2 |
  <b, g>8 q q q <d fs>4 q |
  s1 |
  
  <g b>4. q8 <g c'> <g b> d4\rest |
  <g d'>4. q8 <g e'> <g d'> d4\rest |
  <b, g>4. q8 s4 q8 q |
  s2 <d fs>2 \breathe |
  
  <g b>4. q8 <g c'> <g b> d4\rest |
  <g d'>4. q8 <g e'> <g d'> d4\rest |
  <b, g>4. q8 <d fs>4 q |
  s2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  최 후 심 판 의 날 더 다 가 오 네
  최 후 심 판 날 이 오 며 는 
  모 든 의 로 운 자 들 과 
  또 불 의 한 자 들 모 두
  심 판 날 에 서 리 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  보 라 승 리 의 날 더 다 가 오 네
  보 라 승 리 의 날 오 며 는
  우 리 주 예 수 믿 고 또 한
  사 랑 한 성 도 영 원 토 록 
  기 뻐 하 리 라 
  
  심 판 날 에 심 판 날 에
  심 판 받 을 준 비 됐 느 냐
  심 판 날 에 심 판 받 을
  준 비 됐 느 냐
}

verseThree = \lyricmode {
  \set stanza = "3."
  보 라 슬 퍼 할 날 더 다 가 오 네
  보 라 슬 퍼 할 날 오 며 는
  예 수 님 이 르 시 되
  너 희 불 법 한 자 들 
  내 가 너 를 알 지 못 한 다
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

