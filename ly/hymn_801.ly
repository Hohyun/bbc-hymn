\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "놀라워라 주님의 사랑"
engTitle = "And Can It Be That I Should Gain?"
hymnNumber = "801"
poet = "Charles. Wesley, 1707~1788"
composer = "Anonymous"
bibleInfo = "엡 2:1-4"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <c af>2 <ef af>4. <ef bf>8 |
  <ef c'>2. <ef ef'>4 |
  <f df'>^(_( <df f>^)_) g( bf) |
  <c af>2. \breathe <af, c>4 |
  <af, df>^(_( <df bf>^)_) g( ef) |
  <ef af>2 bf4( af) | %\break
  
  <ef g>2 <d f> |
  ef2. b4\rest |
  ef2 <ef g>4 <ef bf> |
  af2( g4) ef |
  <ef af>2 <ef c'> |
  <ef bf>2. \breathe <c ef>4 |
  <df f>^(_( <f af>2^)_) <df f>4 | %\break
  
  ef4( af2) <f bf>4 |
  <ef c'>2 <df bf> |
  <c af>2. b4\rest | \break
  <ef c'>2 <ef bf>4 ef |
  <ef af>2 bf4( c') |
  df'( f) bf( af) |
  g4.( f8) ef4 \breathe %\break
  
  <bf, ef>4 |
  c( ef af) <c ef> |
  f( af df') f |
  g( bf ef') <df g> |
  <c af>2. \breathe af4 |
  c'2 2 |
  bf2. 4 | %\break
  
  df'2 2 |
  c'2. \breathe 4 |
  f'2 2 |
  ef'2 df'4( bf) |
  <ef af>2 <df g> |
  <c af>2. b4\rest \bar "|." |
}

aligner = \soprano

alignerb = \fixed c' {
  \global
  s1 | s1 | s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 | s2 af2 | g4 4 4 s4 |  
  s2 g2 | af4 4 4 s4 | s4 4 4 4 | s1 | s1 | s1 |
}

alto = \fixed c' {
  \global
  s1 | s1 | s2 df2 | s1 | s2 bf,2 | s2 ef2 |
  s1 | ef2. s4 | ef2 s2 | ef2. 4 | s1 | s1 | s1 |
  ef2. s4 | s1 | s1 | s2. ef4 | s2 ef | f f | ef2.
  
  s4 | 
  c2. s4 | 
  df4( f2) 4 | 
  ef2. s4 | 
  s2. c4\rest   | 
  ef2\rest ef2  | 
  4 4 4 c4\rest |
  
  ef2\rest ef2 |
  4 4 4 e4\rest |
  f4\rest af4 4 4 |
  af2 f |
  s1 |
  s1 |
}

tenor = \fixed c {
  \global
  <af, ef>2 s | af2. s4 | s2 bf4 g | s2. <af, ef>4 | s2 ef4 s4 | s1 |
  s1 | s1 | s1 | c'2( bf4) s4 | af2 2 | s2. af4 | s1 |
  s1 | s1 | s1 | af2 s2 | s1 | s2 af4( bf) | bf4.( af8) g4
  s4 | s1 | s1 | bf4( ef2) s4 | s1 | s1 | s1 |  
  s1 | s1 | s1 | s2 bf4( df') | s1 | s1 |
}

bass = \fixed c {
  \global
  s2 <c af>4. <ef g>8 | 
  af4( ef c) <af, c'> |
  <df bf>2 ef |
  <af, af>2. \breathe s4 |
  <df f>2 ef4^(_( <df g>^)_) |
  <c af>^(_( <af, c'>^)_) <g, df'>^(_( <af, c'>^)_) |
  
  <bf, bf>2 <bf, af> |
  <ef g>2. d4\rest |
  q2 <ef bf>4 <ef c'> |
  ef2. <ef g>4 |
  c( bf,) af,( bf,) |
  <ef g>( <f af> <g bf>) af |
  <df af>2. q4 |
  
  <c af>2. <df af>4 |
  <ef af>2 <ef g> |
  <af, af>2. d4\rest |
  af,4( c) <ef g>4 <df g> |
  <c af>2 <bf, g>4^(_( <af, af>^)_) |
  <df af>2 d2 |
  ef2. \breathe 
  
  <ef g>4 |
  <af, af>2. q4 |
  <df af>2. <df bf>4 |
  ef2. <ef bf>4 |
  <af, af>2. \breathe d4\rest |
  d2\rest <af, af>2 |
  <ef g>4 q q d4\rest |
  
  d2\rest <ef g>2 |
  af4 <af c'> q \breathe d4\rest |
  d4\rest <df df'>4 <f df'> <df df'> |
  af2 df |
  <ef c'> <ef bf> |
  <af, af>2. d4\rest |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 보 혈 로 날 구 해 준 
  그 사 랑 깊 고 크 셔 라
  상 하 심 과 죽 으 심 이
  날 대 속 해 구 원 했 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  하 늘 영 광 버 리 시 고
  이 땅 위 에 오 신 은 혜
  주 의 사 랑 그 사 랑 이
  그 일 을 이 루 셨 도 다
  
  고 마 워 라 주 사 랑 이
  날 위 해 죽 으 신 큰 사 랑
  놀 라 워 라 주 사 랑 이
  어 찌 나 크 고 깊 은 지
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 는 주 의 양 이 되 고
  주 는 나 의 목 자 되 니
  그 인 도 만 따 르 리 라
  한 없 는 축 복 넘 치 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  그 사 랑 이 내 맘 속 에
  큰 위 로 평 안 늘 주 니
  나 또 한 늘 감 사 하 여
  내 맘 을 다 해 찬 양 해
}

verseExtra = \lyricmode {
  놀 라 워 라
  주 사 랑 이 어 찌 나
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
            \context NullVoice = alignerb {
              \alignerb
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
    
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

