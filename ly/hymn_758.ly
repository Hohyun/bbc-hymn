\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "나 깊이 잠기겠네"
engTitle = "Deeper and Deeper"
hymnNumber = "758"
poet = "Oswald J. Smith, 1890"
composer = "Oswald J. Smith, 1890"
bibleInfo = "엡 3:17-19"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key d \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d fs>4 q q q2 <e g>4 |
  <fs a>2. q \breathe |
  <d fs>4 <e g> <fs a> \stemDown <g d'>4. <a cs'>8 \stemUp <g b>4 |
  <fs a>2.^(_(q^)_) \breathe | %\break
  
  e4 4 4 <cs e>2 <d fs>4 |
  <e g>2. q \breathe |
  <d fs>4 <d g> <d a> <d b>2 <cs g>4 |
  <d fs>2.^(_( q^)_) \breathe | %\break
  
  <d fs>4 q q q2 <e g>4 |
  <fs a>2. q \breathe |
  <d fs>4 <e g> <fs a> d'2 <a cs'>4|
  <g b>2.^(_( q^)_) \breathe | %\break
  
  \stemDown <g d'>4 <a cs'> \stemUp <g b> <fs a>2. |
  <g b>4 <fs a> <e g> <d fs>2. \breathe |
  <cs e>4 <cs fs> <cs g> <cs a> <cs g> <cs e> |
  <a, d>2.^(_( q^)_) \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  s2. s2. | s2. s2. | s2. s2. | s2. s2. |
  e4 4 4 s2. | s2. s2. | s2. s2. | s2. s2. |
  s2. s2. | s2. s2. | s2. fs4( g) s4 | s2. s2. |
  s2. s2. | s2. s2. | s2. s2. | s2. s2. |
}

tenor = \fixed c {
  \global
  s2. s2. | s2. s2. | s2. s2. | s2. s2. |
  s2. a2 s4 | s2. s2. | s2. g2 s4 | s2. s2. |
  s2. s2. | s2. s2. | s2. a2 s4 | s2. s2. |
  s2. s2. | s2. s2. | a4 s2. <a, e>4 s4 | s2. s2. |
}

bass = \fixed c {
  \global
  <d a>4 q q q2 q4|
  <d d'>2. q \breathe |
  <d a>4 q q <d b>4. <d cs'>8 <d d'>4 |
  <d d'>2.^(_( q^)_) \breathe |
  
  <a cs'>4 q q g2 <fs a>4 |
  <e b>2. <cs a> \breathe |
  <d a>4 <e a> <fs a> g2 <e a>4 |
  <d a>2.^(_( q^)_) \breathe |
  
  <d a>4 q q q2 q4 |
  <d d'>2. q \breathe |
  <d a>4 q q d( e) <fs d'> |
  <g d'>2.^(_( q^)_) \breathe |
  
  <g b>4 <g cs'> <g d'> <d d'>2. |
  <a, cs'>4 q <cs a> <d a>2. \breathe |
  g4 <fs a> <e a> <a, g> s4 <a, g>4 |
  <d fs>2.^(_( q^)_) \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 님 의 마 음 속 에 나 깊 이 잠 기 겠 네
  주 님 의 깊 은 사 랑 측 량 할 수 없 네
  진 흙 과 같 은 나 를 굽 어 올 리 시 사
  죄 중 에 서 방 황 할 때 내 영 혼 구 하 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 님 십 자 가 속 에 나 깊 이 잠 기 겠 네
  홀 로 가 시 던 동 산 그 뒤 를 따 르 리
  슬 픔 의 잔 마 시 며 맘 아 파 우 셨 네
  나 의 주 님 나 의 주 님 그 은 혜 크 시 도 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 님 의 기 쁨 속 에 나 깊 이 잠 기 겠 네
  동 산 무 덤 깨 치 고 주 다 시 사 셨 네
  슬 픔 이 기 쁨 되 고 암 흑 광 명 되 니
  나 의 주 님 나 의 주 님 그 능 력 크 시 도 다
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 님 의 사 랑 속 에 나 깊 이 잠 기 겠 네
  죄 악 과 두 렴 에 서 구 원 해 주 신 주
  그 이 름 영 원 토 록 찬 미 로 부 르 리
  나 의 주 님 나 의 주 님 그 사 랑 크 시 도 다
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
      \tempo 4 = 120
    }
  }
}

