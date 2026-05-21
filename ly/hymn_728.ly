\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "힘차게 나가세 의심치 말고"
engTitle = "Walk by Faith"
hymnNumber = "728"
poet = "Ananymous"
composer = "Anaymous"
bibleInfo = "고후 5:7"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <c ef>4 <c af>8. <ef bf>16 <ef c'>8 q <ef bf> <ef af> |
  <df af> <f af> <ef g> <df f> <c ef>2 \breathe |
  <bf, ef>8 <ef g> q q q <ef bf> q <ef g> |
  
  <ef af>4 <ef df'>8 <ef c'> bf2 \breathe |
  <c ef>4 <c af>8. <ef bf>16 <ef c'>8 q <ef bf> <ef af> |
  <df af>8 <f af> <ef g> <df f> <c ef>2 \breathe |
  
  <df f>8 <ef g> <ef af> <ef bf> <ef c'> q <ef ef'> <ef df'> |
  <ef c'>4 <ef bf> <ef af>2 \breathe |
  <af c'>4^\markup "(후렴)" s <ef c'>8.[ <df bf>16] <c af>4 |
  
  <ef af>8 <df bf> <df af> <df f> q4 <c ef> \breathe |
  <ef g>8 q q4 <ef af>8 q q4 |
  <g bf>8 <af c'> <bf df'> <af c'> <g bf>2 \breathe |
  <af c'>4 s4 <ef c'>8.[ <df bf>16] <c af>4 |
  
  <df af>8 <df bf> <df af> <df f> q4 <c ef> \breathe | 
  <df f>8 <ef g> <ef af> <ef bf> <ef c'> q <ef ef'> <f df'> |
  <ef c'>4 <ef bf> <ef af>2 \bar "|." |
}

aligner = \fixed c' {
  \global
  <c ef>4 <c af>8. <ef bf>16 <ef c'>8 q <ef bf> <ef af> |
  <df af> <f af> <ef g> <df f> <c ef>2 \breathe |
  <bf, ef>8 <ef g> q q q <ef bf> q <ef g> |
  
  <ef af>4 <ef df'>8 <ef c'> bf2 \breathe |
  <c ef>4 <c af>8. <ef bf>16 <ef c'>8 q <ef bf> <ef af> |
  <df af>8 <f af> <ef g> <df f> <c ef>2 \breathe |
  
  <df f>8 <ef g> <ef af> <ef bf> <ef c'> q <ef ef'> <ef df'> |
  <ef c'>4 <ef bf> <ef af>2 \breathe |
  <af c'>4^\markup "(후렴)" q <ef c'>8.[ <df bf>16] <c af>4 |
  
  <ef af>8 <df bf> <df af> <df f> q4 <c ef> \breathe |
  <ef g>8 q q4 <ef af>8 q q4 |
  <g bf>8 <af c'> <bf df'> <af c'> <g bf>2 \breathe |
  <af c'>4 q4 <ef c'>8.[ <df bf>16] <c af>4 |
  
  <df af>8 <df bf> <df af> <df f> q4 <c ef> \breathe | 
  <df f>8 <ef g> <ef af> <ef bf> <ef c'> q <ef ef'> <f df'> |
  <ef c'>4 <ef bf> <ef af>2 \bar "|." |
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 |
  s2 ef4( df)  | s1 | s1 | 
  s1 | s1 | s4 <af ef'> s2 |
  s1 | s1 | s1 | s4 <af ef'> s2 |
  s1 | s1 | s1 |
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 |
  s1 | s1 | s1 |
  s2 af8 af s4 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s2 af8 8 s4 | s1 |
}

bass = \fixed c {
  \global
  <af, af>4 q8. q16 q8 q <c af> q |
  <df f> <df af> q q <af, af>2 \breathe |
  <ef g>8 <ef bf> q q q <ef g> q <df bf> |
  
  <c af>4 <bf, g>8 <af, af> <ef g>2 \breathe |
  <af, af>4 q8. q16 q8 q <c af> q |
  <df f> <df af> q q <af, af>2 \breathe |
  
  <df af>8 <df bf> <c af> <ef g> af af <c af> <df af> |
  <ef af>4 <ef df'> <af c'>2 \breathe |
  <af ef'>4 <af c'> <af, af> q |
  
  <df f>8 q q <df af> <af, af>4 q \breathe |
  <ef bf>8 q q4 <ef c'>8 q q4 |
  <ef ef'>8 q q q q2 \breathe |
  <af ef'>4 <af c'> <af, af> q |
  
  <df f>8 q q <df af> <af, af>4 q \breathe |
  <df af>8 <df bf> <c af> <ef g> af af <c af> <df af> |
  <ef af>4 <ef df'> <af, c'>2 \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  눈 에 는 아 무 증 거 안 뵐 찌 라 도
  믿 음 만 을 굳 게 잡 고 나 갑 시 다
  귀 에 는 아 무 소 리 아 니 들 려 도
  하 나 님 의 약 속 위 에 굳 게 서 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  눈 으 로 보 기 에 는 어 떠 하 든 지
  손 에 잡 힌 것 과 같 이 굳 게 믿 고
  마 음 에 의 심 없 이 전 진 할 때 에
  우 리 소 원 대 로 이 뤄 지 겠 네
  
  나 아 가 세 믿 음 위 에 서 서 
  힘 차 게 나 가 세 의 심 치 말 고
  나 아 가 세 믿 음 위 에 서 서
  십 자 가 로 주 의 증 거 삼 고 서
}

verseThree = \lyricmode {
  \set stanza = "3."
  당 신 의 거 룩 함 을 두 고 맹 서 한
  하 나 님 의 언 약 하 심 굳 게 믿 고
  그 귀 한 약 속 들 을 믿 는 자 에 게 
  능 치 못 한 무 슨 일 이 있 을 까 
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
      \tempo 4 = 90
    }
  }
}

