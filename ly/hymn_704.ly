\version "2.24.4"

\include "./hymn_init.ly"

% Hymn Info
korTitle = "하늘 영광 버리고"
engTitle = "I Will Sing the Wondrous Story"
hymnNumber = "704"
poet = "Anonymous"
composer = "R.H.Prichard"
bibleInfo = "빌 2:5-8"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key aes \major
  \time 3/4
  \tempo 4 = 90
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  aes2 bes4 |
  aes4.( bes8) c 4 |
  des2 c4 |
  bes4( aes) bes \breathe |
  ees2 des4 |
  c2 c4 |
  bes4( aes) bes |
  aes2. \breathe | \break
  
  aes2 bes4 |
  aes4.( bes8) c4 |
  des2 c4 |
  bes4 s bes |
  ees2 des4 |
  c2 << { c4 } \\ { aes8( g) } >> |
  bes4( aes) bes |
  aes2. \breathe | \break
  
  ees'2 ees4 |
  ees4( des) c |
  des2 des4 |
  des4( c) bes |
  c2 c4 |
  c4( des) ees |
  ees4( des) c |
  bes2. \breathe | \break
  
  ees4( c) ees |
  des( bes) des |
  c4( aes) c |
  bes8[ c des c] bes4 \breathe |
  ees2 ees4 |
  f4( ees) des |
  c2 << { bes4 } \\ { g8( ees) } >> |
  aes2.\fermata | \bar "|."
}

alto = \relative c' {
  \global
  c2 des4 |
  c4.( des8) ees4 |
  ees2 ees4 |
  des4( c) ees |
  ees2 ees4 |
  ees2 ees4 |
  des4( c) des |
  c2. |
  
  ees2 ees4 |
  ees2 aes4 |
  aes2 aes4 |
  g4( aes) g |
  aes2 g4 |
  aes2 s4 |
  f4( ees) ees |
  ees2. |
  
  ees2 ees4 |
  ees2 ees4 |
  ees2 ees4 |
  ees2 ees4 |
  ees2 ees4
  ees2 ees4 |
  ees2 aes4 |
  g2. |
  
  ees2 ees4 |
  ees2 ees4 |
  ees2 aes4 |
  g8[( aes bes aes]) g4 |
  aes2 aes4 |
  aes2 aes4 |
  aes2 s4 |
  ees2.
  
}

tenor = \relative c' {
  \global
  aes2 g4 |
  aes2 aes4 |
  aes4( g) << { aes4 } \\ { c,8( des) } >>  |
  g4( aes) g \breathe |
  << { c2 bes4 } \\ { aes,4( aes') g } >> |
  << { aes2 aes4 } \\ { aes2 aes,8( c) } >> |
  g'4( aes) g |
  aes2. \breathe |
  
  c2 des4 |
  c4.( des8) ees4 |
  << { ees2 ees4 } \\ { aes,4( g) aes } >> |
  << { des4( c) ees } \\ { ees,4( f) ees } >>  \breathe |
  ees'2 ees4 |
  ees2 ees4 |
  << { des4( c) des4 } \\ { des,4( ees) ees } >> |
  c'2. \breathe |
  
  c2 c4 |
  << { c4( bes) aes } \\ { aes,2 aes4 } >> |
  << { bes'2 bes4 } \\ { ees,4( g) bes } >> |
  << { bes4( aes) g } \\ { ees2 ees4 } >> \breathe |
  aes2 aes4 |
  << { aes4( bes) c } \\ { aes2 aes4 } >> |
  << { bes2 c8[( des]) } \\ { g,2 aes4 } >> |
  ees'2. \breathe |
  
  << { c4( aes) c |
       bes4( g) bes |
       aes4( c) aes |
       ees'2 ees 4 | } \\ 
     { r2. | r2. | r2. | r2. | } 
  >> \breathe |
  ees2 c4 |
  << { des4( c) des } \\ { des,4( ees) f } >> |
  ees'2 des4 |
  c2.\fermata |
}

bass = \relative c {
  \global
  aes2 ees'4 |
  aes,2 aes4 |
  bes2 s4 |
  ees4( f) ees |
  s2. |
  s2. |
  ees4( f) ees |
  aes,2. |
  
  aes'2 g4 |
  aes2 aes4 |
  s2.  |
  s2.  |
  aes2 ees4 |
  aes2 aes,4 |
  s2.  |
  aes2. |
  
  aes'2 aes4 |
  s2. |
  s2. |
  s2. |
  aes,2 aes4 |
  s2. |
  s2. |
  ees'2. |
  
  s2. |
  s2. |
  s2. |
  s2. |
  c'2 aes4 |
  s2. |
  ees2 ees4 |
  aes,2. |
   
  
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
    scoreTitleMarkup = #(hymnScoreTitleMarkup 1)
    % ragged-bottom = ##t
    % ragged-last-bottom = ##f
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
      }
    }
    \midi {}
  }
  \noPageBreak
  \markup {
    \fill-line {
      \smallCaps \smaller \bibleInfo
      \smallCaps \smaller \engTitle
    }
  }
}

