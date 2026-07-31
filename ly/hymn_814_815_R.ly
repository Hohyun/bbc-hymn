\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   %#(set-paper-size '(cons (* 187 mm) (* 266 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "참새를 돌보시는 주님"
engTitle = "His Eys Is On The Sparrow"
hymnNumber = "814"
poet = "William K., 1939"
composer = "Chas. H. Gabriel, 1856~1932"
bibleInfo = "마 6:25-26"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8 
}

soprano = \fixed c' {
  \global
   af8 bf af f4 df8 |
   ef8 f4( 4.) |
   gf8 af bf df'4 8 |
   af4.( <f af>4) b8\rest | %\break
   
   <f af>8 <ef gf> <d f> bf4 f8 |
   af8 gf4( 4.) |
   gf8 f ef af4 8 |
   f4.( 4) af8 | %\break
   
   <f df'>4 <ef c'>8 ef'8[ <f df'>] <df f> |
   af8 4( 4) 8 |
   <f df'>4 <ef c'>8 \stemDown <gf ef'> \stemUp <f df'> <f af> |
   bf4.( 4) 8 | %\break
   
   <ef c'>4 q8 c'8[ bf] <ef c'> |
   df' af4( 4) f16 16 |
   af4 bf8 af4 bf8 |
   af4.( 4) 8 | %\break
   
   df'4 8 4 8 |
   8 df4( 4) 16 16 |
   af4 f8 8 ef4 |
   df4.( 4) \break
   
   <f af>8^\markup "(후렴)" |
   af4 <gf c'>8 \stemDown <gf ef'>4 \stemUp af8 |
   <f af>8 df'4( 4) <f af>8 |
   af4 <gf c'>8 \stemDown <gf ef'>4 \stemUp af8 |
   f'4.( 4) %\break
   
   <f df'>16 q |
   q4 q8 q4 q8 |
   <df df'>8 df4( 4) 16 16 |
   <df af>4 <df f>8 <c f> <c ef>4 |
   <af, df>4.^(_( 4^)_) b8\rest \bar "|." |
}

alto = \fixed c' {
  \global
  df4.( 4.) |
  c8 df8[ 8] s4. |
  df4.( 4.) |
  df4 ef8 s4. |
  
  s4. f4. |
  f8 ef8[ 8] 4. |
  ef4. c |
  df4 8 df4 f8 |
  
  s4. gf4 s8 |
  f4 8 gf8[ 8] 8 |
  s2. |
  <df gf>4 <d af>8 <ef gf>4. |
  
  s4. ef4 s8 |
  df4. f4 s8 |
  gf4.( 4.) |
  f8[ df ef] f4 8 |
  
  f4.( 4.) |
  df4.( 4.)( |
  4.) c4. |
  df4 bf,8 af,4
  
  s8 |
  gf4 s4. gf8 |
  s8 f8 gf f16 8. s8 |
  gf4 s4. af8 |
  af4 8 4
  
  s8 |
  s2. |
  s8 df4( 4) 16 16 |
  s2. |
  s2. |
}

aligner = \fixed c {
  \global
  af8 bf af f4 df8 |
  ef8 f4( 4.) |
  gf8 af bf df'4 8 |
  af4.( <f af>4) b8\rest | 
   
  <f af>8 <ef gf> <d f> bf4 f8 |
  af8 gf4( 4.) |
  gf8 f ef af4 8 |
  f4.( 4) af8 | 
   
  <f df'>4 <ef c'>8 ef'8[ <f df'>] <df f> |
  af8 4 4 8 |
  <f df'>4 <ef c'>8 <gf ef'> <f df'> <f af> |
  bf4.( 4) 8 | 
   
  <ef c'>4 q8 c'8 bf <ef c'> |
  df' af4( 4) f16 16 |
  af4 bf8 af4 bf8 |
  af4.( 4) 8 | 
   
  df'4 8 4 8 |
  8 df4( 4) 16 16 |
  af4 f8 8 ef4 |
  df4.( 4) 
   
  <f af>8 |
  af4 <gf c'>8 <gf ef'>4 af8 |
  <f af>8 df'4( 4) <f af>8 |
  af4 <gf c'>8 <gf ef'>4 af8 |
  f'4.( 4) 
   
  <f df'>16 q |
  q4 q8 q4 q8 |
  <df df'>8 df4( 4) 16 16 |
  <df af>4 <df f>8 <c f> <c ef>4 |
  <af, df>4.^(_( 4^)_) b8\rest
}

tenor = \fixed c {
  \global
  f8 gf f af4 f8 |
  s4. af4 cf'8 |
  bf af gf s4. |
  f4 gf8 af4 s8 |
  
  s2. | s4. bff4 8 |
  s4. ef4( af8) |
  s2. |
  
  s2. | s2. | s2. |s2. |
 
  s4. af4. | 
  af4 df'8 s4. | 
  s2. | 
  df'8[ f gf] af4 s8 |
  
  s2. | s2. | f4 af8 8 gf4 | f4 gf8 f4
}

