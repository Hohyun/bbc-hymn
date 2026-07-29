\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "놀라우신 은혜"
engTitle = "Wonderful Grace of Jesus"
hymnNumber = "785"
poet = "K. William, 1939"
composer = "Haldor Lillenas"
bibleInfo = "엡 2:1-8"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key df \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <f af>4 q8. q16 q4 q |
  <e bf>2 <f af> \breathe |
  <f df'>4 <df f>8. <ef gf>16 <f af>4 <ef gf> |
  <df f>2^(_( f) \breathe | %\break
  
  <df f>4 q8. q16 q4 q |
  <df bf>2 <f df'> \breathe |
  <ef c'>4 q8. <ef af>16 <ef bf>4 q |
  <ef af>2^(_( af4^)_) b4\rest | %\break
   
  <f af>4 q8. q16 q4 q |
  <e bf>2 <f af> \breathe |
  <f df'>4 q8. q16 <f ef'>4 <af df'> |
  <gf df'>2^(_( <gf bf>4^)_) \breathe %\break
   
  <gf bf>8 q |
  <e df'>4 <e c'>8. <e bf>16 <e df'>4 <e bf> |
  <f af>2 <e g> \breathe |
  <f af>2 <gf ef'> |
  <f df'>2. b4\rest | %\break
   
  <df f>8.^\markup "(후렴)" q16 q8. q16 q8. q16 q8. q16 |
  <c gf>8. q16 q8. q16 q4 q \breathe |
  <df f>8. q16 q8. q16 %\break
  
  <df f>8. q16 q8. q16 |
  <ef gf>8. q16 q8. q16 
  << { <ef gf>2 } \\
     { \stemUp \tiny 
       \tuplet 3/2 { \shiftOn gf8^[( ef f]) } 
       \tuplet 3/2 { gf8^[( af bf]) }
       \normalsize
     }
  >>
  \breathe |
  <gf c'>2 <gf ef'>4 <gf c'> | %\break
  
  <f df'>2 s4 <f df'> |
  <ef c'>2 <df bf>4 ef | %\break
  
  <c af>8. <df bf>16 <ef c'>8. <df bf>16 <c af>4 
  \tiny \tuplet 3/2 { gf8[( f ef]) } \normalsize \breathe |
  df8. ef16 <df f>8. <ef gf>16 <f af>8. <gf bf>16 <f af>8. <df f>16 |
  %\break
  
  <c af>2 <c ef> \breathe |
  df8. <c ef>16 <df f>8. <f af>16 <f df'>8. <f c'>16 <f ef'>8. <af df'>16 |
  <gf df'>2^(_( q4^)_) \breathe %\break
  
  <gf bf>4 |
  <e df'>8. q16 q8. q16 <e ef'>4 <e df'> |
  <f f'> <f df'> <gf gf'> <gf ef'> \breathe |
  <f df' af'>2 <gf c'> |
  <f df'>2. b4\rest \bar "|." |
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 | s2 ef |
  s1 | s1 | s1 | s2 gf4 s |
  s1 | s1 | s1 | s2 s4
  s4 | s1 | s1 | s1 | s1 |
  
  s1 | s1 | s2
  s2 | s1 | s1 |
  s2 \breathe <af f'>4 s | s2. df4 |
  s2. b,4\rest | df8. 16 s2. |
  s1 | df8. s16 s2. | s2.
  s4 | s1 | s1 | s1 | s1 |
}

aligner = \fixed c' {
  \global
  <f af>4 q8. q16 q4 q |
  <e bf>2 <f af> |
  <f df'>4 <df f>8. <ef gf>16 <f af>4 <ef gf> |
  <df f>2^(_( f) | 
  
  <df f>4 q8. q16 q4 q |
  <df bf>2 <f df'> |
  <ef c'>4 q8. <ef af>16 <ef bf>4 q |
  <ef af>2^(_( af4^)_) b4\rest | 
   
  <f af>4 q8. q16 q4 q |
  <e bf>2 <f af> |
  <f df'>4 q8. q16 <f ef'>4 <af df'> |
  <gf df'>2^(_( <gf bf>4^)_) 
   
  <gf bf>8 q |
  <e df'>4 <e c'>8. <e bf>16 <e df'>4 <e bf> |
  <f af>2 <e g> |
  <f af>2 <gf ef'> |
  <f df'>2. b4\rest | 
   
  <df f>8. q16 q8. q16 q8. q16 q8. q16 |
  <c gf>8. q16 q8. q16 q4 q |
  <df f>8. q16 q8. q16 
  
  <df f>8. q16 q8. q16 |
  <ef gf>8. q16 q8. q16 <ef gf>2 |
  <gf c'>2 <gf ef'>4 <gf c'> | 
  
  <f df'>2 q4 <f df'> |
  <ef c'>2 <df bf>4 ef | 
  
  <c af>8. <df bf>16 <ef c'>8. <df bf>16 <c af>2 |
  df8. ef16 <df f>8. <ef gf>16 <f af>8. <gf bf>16 <f af>8. <df f>16 |
  
  <c af>2 <c ef> |
  df8. <c ef>16 <df f>8. <f af>16 <f df'>8. <f c'>16 <f ef'>8. <af df'>16 |
  <gf df'>2^(_( q4^)_) 
  
  <gf bf>4 |
  <e df'>8. q16 q8. q16 <e ef'>4 <ef df'> |
  <f f'> <f df'> <gf gf'> <gf ef'> |
  <f df' af'>2 <gf c'> |
  <f df'>2.
}

