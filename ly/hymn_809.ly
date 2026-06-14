\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "인성의 석양 맞을 때"
engTitle = "When I Get to the End of the Way"
hymnNumber = "809"
poet = "K. William, 1939"
composer = "Charlie D. Tillman"
bibleInfo = "고후 5:1-6"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \numericTimeSignature
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  \repeat segno 2 {
  <f af>16 q |
  <f df'>8. q16 q8 <df f> <ef g> <fs af> |
  \stemDown <af c'>8 \stemUp <g bf>2 \breathe q16 q |
  <f af>8 \stemDown <af c'> \stemUp <gf bf> %\break
  
  <f af>8 <gf bf> <f af> |
  q2 b8\rest \break 
  q16 q|
  <f df'>8. q16 q8 <df f> <ef gf> <f af> |
  \stemDown <af c'> \stemUp <gf bf>2 \breathe %\break
  
  <gf bf>16 q |
  <f af>8 <ef c'> <df bf> <c af> <c gf> <c ef> |
  df2 b8\rest 
  \fine \break
  
  <df f>16 q |
  <c ef>8 <df f> <ef gf>  %\break
  
  <gf c'> <gf bf> af |
  <f af> <f df'>2 \breathe q16 q |
  <ef c'>8 <ef bf> \stemDown <af c'> <g ef'> <g df'> \stemUp <ef bf> |
  <ef af>2
  }
  
}

aligner = \soprano

alto = \fixed c' {
  \global
  s8  | s2. | s2. | s4.
  s4. | s2. | s2. | s8 s2
  s8  | s2. | df2 s4 | s4.
  s4 gf8 | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  s8  | s2. | s2. | af8 8 8
  s4. | s2. | s2. | s8 s2
  s8  | s8 af8 8 s4. | s2. | s4.
  s4. | s2. | s2. | s2
}

bass = \fixed c {
  \global
  \repeat segno 2 {
  <df df'>16 q |
  <df af>8. q16 q8 q q <df df'> |
  <gf df'> q2 \breathe q16 q |
  af8 8 8 
  
  <af, af>8 q q |
  <df af>2 d8\rest \breathe <df df'>16 q |
  <df af>8. q16 q8 q q <df df'> |
  <gf df'> q2 \breathe 
  
  <gf df'>16 q |
  q8 af8 8 <af, af>8 q <af, gf> |
  <df f>2 d8\rest 
  \fine
  <df af>16 q |
  <af, af>8 q q 
  
  <af, af>8 <af, c'> q |
  <df df'> <df af>2 \breathe q16 q |
  <ef af>8 <ef g> <ef af> <ef bf> q <ef df'> |
  <af c'>2
  }
}

alignerb = \fixed c {
  <df df'>16 q |
  <df af>8. q16 q8 q q <df df'> |
  <gf df'> q2 \breathe q16 q |
  af8 8 8 
  
  <af, af>8 q q |
  <df af>2 d8\rest \breathe <df df'>16 q |
  <df af>8. q16 q8 q q <df df'> |
  <gf df'> q2 \breathe 
  
  <gf df'>16 q |
  q8 af8 8 <af, af>8 q <af, gf> |
  <df f>2 d8\rest 
}

verseOne = \lyricmode {
  \set stanza = "1."
  고 된 나 그 네 순 례 그 칠 때
  모 든 자 취 가 사 라 지 고
  즐 겨 찬 양 을 부 르 던 음 성
  다 시 는 듣 지 못 하 리 라
  앞 서 간 성 도 발 자 취 따 라
  오 늘 도 기 뻐 따 라 가 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 를 사 랑 해 주 신 예 수 님
  나 는 항 상 잊 을 수 없 어
  주 의 성 도 들 과 찬 미 하 며
  오 늘 도 기 뻐 따 라 가 네
  영 원 한 천 국 바 라 보 면 서
  기 쁘 게 주 를 찬 양 하 리
}

verseThree = \lyricmode {
  \set stanza = "3."
  험 한 준 령 이 앞 을 가 릴 때
  복 된 안 식 을 바 라 보 네
  좁 은 길 로 날 이 끄 신 주 님
  영 원 한 평 안 을 주 시 리
  우 리 주 님 의 언 약 을 믿 고
  오 늘 도 기 뻐 따 라 가 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  선 한 싸 움 을 다 마 치 는 날
  진 주 문 앞 에 서 게 되 리
  영 광 스 러 운 천 사 의 찬 양
  기 쁘 게 들 을 그 날 오 네
  찬 란 한 주 의 영 광 비 칠 때
  세 상 슬 픔 다 사 라 지 네
}

verseExtra = \lyricmode {
  \once \override LyricText.self-alignment-X = #RIGHT "D.C. 나" "-" 인 생 의 석 양 맞 을 때
  나 그 네 수 고 그 치 겠 네
  나 "-" 인 생 의 석 양 대 할 때
  사 랑 하 는 주 뵈 오 리 라
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
              \context NullVoice = alignerb {
                \alignerb
              }
          >>       
        }
        
        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
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

