\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "성서말씀 영원토록 변찮네"
engTitle = "Mid the Storms of Doubt and Unbelief"
hymnNumber = "711"
poet = "Geo. H. Carr"
composer = "Geo. H. Carr"
bibleInfo = "엡 6:13-15"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

aligner = \fixed c' {
  \global
  df8. ef16 | 
  <df f>4 <f af> q8 <df f>8 ef8. df16 |
  <df f>4 e <df f> df8. ef16 | <df f>4 <f af> 
  
  <f df'>8 q <f c'>8. <f bf>16 | 
  <ef ef'>4 <df g> <c af> df8. ef16 |
  <df f>4 <f af> q8 <df f> ef8. df16 | 
  
  <df f>4 <ef af> <df df'> <df af>8. <d bf>16 |
  <ef c'>4 <af ef'> <g ef'> af8. <af c'>16 |
  <af c'>8 <ef bf> <ef af> <ef g> <ef af>4
  
  af4 |
  df'2 <gf c'>4 <ef gf>8. <gf c'>16 | 
  bf2 <df f>4 <df f>8. <ef gf>16 | 
  <f af>4 <af df'> <gf df'> <gf ef'> |
  df'2.
  
  af4 | 
  df'2 <gf c'>4 <ef gf>8. <gf c'>16 |
  bf2 <f af>4 \breathe q8. <ff bf>16 |
  <ef c'>4 <af ef'> <g ef'> <ef g>4 | 
  af2.
  
  <c gf>4 |
  <df f>4 <af, df> <df f> af |
  <df df'>4. <f c'>8 <f bf>4 <f af> |
  <ef g>4 ef <ef g> <ef bf> |
  <ef ef'>4. <ef df'>8 <ef c'>4
  
  af4 | 2 <gf ef'>4 q8. <f f'>16 |
  f2 <bf df'>4 <e c'>8. <e bf>16 | 
  <f af>4 <f df'> <gf df'> <gf ef'> | 
  <f df'>2.
 
  af8. <ef af>16 |
  <f df'>4 <gf ef'>4 <af f'> <af df'>8. q16 |
  <gf ef'>4 <af f'> <bf gf'> <af f'>8. <gf ef'> 16 |
  <gf ef'>4 q <gf ef'>4 q |
  <f df'>2.
  
  af8. <ef af>16 |
  <f df'>4 <gf ef'> <af f'> <af df'>8. 16 |
  <gf ef'>4 <af f'> <bf gf'>  <af f'>8. <gf ef'>16 |
  <f df' af'>4.. q16 <gf c' af'>4.. <f df'>16  |
  <f df'>2.
}
  
soprano = \fixed c' {
  \global
  df8. ef16 | 
  <df f>4 <f af> q8 <df f>8 ef8. df16 |
  <df f>4 e <df f> \breathe df8. ef16 | <df f>4 <f af> \break
  
  <f df'>8 q <f c'>8. <f bf>16 | 
  <ef ef'>4 <df g> <c af> \breathe df8. ef16 |
  <df f>4 <f af> q8 <df f> ef8. df16 | \break
  
  <df f>4 <ef af> <df df'> \breathe <df af>8. <d bf>16 |
  <ef c'>4 s2 af8. <af c'>16 |
  <af c'>8 <ef bf> <ef af> <ef g> <ef af>4\fermata \break
  
  af4^\markup "(후렴)" |
  df'2 <gf c'>4 <ef gf>8. <gf c'>16 | 
  bf2 <df f>4 \breathe <df f>8. <ef gf>16 | 
  <f af>4 s2. |
  df'2. \breathe \break
  
  af4 | 
  df'2 <gf c'>4 <ef gf>8. <gf c'>16 |
  bf2 <f af>4 \breathe q8. <ff bf>16 |
  <ef c'>4 s2 <ef g>4 |
  af2. \break
  
  <c gf>4 |
  <df f>4 <af, df> <df f> af |
  <df df'>4. <f c'>8 <f bf>4 \breathe <f af> |
  <ef g>4 ef <ef g> <ef bf> |
  <ef ef'>4. <ef df'>8 <ef c'>4 \breathe \break
  
  af4 | f'2 s2 |
  df'2 s4 \breathe <e c'>8. <e bf>16 |
  <f af>4 <f df'> <gf df'> <gf ef'> |
  <f df'>2. \breathe \break
  
  af8.^\markup "(생략할 수도 있음)" <ef af>16 |
  <f df'>4 s2. |
  s1 |
  <gf ef'>4 q s2 |
  <f df'>2.\breathe \break
  
  af8. <ef af>16 |
  <f df'>4 \stemDown <gf ef'> <af f'> <af df'>8. 16 |
  <gf ef'>4 <af f'> <bf gf'>\fermata \breathe <af f'>8. <gf ef'>16^\markup "rit" |
  <f df' af'>4.. q16 <gf c' af'>4.. <f df'>16 \stemUp |
  <f df'>2. \bar "|."
  
  
}

