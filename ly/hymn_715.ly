\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 내죄 사했네"
engTitle = "He Took My Sins Away"
hymnNumber = "715"
poet = "Mrs. M. J. Harris, 19th Century"
composer = "Mrs. M. J. Harris, 19th Century"
bibleInfo = "롬 3:23-26"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  <c ef>8 |
  q4 <ef c'>4 q4. <ef af>8 |
  <f bf>8 <f af> <ef g> <df f> <c ef>4. q8 |
  ef8 <g df'>8 q8. q16 q4. \breathe %\break
  
  ef8 |
  <c ef>8 <ef c'> q8. q16 q4. <c ef>8 |
  <c ef>4 <ef c'> q4. <ef af>8 |
  <f bf>8 <f af> <ef g> <df f> <c ef>4. \breathe %\break
  
  ef8 | 
  <df f>4 <f df'> <ef g>4. <ef af>8 |
  <ef af>2. b8\rest \bar "||" \break 
  
  <c ef>8^\markup "(후렴)" | 
  ef8 <g df'>8 q8. q16 q4. %\break
  
  ef8 | <c ef>8 <ef c'> q8. q16 q4. q8 |
  <df c'>8 <df bf> q q <df c'>4 \stemDown <af d'>  |
  <g ef'>2. \stemUp b4\rest | %\break
  
  <c ef>4 <ef c'> q4. <ef af>8 | <f bf>8 <f af> <ef g> <df f> <c ef>4. ef8 |
  <df f>4 <f df'> <ef g>4. <ef af>8 |
  <ef af>2. b8\rest \bar "|."
  
}

alto = \fixed c' {
  \global
  s8 | s1 | s1 | df8 s8 s4 s4. 
  df8 | s1 | s1 | s2 s4. 
  ef8 | s1 | s2. s8 s8 | df8 s8 s4 s4.
  df8 | s1 | s1 | s1 |
  s1 | s2. s8 ef | s1 s2. s8
}

tenor = \fixed c {
  \global
  s8 | s1 | s2. s8 af8 | s2. s8
  s8 | af8 8 8. 16 4. s8 | s1 | s2 s4.
  s8 | s1 | s2. s8 s8 | s2 s4. 
  s8 | af8 8 8. 16 4. s8 | s1 | \stemDown af,4\rest ef4 df c \stemUp |
  s1 | s1 | s1 | s2. s8
}

bass = \fixed c {
  \global
  <af, af>8 |
  q4 q q4. <c af>8 |
  <df df'>8 q q <df af>8 <af, af>4. af8 |
  <ef g>8 <ef bf> q8. q16 q4. \breathe
  
  <ef g>8 |
  af8 8 8. 16 4. <af, af>8 |
  q4 q q4. <c af>8 |
  <df df'>8 q q <ef af> <af, af>4. \breathe
  
  <c af>8 |
  <ef af>4 q <ef df'>4. <af, c'>8 |
  q2. b8\rest \bar "||" <af, af>8 |
  <ef g>8 <ef bf>8 q8. q16 q4. 
  
  <ef g>8 |
  af8 8 8. 16 4. <af, af>8 |
  <bf, af>8 q q q <bf, f>4 <bf, bf> |
  <ef bf>2. a4\rest
  
  <af, af>4 q q4. <c af>8 |
  <df df'>8 q q <df af> <af, af>4. <c af>8 |
  <df af>4 q <ef df'>4. <af, c'>8 |
  <af, c'>2. d8\rest \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 상 한 맘 을 주 께 고 할 때 
  주 내 죄 사 했 네
  주 내 죄 사 했 네
  주 사 랑 내 게 기 쁨 주 셨 네
  주 내 죄 사 했 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 감 당 못 할 중 한 죄 짐 을
  주 내 죄 사 했 네
  주 내 죄 사 했 네
  내 모 든 근 심 주 께 맡 길 때
  주 내 죄 사 했 네
  
  주 내 죄 사 했 네
  주 내 죄 사 했 네
  내 심 령 주 께 노 래 해
  예 수 내 죄 사 하 셨 으 니
  내 기 쁨 넘 치 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 정 죄 함 을 면 케 되 었 네
  주 내 죄 사 했 네
  주 내 죄 사 했 네
  참 평 안 내 게 부 어 주 시 니
  주 내 죄 사 했 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  누 구 나 오 늘 주 께 나 오 면
  주 죄 사 하 시 네
  주 죄 사 하 시 네
  죄 사 할 권 능 주 께 있 으 니
  주 내 죄 사 했 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 7\mm
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
            %\context NullVoice = aligner {
            %  \aligner
            %}
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
    
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

