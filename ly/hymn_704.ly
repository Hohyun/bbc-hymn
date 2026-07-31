\version "2.24.4"

\include "./hymn_init.ly"
\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% Hymn Info
korTitle = "하늘 영광 버리고"
engTitle = "I Will Sing the Wondrous Story"
hymnNumber = "704"
poet = "Anonymous"
composer = "R.H.Prichard"
bibleInfo = "빌 2:5-8"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 3/4
  %\tempo 4 = 90
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  af2 bf4 |
  af4.( bf8) c 4 |
  df2 c4 |
  bf4( af) bf \breathe |
  ef2 df4 |
  c2 c4 |
  bf4( af) bf |
  af2. \breathe | %\break
  
  af2 bf4 |
  af4.( bf8) c4 |
  df2 c4 |
  bf4 s bf |
  ef2 df4 |
  c2 
  % temporary polyphonic passage
  << 
    { \voiceOne 
      c4 
    }
    \new Voice {
      \voiceTwo
      af8( g)
    }
  >> |
  bf4( af) bf |
  af2. \breathe | %\break
  
  ef'2^\markup "(후렴)" ef4 |
  ef4( df) c |
  df2 df4 |
  df4( c) bf |
  c2 c4 |
  c4( df) ef |
  ef4( df) c |
  bf2. \breathe | %\break
  
  ef4( c) ef |
  df( bf) df |
  c4( af) c |
  bf8[ c df c] bf4 \breathe |
  ef2 ef4 |
  f4( ef) df |
  c2 
  << 
    { \voiceOne 
      bf4 
    }
    \new Voice {
      \voiceTwo
      g8( ef)
    }
  >> | 
  af2.\fermata | \bar "|."
}

alto = \relative c' {
  \global
  c2 df4 |
  c4.( df8) ef4 |
  ef2 ef4 |
  df4( c) ef |
  ef2 ef4 |
  ef2 ef4 |
  df4( c) df |
  c2. |
  
  ef2 ef4 |
  ef2 af4 |
  af2 af4 |
  g4( af) g |
  af2 g4 |
  af2 s4 |
  f4( ef) ef |
  ef2. |
  
  ef2 ef4 |
  ef2 ef4 |
  ef2 ef4 |
  ef2 ef4 |
  ef2 ef4
  ef2 ef4 |
  ef2 af4 |
  g2. |
  
  ef2 ef4 |
  ef2 ef4 |
  ef2 af4 |
  g8[( af bf af]) g4 |
  af2 af4 |
  af2 af4 |
  af2 s4 |
  ef2.
  
}

tenor = \relative c' {
  \global
  af2 g4 |
  af2 af4 |
  af4( g) << { af4 } \\ { c,8( df) } >>  |
  g4( af) g \breathe |
  << { c2 bf4 } \\ { af,4( af') g } >> |
  << { af2 af4 } \\ { af2 af,8( c) } >> |
  g'4( af) g |
  af2. \breathe |
  
  c2 df4 |
  c4.( df8) ef4 |
  << { ef2 ef4 } \\ { af,4( g) af } >> |
  << { df4( c) ef } \\ { ef,4( f) ef } >>  \breathe |
  ef'2 ef4 |
  ef2 ef4 |
  << { df4( c) df4 } \\ { df,4( ef) ef } >> |
  c'2. \breathe |
  
  c2 c4 |
  << { c4( bf) af } \\ { af,2 af4 } >> |
  << { bf'2 bf4 } \\ { ef,4( g) bf } >> |
  << { bf4( af) g } \\ { ef2 ef4 } >> \breathe |
  af2 af4 |
  << { af4( bf) c } \\ { af2 af4 } >> |
  << { bf2 c8[( df]) } \\ { g,2 af4 } >> |
  ef'2. \breathe |
  
  << { c4( af) c |
       bf4( g) bf |
       af4( c) af |
       ef'2 ef 4 | } \\ 
     { r2. | r2. | r2. | r2. | } 
  >> \breathe |
  ef2 c4 |
  << { df4( c) df } \\ { df,4( ef) f } >> |
  ef'2 df4 |
  c2.\fermata |
}

bass = \relative c {
  \global
  af2 ef'4 |
  af,2 af4 |
  bf2 s4 |
  ef4( f) ef |
  s2. |
  s2. |
  ef4( f) ef |
  af,2. |
  
  af'2 g4 |
  af2 af4 |
  s2.  |
  s2.  |
  af2 ef4 |
  af2 af,4 |
  s2.  |
  af2. |
  
  af'2 af4 |
  s2. |
  s2. |
  s2. |
  af,2 af4 |
  s2. |
  s2. |
  ef'2. |
  
  s2. |
  s2. |
  s2. |
  s2. |
  c'2 af4 |
  s2. |
  ef2 ef4 |
  af,2. |
   
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  하 늘 영 광 버 리 시 고 예 수 세 상 오 셔 서
  갈 보 리 산 십 자 가 를 나 위 하 여 지 셨 네
  고 마 우 신 그 은 혜 를 성 도 들 과 한 가 지
  황 금 길 을 걸 으 면 서 기 쁜 찬 송 부 르 리
}

verseTwo = \lyricmode {
  \set stanza = "2."
  길 을 잃 은 양 과 같 이 소 망 없 이 다 닐 때
  사 랑 하 는 팔 로 안 아 나 를 구 원 하 셨 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  죄 로 상 한 나 의 맘 을 은 혜 로 써 고 치 고
  어 두 움 과 사 망 안 서 안 전 함 을 얻 었 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  어 둔 날 과 슬 픈 때 를 내 가 당 할 지 라 도
  주 의 능 력 품 안 에 서 안 전 함 을 얻 었 네
}

verseFive = \lyricmode {
  \set stanza = "5."
  주 의 사 랑 힘 입 어 서 요 단 강 을 건 넌 후
  보 석 성 에 올 라 가 서 앞 서 간 이 만 나 리
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.1) (stretchability . 30))
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
          \context Voice = sop {
            <<
              \soprano
              \alto
            >>
          }
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
        \context Lyrics = "LyrFive" \lyricsto "sop" { \verseFive }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \new Voice {
            \clef bass
            <<
              \tenor
              \bass
            >>
          }
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

