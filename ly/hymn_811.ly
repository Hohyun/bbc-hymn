\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

korTitle = "찬송하라 주의 크신 사랑"
engTitle = "When We All Get to Heaven"
hymnNumber = "811"
poet = "E. E. Hewitt"
composer = "Mrs. J. G. Wilson"
bibleInfo = "요 14:1-3"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8
}

soprano = \fixed c' {
  \global
  <f af>4 q q <f df'> |
  <df f>8 <ef g> <f af> <gf bf> <f af>4 <df f> |
  <ef gf>4 q q8 <df f> <c ef> <df f> |
  <ef gf>4 <c af> <df f>2 | \break
  
  <f af>4 <f df'> q <f af> |
  <gf bf> \stemDown <gf df'> q \stemUp <e bf> |
  <f af>4 <f df'> df'8. c'16 bf8. c'16 |
  df'2. \break
  
  f8.^\markup "(후렴)" af16 |
  df'2. <af c'>8. <gf bf>16 |
  <f af>2 <df f>4 af8. 16 |
  df'4 8. 16 8. 16 c'8. df'16 |
  ef'2. \break
  
  af8. df'16 |
  f'2. \stemDown <af df'>4 |
  <gf df'>2 \stemUp <gf bf>4 <e bf> |
  <f af> <f df'> df'8. c'16 bf8. c'16 |
  df'2( 2) \bar "|." |
}

aligner = \soprano

alignerb = \fixed c' {
  \global
  s1 | s1 | s1 | s1
  s1 | s1 | s1 | s2.
  
  s4 | s4 df8. 16 4 s4 | s1 | s4 f8. 16 4 8. 16 | 8. 16 8. 16 4
  s4 | s4 df8. 16 4 s4 | s1 | s2 af4 q | df8. 16 8. 16 2 |
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 | s1
  s1 | s1 | s1 | f4 gf f
  
  a,4\rest |
  c4\rest f8. 16 4 s4 | 
  s2. c4\rest |
  c4\rest af8. 16 g4 8. 16 |
  gf8. 16 8. 16 4
  
  b,4\rest |
  c4\rest af8. 16 4 s4 |
  s1 |
  s2 gf4 4 |
  f8. 16 gf8. 16 f2 |
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
  <df df'>4 q q <df af> |
  q q <df df'> <df af> |
  <af, c'> q <af, af> q |
  q q <df af>2 |
  
  <df df'>4 <df af> q <df df'> |
  <gf df'> <gf bf> q <g df'> |
  <af df'> q <af ef'> af |
  <df af> <df bf> <df af> 
  
  d4\rest |
  d4\rest <df af>8. q16 q4 <df df'>8. q16 |
  q2 <df af>4 d4\rest |
  d4\rest <f af>8. q16 <ef bf>4 q8. q16 |
  <af c'>8. q16 q8. q16 q4
  
  d4\rest |
  d4\rest <df df'>8. q16 q4 <f cf'>4 |
  <gf bf>2 <gf df'>4 <g df'> |
  <af df'> q <af ef'> q |
  <df df'>8. <df af>16 <df bf>8. q16 <df af>2 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  찬 송 하 라 주 의 크 신 사 랑
  예 수 우 리 대 신 죽 으 사
  저 천 국 서 우 리 쉴 곳
  예 비 하 고 계 시 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 세 상 의 나 그 네 길 갈 때
  구 름 잠 시 하 늘 덮 어 도
  머 지 않 아 어 둠 가 고
  슬 픔 다 시 없 겠 네

  우 리 다 천 국 에 서 
  그 리 던 주 를 만 나 뵈 올 때
  기 쁜 맘 넘 쳐 서
  승 리 의 노 래 부 르 리
}

verseThree = \lyricmode {
  \set stanza = "3."
  우 리 앞 에 상 급 바 라 보 고
  주 가 맡 긴 일 을 행 하 세
  영 광 의 주 만 나 볼 때
  모 든 수 고 끝 나 리
}

verseExtra = \lyricmode {
  우 리 다
  그 리 던 주 를 만 나 뵈 올 때
  기 쁜 맘
  노 래 노 래 부 르 리
}

myChords = \chordmode {
}


\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 7\mm    
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    %% tip: adjust pading number to 0.1 and set ragged-bottom to ##f, ragged-last-bottom to ##f to force system as close as possible 
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    %last-bottom-spacing.padding = #2
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
        \context Lyrics = "LyrExtraB" \lyricsto "alignerb" { \verseExtra }
    
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