alto = \fixed c' {
  \global
  df8. 16 | s2. df8. 16 | s4 df s df8. 16 | s2
  s2 s2. df8. 16 | s2. df8. 16 |
  s1 | s4 <af ef'>4 <g ef'> af8. 16 | s2.
  
  g4 | f4 4 s2 | f4 4 s2 |s4 <af df'> <gf df'> <gf ef'> | f4 gf f 
  af8.[ gf16] | f4( 4) s2 | f4( 4) s2 | s4 <af ef'> <g ef'> s4 | ef4( c df) 
  s4 | s2. df8[ ef] | s1 | s4 ef s2 | s2.
  
  af4 | 4 4 <gf ef'>4 q8. <f f'>16 |
  f4 cf' <bf df'>^\fermata s4 | s1 | s2.
  
  af8. s16 | 
  s4 <gf ef'>4 <af f'> <af df'>8. q16  |
  <gf ef'>4 <af f'> <bf gf'>\breathe <af f'>8. <gf ef'> 16|
  s2 <gf ef'>4 q | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s2
  s2 | s1 | s1
  s1 | s1 | s2.
  
  af4 | af2 s2 | s1 | s1 | df'4 bf af
  af4 | s1 |s1 | s1 | s2.
  s4 | s2. af4 | s1 | s2. g4 | s2 af4 
  s4 | s1 | s1 | s1 | s2. 
  
  af8. 16 | s1 | s1 | s1 | s2.
  af8. 16 | s1 | s1 | s1 | <df af>2.^\fermata
}

bass = \fixed c {
  \global
  <df f>8. <df gf>16 |
  <df af>4 <df df'> q8 <df af> <df gf>8. <df f>16 |
  <df af>4 <df g> <df af> \breathe <df f>8. <df gf>16 | <df af>4 q
  
  <bf, bf>8 <bf, df'> <c ef'>8. <df df'>16 |
  <ef c'>4 <ef bf> <af, af> \breathe <df f>8. <df gf>16 |
  <df af>4 <df df'> q8 <df af> <df gf>8. <df f>16 |
  
  <df af>4 <c af> <bf, bf> \breathe <f af>8. <ff af>16 |
  <ef af>4 <ef c'> <ef df'> <f c'>8. <f af>16 |
  <ef ef'>8 <ef df'> <ef c'> <ef df'> <af c'>4\fermata
  
  af4 | 
  df4( 4) <ef af> <af, c'>8. <af, ef'>16 |
  <df df'>4^(_( q^)_) <df af>4 \breathe q8. q16 |
  <df df'>4 <f df'> <c bf> <af, c'> |
  df2.
  
  af4 | 
  <df af>4^(_( q^)_) <ef af> <af, c'>8. <af, c'>16 |
  <df df'>4^(_( q^)_) q \breathe q8. q16 |
  <ef af>4 <c c'> <bf, df'> <ef df'> |
  <af, c'>^(_( <gf ef'> <f df'>) \breathe
  
  <ef af>4 | 
  <df af>4 <df f> <ef af> ef8[ c] |
  <bf, bf>4. <c a>8 <df bf>4 \breathe <d bf> |
  <ef bf>4 <ef g> <ef bf> ef8[ df] |
  <c af>4. <ef g>8 af4 \breathe
  
  <af c'>4 |
  <df df'>4^(_( <f df'>^)_) <af c>4 q8. q16 |
  <bf df'>4^(_( <f df'>^)_) <gf df' gf'>_\fermata \breathe <g df'>8. q16 |
  <af df'>4 <f af> <ef bf> <af c'> |
  <df df'>2. \breathe
  
  af8. gf16 |
  <f af>4 <ef c'> <bf df'> <f df'>8. q16 |
  <gf bf>4 <f bf> < ef ef'> \breathe <f df'>8. <gf df'>16 |
  <af df'>4 <f af> <ef bf> <af c'> |
  <df df'>2. \breathe
  
  af8. gf16 |
  <f af>4 <ef c'> <bf df'> <f df'>8. q16 |
  <gf bf>4 <f bf> <ef ef'>\fermata\breathe <f df'>8. <gf df'>16 |
  <af df'>4.. q16 <af, af ef'>4.. <df af>16 |
  df8[ bf, af, f,] df,4 \fermata
}

verseOne = \lyricmode {
  \set stanza = "1."
  세 상 죄 악 풍 파 맹 렬 하 여 도
  영 원 한 그 말 씀 날 붙 드 시 네
  세 상 일 은 쉬 지 않 고 변 하 나
  성 경 말 씀 은 영 원 토 록 변 찮 네
  
  그 말 씀 내 가 믿 고 
  거 기 굳 게 서 겠 네
  그 말 씀 의 지 하 면
  나 의 강 한 성 되 네
  
  큰 폭 풍 내 게 닥 쳐 도
  두 려 워 하 지 않 으 리
  그 말 씀 굳 게 믿 고 
  나 의 소 망 삼 겠 네
  
  생 명 의 말 씀 내 가 믿 고 서
  거 기 굳 게 서 겠 네
  능 력 의 말 씀 굳 게 믿 어 서
  나 의 소 망 삼 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  죄 악 세 상 환 란 질 고 많 아 도 
  주 의 말 씀 나 를 붙 드 시 겠 네
  헛 된 세 상 쉬 지 않 고 변 하 나
  성 경 말 씀 은 영 원 토 록 변 찮 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  크 신 구 원 주 의 사 랑 알 리 려
  독 생 자 가 우 리 찾 아 오 셨 네
  그 의 약 속 소 망 얻 게 하 시 며
  주 의 피 로 써 구 원 하 여 주 셨 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  성 경 말 씀 주 의 뜻 을 알 리 고
  영 생 으 로 인 도 하 여 주 시 네
  모 든 슬 픔 고 통 없 게 하 시 며
  내 게 힘 주 사 승 리 하 게 하 시 네 
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
        %\override LyricText.font-name = "HCR Dotum Ext"
        \override LyricText.font-series = #'bold
      }
    }
    \midi {
      \tempo 4 = 90
    }
  }
}