bass = \fixed c {
  \global
  df4.( 4.) | <af, af>8 <df af>8[( q]) df4. |
  gf4. <gf bf>4 <bf, gf>8 |
  df4.( 4) d8\rest |
  
  <bf, bf>4. <d bf> |
  <ef bf>4 q8 df4. |
  <c af>4. af, |
  <df af>4 q8 q4<df df'>8 |
  
  <df af>4.^(_( q^)_) |
  q4 <d b>8 <ef c'>8[ q] <af c'> |
  <df af>4. q |
  gf4 f8 ef4. |
  
  <af, af>4. gf |
  f <d b> |
  <ef c'>( <af, c'>) |
  df4.( 4) <df df'>8 |
  
  <cf af>4.^(_( q^)_) |
  <bf, gf>4. <bff, gf> |
  af,4.( 4.) |
  df4.( 4)
  
  <df df'>8 |
  <af c'>4 <af ef'>8 <af c'>4 q8 |
  <df df'> <df af> <df bf> <df af>16 q8. <df df'>8 |
  <ef c'>4 <af ef'>8 <af, c'>4 <af c'>8 |
  <df df'>4 q8 q4
  
  <df af>16 q |
  <cf af>4 q8 q4 q8 |
  <bf, gf>8 q4^(_( <bff, gf>^)_) q16 q |
  \stemUp <af, f>4 \stemDown <af, af>8 q <af, gf>4 |
  <df f>4.^(_( q4^)_) d8\rest |
}

verseOne = \lyricmode {
  \set stanza = "1."
  어 려 운 일 당 할 때 __
  왜 실 망 느 끼 나 __
  영 원 한 집 그 리 며 __
  외 로 워 하 느 냐 __
  주 님 은 나 "-" 의 구 주
  주 님 은 나 의 친 구 __
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 음 성 들 을 때 __
  너 근 심 말 아 라 __
  영 원 한 평 안 줄 때 __
  두 려 움 없 으 리 __
  주 님 은 나 "-" 의 등 불
  주 님 은 나 "-" 의 길 __

  참 새 돌 보 "-" 시 는 주 __
  나 를 늘 돌 보 시 네 __
  참 새 돌 보 시 는 주 __
  나 를 늘 돌 보 시 네 __

  나 는 참 행 복 하 다 __
  나 는 참 기 쁘 다 __
  참 새 돌 보 시 는 주 님 __
  나 를 늘 돌 보 시 네 __
}

verseThree = \lyricmode {
  \set stanza = "3."
  검 은 구 름 일 때 에 __
  왜 시 험 받 느 냐 __
  의 지 할 자 가 없 어 __
  절 망 에 빠 질 때 __
  주 님 이 나 를 이 끄 사
  참 평 안 주 "-" 셨 네 __
}

verseFour = \lyricmode {
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "하루종일 주 찬양"
engTitleB = "Praise Him in the Morning"
hymnNumberB = "815"
poetB = "K.W"
composerB = "Arr. by K. William,1939~"
bibleInfoB = "히 13:15-16"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8
}

sopranoB = \fixed c' {
  \globalB
  d4.( e8) g2 |
  b4.( a8) g2 |
  <d g>8. q16 q8. q16 <d a>4 <d g> |
  q8. q16 q8. q16 <c e>4 d | \break
  
  d4.( e8) g2 |
  b4.( a8) g2 |
  <d g>8. q16 q8. <d g>16 <d b>4 <c a> |
  <b, g>1 \bar "|." | 
}

alignerB = \sopranoB

altoB = \fixed c' {
  \globalB
  b,4 4 4 4 |
  d4 4 b,4 4 |
  s1 |
  s2 s4 c |
  
  b,4 4 4 4 |
  d4 c b, b, |
  s1 |
  s1 |
}

tenorB = \fixed c {
  \globalB
  <g, g>4 q <g, d> q |
  <g, g> q <g, d> q |
  s1 |
  s1 |
  
  <g, g>4 q <g, d> q |
  s1 |
  s1 |
  g1 |
}

bassB = \fixed c {
  \globalB
  s1 | 
  s1 | 
  <g b>8. q16 q8. q16 q4 <e a> |
  <e b>8. q16 q8. q16 <d fs>4 q |
  
  s1 |
  <d fs>4 q <e g> q |
  <d g>8. q16 q8. q16 <d fs>4 q |
  g,4 d g,2 |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  예 수 예 수 
  아 침 에 도 예 수 저 녁 에 도 예 수
  예 수 예 수
  하 루 종 일 주 예 수
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  사 랑 사 랑
  아 침 에 도 사 랑 오 후 에 도 사 랑
  사 랑 사 랑
  하 루 종 일 주 사 랑
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  감 사 감 사
  아 침 에 도 감 사 오 후 에 도 감 사
  감 사 감 사
  하 루 종 일 주 감 사
}

verseFourB = \lyricmode {
  \set stanza = "4."
  찬 양 찬 양
  아 침 에 도 찬 양 저 녁 에 도 찬 양
  찬 양 찬 양 하 루 종 일 주 찬 양
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    %top-margin = 3\mm
    %bottom-margin = 3\mm     
    %page-breaking = #ly:minimal-breaking
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
      \if \on-last-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfoB
        \smallCaps \smaller \engTitleB
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
        \new Staff = upper \with {
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
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
    
        \new Staff = down \with {
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

  \noPageBreak
  
  \score {
    \header {
      title = \korTitleB
      %subtitle = \engTitle
      opus = \hymnNumberB
      poet = \poetB
      composer = \composerB
    } 
  
    <<
      \new ChoirStaff <<
        \new ChordNames \myChordsB
        \context Staff = upper \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          <<
            \context Voice = sop {
              \voiceOne
                \sopranoB
            }
            \context Voice = alto {
              \voiceTwo
                \altoB
            }
            \context NullVoice = alignerb {
             \alignerB
            }
          >>
        }
           
        \context Lyrics = "LyrOneB" \lyricsto "alignerb" { \verseOneB }
        \context Lyrics = "LyrTwoB" \lyricsto "alignerb" { \verseTwoB }
        \context Lyrics = "LyrThreeB" \lyricsto "alignerb" { \verseThreeB }
        \context Lyrics = "LyrFourB" \lyricsto "alignerb" { \verseFourB }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \clef bass
            <<      
              \context Voice = tenor {
                \voiceOne
                \tenorB
              }
              \context Voice = bass {
                \voiceTwo
                \bassB
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
