\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 184 mm) (* 272 mm)))
   top-margin = 9\mm
   bottom-margin = 9\mm
}

% Hymn Info
korTitle = "주 다시 오시네"
engTitle = "Jesus is Coming Again"
hymnNumber = "708"
poet = "J. W. Peterson, 1921~"
composer = "J. W. Peterson, 1921~"
bibleInfo = "행 8:11"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

aligner = \fixed c' {
  \global
  <d bf>4 <f a> <ef g> <d f> <cs e> <d f> |
  <ef g>2. <f g> |
  <e c'>4 <e bf> <e a> <e g> <ds fs> <e g> |
  <f a>2. <g a> |
  
  <fs d'>4 <fs c'> <fs bf> <fs a> <es gs> <fs a> |
  <d bf>2.^(_( <ef bf>^)_) \breathe |
  <f d'>4 q q <ef c'>^(_( q^)_) q |
  d4( f) ef d2. |
  
  <f, f>2. <g, g>2 q4 |
  q2.^(_( q^)_) |
  q2. <a, a>2.  |
  q2. q |
  
  <c c'>2 <bf, bf>4 <a, a>2 <g, g>4 |
  <bf, bf>2 <a, a>4 <a, g>2. |
  <bf, bf>2 <a, a>4 g( e) f |
  <a, a>2 <g, g>4 <bf, d>2. |
  
  <f, f>2. <g, g>2 q4 |
  q2.^(_( q^)_)  |
  q2. <a, a>2 q4 |
  q2.^(_( q^)_)  |
  
  <d bf>4 q q <f c'> q q |
  <ef d'>4^(_( <ef c'>^)_) <ef bf> <cs g>2.  |
  <d f>4 <d g> <f bf> <g ef'> <f d'> <ef c'> |
  <d bf>2.^(_( q^)_)
}

soprano = \fixed c' {
  \global
  <d bf>4 <f a> <ef g> <d f> <cs e> <d f> |
  <ef g>2.^(_( <f g>^)_) \breathe |
  <e c'>4 <e bf> <e a> <e g> <ds fs> <e g> |
  <f a>2.^(_( <g a>^)_) \breathe | %\break
  
  <fs d'>4 <fs c'> <fs bf> <fs a> <es gs> <fs a> |
  <d bf>2.^(_( <ef bf>^)_) \breathe |
  <f d'>4 q q <ef c'>^(_( q^)_) q |
  bf2.( 2.) | \break
  
  <f, f>2.^\markup "(후렴)" <g, g>2 q4 |
  q2.^(_( q^)_) \breathe |
  q2. <a, a>2. |
  q2. q |
  
  <c c'>2 <bf, bf>4 <a, a>2 <g, g>4 |
  <bf, bf>2 <a, a>4 <a, g>2. \breathe |
  <bf, bf>2 <a, a>4 g( e) f |
  <a, a>2 <g, g>4 <bf, d>2. |
  
  <f, f>2. <g, g>2 q4 |
  q2.^(_( q^)_) \breathe |
  q2. <a, a>2 q4 |
  q2.^(_( q^)_)  |
  
  <d bf>4 q q <f c'> q q |
  <ef d'>4^(_( <ef c'>^)_) <ef bf> <cs g>2. \breathe |
  <d f>4 <d g> <f bf> <g ef'>\fermata <f d'>\fermata <ef c'> |
  <d bf>2.^(_( q^)_) \bar "|."
}

alto = \fixed c' {
  \global
  s1. | s1. | s1. | s1. |
  s1. | s1. | s1. | d4( f) ef d2. | 
  
  \set fontSize = #-2
  s4 <bf, d> q s q s |
  s4 <c ef>  q s q q |
  s q q s <cs a> <a, a> |
  s4 <d f> q s q q |
  
  s4 <f a> s s <df e> s |
  s4 <ef g> s d df c |
  s4 <ef g> s s2. |
  s4 <d f> s f, a, g, |
  
  s4 <bf, d> q s q s |
  s4 <c ef>  q s q q |
  s q q s <cs f> s |
  s4 <d f> q s q q |
  \set fontSize = #0
}

tenor = \fixed c {
  \global
  s1. | s1. | s1. | s1. |
  s1. | s1. | s1. | bf4( a) g f2. | 
  
  <bf,, bf,>2. <d, d>2 <df, df>4 |
  <c, c>2. f,2._\markup "8" \breathe |
  <c, c>2. f,2._\markup "8" |
  <bf,, bf,>2. <f, f> \breathe |
  
  <d, d>2. <df, df> |
  <c, c>2. <f, f> |
  <c, c>2. ef4( e) f |
  <bf,, bf,>2. f,_\markup "8" \breathe |
  
  <bf,, bf,>2. <d, d>2 <df, df>4 |
  <c, c>2. f,2._\markup "8" \breathe |
  <c, c>2. f,2._\markup "8" |
  <bf,, bf,>2.^(_( <f, f>^)_) \breathe |
}

bass = \fixed c {
  \global
  <bf, f>4 <bf, g> <bf, a> <bf, bf> q q |
  q2.^(_( <d b>2.^)_) \breathe |
  <c c'>4 q q <c bf> <c a> <c bf> |
  <f c'>2.^(_( <e c'>2.^)_)  \breathe |
  
  <d a>4 q <d d'> <d c'> <d b> <d c'> |
  <g bf>2.^(_( <gf c'>^)_) \breathe |
  <f bf>4 q q <f a>^(_( q^)_) q |
  bf,2.( 2.) |
  
  s2. s2. | s2. s2. | s2. s2. | s2. s2. |
  s2. s2. | s2. s2. | s2. f,  | s2. s2. |
  s2. s2. | s2. s2. | s2. s2. | s2. s2. |
  
  <bf, f>4 q q <d af> q q |
  <ef g>4^(_( q^)_) q <e bf>2. \breathe |
  <f bf>4 q <d bf> <c bf>\fermata <f a>\fermata q |
  <bf, f>2.^(_( q^)_) |

}

verseOne = \lyricmode {
  \set stanza = "1."
  영 광 의 찬 송 불 러 "" 그 크 신 소 식 전 하 라
  놀 라 운 우 리 의 왕    주 다 시 오 시 네 (다 시)
  다 시 오 네 다 시 오 네
  아 침 이 나 혹 낮 에
  저 녁 이 나 혹 지 금
  다 시 오 네 다 시 오 네 
  오 그 날 얼 마 나 기 쁠 까
  주 님 다 시 오 시 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  숲 과 꽂 들 외 치 고 " " 산 과 들 함 께 노 래 해
  천 지 가 소 리 높 여     주 다 시 오 시 네 (다 시)
}

verseThree = \lyricmode {
  \set stanza = "3."
  심 판 날 주 앞 에 설 때 시 험 과 고 통 끝 나 네
  면 류 관 벗 어 들 고   주 다 시 오 시 네 (다 시)
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
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
      \tempo 4 = 120
    }
  }
}

