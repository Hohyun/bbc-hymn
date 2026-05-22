\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "신기하구나"
engTitle = "O It is Wondeful!"
hymnNumber = "738"
poet = "Charles H. Gabriel, 1856~1932"
composer = "Charles H. Gabriel, 1856~1932"
bibleInfo = "엡 2:4-8"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  \once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
  \numericTimeSignature
  
  <c ef>4 | 
  q <c af> <df f> |
  q <af, c> <bf, df> |
  
  <c ef> <ef af> f |
  
  \time 4/4 <df g>8 <df f> ef2 \breathe 4 | 
  \time 3/4 ef4 <df bf> <df af> | %\break
  
  <df g>4 <df f> <bf, df> |
  <df g> <df f> <df g> |
  \time 4/4 <c f>8 <c ff> <c ef>2 \breathe  q4 | 
  \time 3/4 q4 <c af> <df f> |
  <c ef> <af, c> <bf, df> |
  <c ef> <ef af> <d f> | %\break
  
  
  \time 4/4 <ef g>8 <f af> <ef bf>2 \breathe q4 |
  \time 3/4 <d bf> <f d'> <ef c'> |
  <d f> <d g> <d af> |
  <d c'> <ef bf> <f af> |
  <ef g>8 <d f> ef2 \breathe \bar "||" | %\break
  
  <ef c'>4^\markup "(후렴 )" q <df bf> |
  \time 4/4 
  q8. <df af>16 q4. <ef c'>8 <ef bf> <ef af> |
  <df af>8. <df g>16 q4. <df bf>8 <df af> <df g> |
  
  \time 3/4
  <df f>8. <c ef>16 q2 \breathe |
  <ef ef'>4 <ef df'> c' |
  <f bf>8.^> <f c'>16 <f df'>2 |
  <f c'>8.^> <f bf>16 <ef af>4 <df ef g> |
  <c ef af>2 \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4  | s2. | s2. | s2 ef4 | s4 df2 4 | 4 s2 |
  s2. | s2. | s1 | s2. | s2. | s2. |
  s1  | s2. | s2. | s2. | s4 df2 |
  s2. | s1 | s1 |
  s2. | s2 ef8[ gf] | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  \once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
  \numericTimeSignature
  
  s4 | s2 f8[ g] | s4 <af, ef> q | s2. | s1 | s2. |
  s2. | s2. | s1 | s4 <af, ef> f8[ g] | s4 <af, ef> q | s2. |
  s1 | s2. | bf4 s2 | s2. | s2. | 
  s4 <af, f> s | <af, ef>8. q16 q4. s4. | s1 |
  s2. | s2. | s2. | s2. | s2
}

bass = \fixed c {
  \global
  <af, af>4 | 
  q <af, ef> af, | 
  <af, af> s s | 
  <af, af> <af, c'> <c af> |
  <ef bf>8 <ef af> <ef g>2 \breathe q4 | 
  q q <ef af> |
  
  <ef bf>4 <ef af> <ef g> |
  <ef bf> <ef af> <ef bf> |
  <af, af>8 q q2 \breathe q4  |
  q s af, |
  <af, af> s s |
  <af, af> <c af> <cf af> |
  
  <bf, bf>8 <bf, af> <bf, g>2 \breathe q4 |
  <bf, af>4 q q |
  af <g bf> <f bf> |
  <bf, af> <c bf> <d bf> |
  <ef bf>8 <ef af> <ef g>2 \breathe \bar "||" |
  
  <af, af>4 s <af, g> |
  s4 s4. <af, af>8 <bf, g> <c af> |
  <ef bf>8. q16 q4. <ef g>8 <ef af> <ef bf> |
  
  <af, af>8. q16 q2 \breathe |
  <c af>4 <bf, g> < af, af> |
  <df af>8._> <c a>16 <bf, bf>2 |
  <c a>8._> <df bf>16 <ef c'>4 <ef bf> |
  <af, af>2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 나 에 게 베 푸 신 놀 라 운 사 랑 과 
  또 넘 치 게 주 시 는 그 은 혜 크 도 다
  주 나 위 해 십 자 가 큰 고 통 당 하 사
  그 보 혈 의 공 로 로 내 죄 를 속 했 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  아 주 님 을 배 반 코 교 만 히 행 할 때
  주 높 으 신 보 좌 를 버 리 고 오 셨 네
  내 모 든 죄 속 하 고 의 롭 다 했 으 니
  그 광 대 한 사 랑 을 다 어 찌 말 할 까
  
  날 사 랑 하 시 사 십 자 가 죽 음 도
  몸 소 당 하 셨 네 
  이 귀 한 사 랑 이 신 기 하 구 나
}

verseThree = \lyricmode {
  \set stanza = "3."
  피 흘 리 신 손 과 발 옆 구 리 볼 때 에
  그 자 비 한 사 랑 을 나 어 찌 잊 을 까 
  주 영 광 의 보 좌 에 다 시 뵐 때 까 지
  내 찬 양 과 경 배 를 아 끼 지 않 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
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
      \tempo 4 = 90
    }
  }
}

