\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주의 영광 넘치네"
engTitle = "There Is Glory In My Soul"
hymnNumber = "755"
poet = "Grace Weiser Davis"
composer = "Chas H. Gabriel, 1856~1932"
bibleInfo = "요 15:13-14"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key a \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <cs e>8 q |
  <cs a>4 <e cs'> <cs a> <cs e>8 q |
  <cs a>4 <e cs'> <fs b>8 <fs a> <e gs> <d fs> |
  <cs e>4 <cs a> <e cs'> q |
  <e b>2. \breathe e8 e | %\break
  
  <cs a>4 <e cs'> <cs a> <cs e>8 q |
  <cs a>4 <e cs'> <fs b>8 <fs a> <e gs> <d fs> |
  <cs e>8 <e cs'>4. <e b>4 <d b> |
  <cs a>2. \breathe \bar "||" \break
  
  <e cs'>8^\markup "(후렴)" <e d'> |
  \stemDown <a e'>4. <a fs'>8 <a e'> \stemUp <e cs'> q <e b> |
  <fs a>8. <fs b>16 <fs a>8 <d fs> <cs e>4 \breathe q8 q |
  <cs a>4 q8 q <e cs'>4 <e a>8 q |
  <e b> q <ds b> q <e b>4\fermata \breathe \break
  
  <e cs'>8 <e d'> |
  \stemDown <a e'>4. <a fs'>8 <a e'> \stemUp <e cs'> q <e b> |
  <fs a>8. <fs b>16 <fs a>8 <d fs> <cs e>4 \breathe q8 e |
  <e cs'> <cs a>4. <e b>4 <d b> |
  <cs a>2. \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s1 | s2. d8 d |
  s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s2.
  s4 | s1 | s2. s8 e | s1 | s2.
}

tenor = \fixed c {
  \global
  s4 | <gs, e>4 s q s | q s2. | s2 a4 a | s1 |
  <gs, e>4 s q s | q s2. | s1 | s2.
  
  a8 b | cs'4. d'8 s8 a s4 | s1 | <a, e>4 q8 q a4 s4 | s2.
  a8 b | cs'4. d'8 s8 a s4 | s1 | s2 gs4 4 | s2.
}

bass = \fixed c {
  \global
  <gs, a>8 q |
  s4 q4 s q8 q |
  s4 q4 <d a>8 q q q |
  <a, a>4 q a a |
  <e gs>2. \breathe q8 q |
  
  s4 <a, a> s q8 q |
  s4 q4 <d a>8 q q q |
  <e a>8 q4. <e gs>4 q |
  <a, a>2. \breathe \bar "||"
  
  a8 8 |
  8 4. <a cs'>8 a8 <a, a> <cs a> |
  <d d'>8. q16 q8 <d a> <a, a>4 \breathe q8 q |
  s2 a4 <a cs'>8 q |
  <gs b> q <fs a> q <e gs>4\fermata \breathe 
  
  a8 8 |
  8 4. <a cs'>8 a8 <a, a> <cs a> |
  <d d'>8. q16 q8 <d a> <a, a>4 \breathe q8 <cs a> |
  <e a>8 q4._"영 광 넘 치 네" e8 8 8 8 |
  <a, a>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 의 모 든 죄 주 가 씻 어 주 신 이 후
  영 광 넘 치 네 
  믿 음 가 지 고 주 의 은 총 받 은 이 후
  영 광 넘 치 네 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 의 어 둔 눈 주 가 열 어 주 신 이 후
  영 광 넘 치 네 
  주 의 사 랑 이 나 의 발 길 돌 리 신 후
  영 광 넘 치 네 
  
  주 의 영 광 나 의 맘 에 가 득 넘 치 니
  나 의 대 적 이 떨 면 서 물 러 가 리 라
  주 의 영 광 나 의 속 에 가 득 넘 치 네
  주 의 영 광 넘 치 네 
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 발 걸 음 주 께 모 두 맡 긴 이 후
  영 광 넘 치 네 
  매 일 주 님 과 기 쁜 교 제 하 게 된 후
  영 광 넘 치 네 
}

verseFour = \lyricmode {
  \set stanza = "4."
  내 가 바 라 던 가 나 안 땅 들 어 간 후
  영 광 넘 치 네 
  나 의 생 활 을 주 께 모 두 드 린 이 후
  영 광 넘 치 네 
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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