alignerb = \fixed c' {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 |
  
  %후렴
  df8. ef16 f8. gf16 af8. bf16 af8. f16 | 
  af2 ef | 
  df8. ef16 f8. af16
  
  df'8. c'16 ef'8. df'16 | 
  c'2^( 4) s | 
  ef8. f16 gf8. af16 c'4 af |
  
  df8. ef16 f8. af16 df'4 af | 
  g8. f16 ef8. f16 g8. df'16 c'8. bf16 |
  
  af2^( 4) s4 | s1 |
  
  af4 4 4 4 | 
  s2. df8. 16 | 
  gf8. 16 8. 16 4 
  
  s4 | s1 |s1 | s1 | s1 |
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | \tiny \shiftOn af4 gf f ef \normalsize |
  s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 |
  
  df8. ef16 f8. gf16 af8. bf16 af8. f16 | 
  af2 ef \breathe | 
  df8. ef16 f8. af16
  
  df'8. c'16 ef'8. df'16 | 
  c'2^( 4) s | 
  ef8. f16 gf8. af16 c'4 af |
  
  df8. ef16 f8. af16 df'4 af | 
  g8. f16 ef8. f16 g8. df'16 c'8. bf16 |
  
  af2^( 4) s4 | s2 df8. 16 8. s16 |
  
  s2 af4 4 | s1 | s2.
  
  s4 | s1 | s4 df' s2 | s1 | s1 |
}

bass = \fixed c {
  \global
  <df df'>4 q8. q16 <df af>4 q |
  <df g>2 <df af> \breathe |
  q4 q8. q16 <af, af>4 <c af> |
  <df af>2^(_( <c a>^)_) \breathe |
  
  <bf, bf>4 q8. q16 q4 q |
  q2 q2 \breathe |
  <ef af>4 q8. <ef c'>16 <ef df'>4 q |
  <af, c'>2^(_( q4^)_) f,4\rest |
  
  <df df'>4 q8. q16 <df af>4 q |
  <df g>2 <df af> \breathe |
   q4 q8. q16 <df c'>4 q |
   <gf bf>2^(_( <gf df'>4^)_) \breathe
   
   <gf df'>8 q |
   <g bf>4 <g c'>8. <g df'>16 <g bf>4 <g df'> |
   <gf df'>2 <bff df'> \breathe |
   <af df'>2 <af, c'> |
   <df df'>2. d4\rest |
   
   %후렴
   df8. ef16 f8. gf16 af8. bf16 af8. f16 |
   af2 ef \breathe |
   df8. ef16 f8. af16
   
   df'8. c'16 ef'8. df'16 | 
   c'2 4 d4\rest \breathe | 
   ef8. f16 gf8. af16 c'4 af |
   
   df8. ef16 f8. af16 df'4 af | 
   g8. f16 ef8. f16 g8. df'16 c'8. bf16 |
   
   af2 4 d4\rest \breathe |
   <df f>8. <ef gf>16 <f af>8. q16 df8. 16 8. <df af>16 |
   
   <ef af>4 q af gf \breathe |
   <f af>8. <ef af>16 <df af>8. q16 q8. q16 <df cf'>8. q16 |
   <gf bf>8. q16 q8. q16 q4 \breathe
   
   <gf df'>4 |
   <g bf>8. q16 q8. q16 q4 q |
   <af df'>4 cf' <bf df'> <bff df'> \breathe |
   <af df'>2 <af, ef'> |
   <df df'>2. d4\rest |
}

verseOne = \lyricmode {
  \set stanza = "1."
  놀 라 운 주 의 은 혜 검 은 죄 다 씼 어
  오 측 량 못 할 사 랑 나 영 원 히 찬 양
  내 죄 짐 벗 겨 주 사 참 자 유 주 신 주
  놀 라 운 예 수 님 의 은 혜 찬 양 해
}

verseTwo = \lyricmode {
  \set stanza = "2."
  놀 라 운 주 의 보 혈 만 민 에 게 주 사
  내 모 든 죄 다 씻 어 날 구 원 해 주 신
  오 사 랑 의 예 수 님 참 구 주 되 신 주
  놀 라 운 예 수 님 의 보 혈 찬 양 해

  놀 랍 고 도 무 한 하 신 예 수 님 의 은 혜
  깊 고 깊 은 바 다 보 다 더 깊 은 은 혜
  오 그 은 혜 놀 라 운 구 원 감 사 찬 양 해
  십 자 가 의 흘 린 보 배 피 로
  나 의 모 든 죄 를 다 씻 은
  오 놀 라 우 신 예 수 님 의 이 름 찬 양 해
}

verseThree = \lyricmode {
  \set stanza = "3."
  놀 라 운 주 의 성 령 내 마 음 에 주 사
  한 없 는 힘 과 사 랑 다 감 사 찬 양 해
  하 나 님 의 자 녀 로 영 생 을 주 셨 네
  놀 라 운 예 수 님 의 사 랑 찬 양 해
}

verseExtra = \lyricmode {
  놀 랍 고 도 무 한 하 신 은 혜
  바 다 보 다 더 깊 은 은 혜
  산 보 다 __ "" 높 고 샘 물 같 은 은 혜
  그 큰 구 원 감 사 찬 양 해
  
  보 배 피 로 나 의 죄 를 다 씻 은
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
            \context NullVoice = alignerb {
              \alignerb
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

