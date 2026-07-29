\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "얼마나 기쁠까?"
engTitle = "Is It the Growning Day?"
hymnNumber = "780"
poet = "George Walker Whitcomb, 1907"
composer = "Charles H. Marsh, 1886~1956"
bibleInfo = "살전 4:13-18"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \numericTimeSignature
  \time 6/4
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <df af>4 <df bf> <df af> df2 ef4 |
  <df f>2.^(_( q^)_) \breathe |
  <c af>2. <c ef> |
  <df af>2. <df f> \breathe |
  <df gf>4 <df af> <df bf> <df f>2 <c ef>4 | \break
  
  <df af>2.^(_( q^)_) \breathe |
  <gf bf>4 a <gf bf> s <gf c'> <gf bf> |
  <f af>2.^(_( q2^)_) \breathe <df f>4 |
  <c ef>4 <c af> <ef c'> q2 <df bf>4 |
  <c af>2.( af) |
  <f df'>2.^\markup "(후렴)" <f bf> | \break
  
  <gf c'>2. af \breathe |
  <c gf>4 <c af> <c bf> <c f>2 <c ef>4 |
  <df af>2.^(_( q2^)_) af4 \breathe |
  <f df'>4^(_( <f c'>^)_) <f df'> <f ef'>2 <f df'>4 | 
  <af c'>2 q4 af2. \breathe | \break
  
  <gf ef'>4 <gf d'> <gf ef'> s2. |
  <f df'>2 q4 \breathe <f af>2. |
  s2. df'2. |
  s2. <gf bf> |
  <f af>4 <f df'> <af f'> s2. |
  s2. s2. |
}

alto = \fixed c' {
  \global
  s2. s2 df4 | s2. s2. | s2. s2. | s2. s2. | s2. s2. |
  s2. s2. | s4 gf s <gf df'> s2 | s2. s2. | s2. s2. | s2. gf | s2. s2. |
  
  s2. gf | 
  s2. \stemUp \tiny c'4^( df') ef' | 
  f'2.^( gf'2) \normalsize \stemDown gf4 | 
  s2. s2. | 
  s2. gf |
  
  s2. <gf f'>2 <gf ef'>4 | 
  s2. s2. | 
  <af f'>2. af2( a4) |
  <bf df'>2. s2. |
  s2. <f f' af'>2 <gf ef' gf'>4 |
  <f df' f'>2.^(_( q^)_)  |
}

aligner = \fixed c' {
  \global
  <df af>4 <df bf> <df af> df2 ef4 |
  <df f>2.^(_( q^)_) |
  <c af>2. <c ef> |
  <df af>2. <df f> \breathe |
  <df gf>4 <df af> <df bf> <df f>2 <c ef>4 | \break
  
  <df af>2.^(_( q^)_) \breathe |
  <gf bf>4 a <gf bf> q <gf c'> <gf bf> |
  <f af>2.^(_( q2^)_) \breathe <df f>4 |
  <c ef>4 <c af> <ef c'> q2 <df bf>4 |
  <c af>2.( af) |
  <f df'>2.^\markup "(후렴)" <f bf> | \break
  
  <gf c'>2. af \breathe |
  <c gf>4 <c af> <c bf> <c f>2 <c ef>4 |
  <df af>2.^(_( q2^)_) af4 \breathe |
  <f df'>4^(_( <f c'>^)_) <f df'> <f ef'>2 <f df'>4 | 
  <af c'>2 q4 af2. \breathe | \break
  
  <gf ef'>4 <gf d'> <gf ef'> q2 q4 |
  <f df'>2 q4 \breathe <f af>2. |
  q2. df'2. |
  q2. <gf bf> |
  <f af>4 <f df'> <af f'> q2 q4 |
  q2. s2. |
}

tenor = \fixed c {
  \global
  s2. s2. | s2. s2. | s2. af2. | s2. s2. | s2. af2 4 |
  s2. s2. | s2. s2. | s2. s2. | s2. af4 ( f) s | s2. s2. | s2. s2. |
  
  s2. s2. | s2 af4 2 4 | s2. s2. | s2. s2. | s2. s2. |
  s4 b s2. c'8[ af] | s2. s2. | s2. s2. | s2. s2. | s2. df'4( bf) s | s2. s2. |
}

bass = \fixed c {
  \global
  <df f>4 <df gf> <df f> q 2<df f>4 | 
  <df af>2.^(_( q^)_) \breathe |
  <ef af>2. gf |
  <f af>2. <df af> \breathe |
  <gf bf>4 <gf c'> <gf bf> af2 af4 |
  
  <f af>2.^(_( <f df'>^)_) \breathe |
  <gf df'>4 <gf c'> <gf df'> <gf bf> <gf c'> <gf df'> |
  <df df'>2.^(_( q2^)_) \breathe <df af>4 |
  <ef af>4 q q ef2 <ef g>4 |
  <af, af>2.^(_( <c af>^)_) |
  <df af>2. q |
  
  <ef af>2. <af c'> \breathe |
  <ef af>4 <f af> gf af2 4 |
  <f af>2.^(_( <ef af>2^)_) \breathe <c af>4 |
  <df af>4^(_( q^)_) q q2 q4 |
  <ef af>2 q4 <af c'>2. \breathe |
  
  <af c'>4 af <af c'> q2 af4 |
  <df af>2 q4 \breathe <df df'>2. |
  q <f df'> |
  <gf df'>2. q \breathe |
  <af df'>4 q q af2 4 |
  <df df'>2.^(_( q^)_) |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 오 늘 오 실 지 기 쁜 그 날
  나 주 를 만 나 리
  주 오 늘 오 신 다 면
  내 고 통 다 끝 나 리
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 고 향 가 는 길 기 쁜 그 날
  승 전 가 부 르 리
  주 님 이 부 르 실 때
  내 고 향 에 가 리 라

  기 쁜 그 날 얼 마 나 기 쁠 까
  내 주 예 수 곧 만 나 리
  주 님 이 나 를 맞 으 리
  기 쁜 그 날 얼 마 나 기 쁠 까
}

verseThree = \lyricmode {
  \set stanza = "3."
  걱 정 할 것 없 네 기 쁜 그 날
  찬 란 한 빛 있 네
  주 나 와 동 행 하 니
  큰 폭 풍 도 없 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 오 늘 의 지 혜 기 쁜 그 날
  내 입 이 열 리 고
  내 주 님 크 신 사 랑
  기 쁘 게 말 하 리 라
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

