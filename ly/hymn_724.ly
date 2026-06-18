\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "단번에 이루어 놓으셨네"
engTitle = "Once for All"
hymnNumber = "724"
poet = "Philip P. Bliss, 1838~1876"
composer = "Philip P. Bliss, 1838~1876"
bibleInfo = "히 10:10-13"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key d \major
  \time 9/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

soprano = \fixed c' {
  \global
  d8 <d fs> <d b> |
  <d a>4. <d fs> q8 e d |
  <d fs>4. <cs e> \breathe <cs e>8 <bs, ds> <cs e> |
  <e g>4. %\break
  
  <g b>4. q8 <fs a> <e g> |
  q4. <d fs> \breathe d8 <d fs> <fs a> |
  <fs d'>4. <fs a> q8 <e g> <d fs> |
  <d b>4. q \breathe %\break
  
  <d b>8 <d g> <g b> |
  <fs a>4. <d fs> <cs fs>4 <cs e>8 |
  d4.^( 4.) \breathe \bar "||" \break a8[^\markup "(후렴)" b] <g cs'> |
  <fs d'>4 q8 q4. q8 <a cs'> <g b> | %\break
  
  <g b>4 q8 <fs a>4. \breathe fs8[ b] <g cs'> |
  <fs d'>4. q q8 <e cs'> <d b> |
  <d b>4. <cs a> \breathe d8 <d fs> <d b> | %\break
  
  <d a>4. <d fs> q8 e d |
  <d b>4.^(_( q^)_) \breathe q8 <d g> <d b> |
  <d a>4. <d fs> <cs fs>4 <cs e>8 |
  d4.^( 4.) \bar "|."
}

aligner = \fixed c' {
  \global
  d8 <d fs> <d b> |
  <d a>4. <d fs> q8 e d |
  <d fs>4. <cs e> \breathe <cs e>8 <bs, ds> <cs e> |
  <e g>4. %\break
  
  <g b>4. q8 <fs a> <e g> |
  q4. <d fs> \breathe d8 <d fs> <fs a> |
  <fs d'>4. <fs a> q8 <e g> <d fs> |
  <d b>4. q \breathe %\break
  
  <d b>8 <d g> <g b> |
  <fs a>4. <d fs> <cs fs>4 <cs e>8 |
  d4.^( 4.) \breathe \bar "||" a8  b <g cs'> |
  <fs d'>4 q8 q4. q8 <a cs'> <g b> | %\break
  
  <g b>4 q8 <fs a>4. \breathe fs8 b <g cs'> |
  <fs d'>4. q q8 <e cs'> <d b> |
  <d b>4. <cs a> \breathe d8 <d fs> <d b> | %\break
  
  <d a>4. <d fs> q8 e d |
  <d b>4.^(_( q^)_) \breathe q8 <d g> <d b> |
  <d a>4. <d fs> <cs fs>4 <cs e>8 |
  d4.^( 4.) \bar "|."
}

alto = \fixed c' {
  \global
  d8 s4 | s4. s2 d8 8 | s1 s8 | s4.
  s2. | s2. d8 s4 | s2. s4. | s2.
  s4. | s2. s4.   | d4._( 4.) a8[ gs] s | s2. s4. |
  s2. fs8[ gs] s | s2. s4. | s2. d8 s4 |
  s2. s8 d d | s2. s4. | s2. s4. |d4._( 4.)
}

tenor = \fixed c {
  \global
  s4. | s2. s4. | s2. s4. | s4.
  s2. | s2. s4. | s2. s4. | g4. 4. 
  g8 s4 | s4. a4. s4. | s2. a4 8 | s2. s4. |
  s2. a4 8 | s2. s4. | <a, e>4. s4. s4. |
  s2. s4.  | s2. s4. | s2. s4. | s2.
}

bass = \fixed c {
  \global
  <d fs>8 <d a> <d g> |
  <d fs>4. <d a> q8 <d  g> <d fs> |
  <a, a>4. q \breathe q8 q8 q8 | <a, cs'>4. 
  
  q4. q8 q q | <d a>4. q \breathe <d fs>8 <d a> q |
  q4. <d d'> q8 <d a> q | g4. 4. \breathe
  
  g8 <g b> <g d'> |
  <a d'>4. a <a, a>4 <a, g>8 |
  <d fs>4.^(_( q^)_) \breathe \bar "||" a4 8 |
  <d a>4 q8 q4. q8 <d b> <d cs'> |
  
  <d d'>4 q8 q4. \breathe a4 8 |
  <d a>4. <b, a> <e gs>8 q q |
  s4. <a, a> \breathe <d fs>8 <d a> <d g> |
  
  <d fs>4. <d a> q8 <d g> <d fs> |
  <a, g>4.^(_( q^)_) \breathe q8 <b, g> <g, g> |
  <a, fs>4. <a, a> q4 <a, g>8 |
  <d fs>4.^(_( q^)_) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 예 수 흘 린 보 혈 의 피 로 
  자 유 함 얻 고 온 전 케 됐 네
  율 법 의 저 주 대 신 받 으 사
  은 혜 로 내 죄 사 했 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  다 시 는 내 게 정 죄 함 없 네
  온 전 한 구 원 이 뤄 주 셨 네
  주 앞 에 나 와 말 씀 믿 어 서
  단 번 에 사 함 얻 으 라
  
  단 번 에 죽 으 사 단 번 에 사 했 네
  형 제 여 믿 고 사 함 얻 으 라
  십 자 가 밑 에 죄 짐 풀 라
  단 번 에 주 날 구 했 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  하 나 님 자 녀 영 광 의 특 권
  은 혜 로 우 리 보 호 하 시 네
  사 망 길 에 서 생 명 길 로 "-"
  단 번 에 구 원 주 셨 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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

