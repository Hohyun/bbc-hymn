\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "예수의 사랑 놀랍다"
engTitle = "Isn't the Love of Jesus, Something Wonderful"
hymnNumber = "746"
poet = "John W. Perterson, 1921~"
composer = "John W. Perterson, 1921~"
bibleInfo = "요일 4:7-10"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global<ef c'>8. q16 q8. <df bf>16 <c af>8. q16 q8. <c ef>16 |
  <df f>2 <c ef> |
  <c af>8. q16 q8. <df bf>16 <ef c'>8. q16 %\break
  
  <df bf>8. <c af>16 |
  bf2. b4\rest |
  <ef c'>8. q16 q8. <df bf>16 <c af>8. q16 q8. <c ef>16 |
  <df f>2 <c ef> |
  <df g>8. q16 q8. <df af>16 <df bf>8. q16 <ef c'>8. <df bf>16 |
  af2 d'8.\rest g16[ af8. bf16] |
  \tuplet 3/2 { <ef c'>8^(_(^\markup "(후렴)" q q^)_) } q8. <df bf>16 <c af>8. <c ef>16 %\break
  
  <c af>8. <ef c'>16 |
  <ef ef'>4. <ef df'>8 <ef c'>2 |
  <ef df'>4. <ef c'>8 <ef bf>2 |
  <ef c'>4. <ef bf>8 <ef af>4 <ef bf> |
  \tuplet 3/2 { <ef c'>8^(_( q q^)_) } q8. <df bf>16 %\break
  
  <c af>8. <c ef>16 <c af>8. <ef c'>16 |
  <ef ef'>4. <ef df'>8 c'2 |
  <f bf>8. q16 q8. <f df'>16 <ef c'>4 <df bf> |
  af2. b4\rest \bar "|." |
}

aligner =  \fixed c' {
  \global<ef c'>8. q16 q8. <df bf>16 <c af>8. q16 q8. <c ef>16 |
  <df f>2 <c ef> |
  <c af>8. q16 q8. <df bf>16 <ef c'>8. q16 
  
  <df bf>8. <c af>16 |
  bf2. b4\rest |
  <ef c'>8. q16 q8. <df bf>16 <c af>8. q16 q8. <c ef>16 |
  <df f>2 <c ef> |
  <df g>8. q16 q8. <df af>16 <df bf>8. q16 <ef c'>8. <df bf>16 |
  af2 s2 |
  \tuplet 3/2 { <ef c'>8 q q } q8. <df bf>16 <c af>8. <c ef>16 
  
  <c af>8. <ef c'>16 |
  <ef ef'>4. <ef df'>8 <ef c'>2 |
  <ef df'>4. <ef c'>8 <ef bf>2 |
  <ef c'>4. <ef bf>8 <ef af>4 <ef bf> |
  \tuplet 3/2 { <ef c'>8 q q } q8. <df bf>16
  
  <c af>8. <c ef>16 <c af>8. <ef c'>16 |
  <ef ef'>4. <ef df'>8 c'2 |
  <f bf>8. q16 q8. <f df'>16 <ef c'>4 <df bf> |
  af2. b4\rest |
}

alignerb = \fixed c' {
  s1 | s1 | s2.
  s4 | s1 | s1 | s1 |
  s1 | s1 | s2.
  s4 | s1 | s2. af8. bf16 | s1 | s2
  s2 | s1 | s1 | s1 |
}

alto = \fixed c' {
  \global
  s1 | s1 | s2.
  s4 df d ef s | s1 s1 |
  s1 | c4 df c b,\rest | s2.
  s4 | s1 | s1 | s1 | s2
  s2 | s2 ef4_( gf) | s1 | c4_(df c) s4 |
}

tenor = \fixed c {
  \global
  s2 <af, ef>8. q16 q8. s16 | s1 | <af, ef>8. q16 q8. q16 s4
  
  <af, ef>8. q16 | af,2\rest af,8.\rest \tiny \stemDown  df16[ c8. bf,16] \stemUp \normalsize |
  s2 <af, ef>8. q16 q8. s16 | s1 |
  
  s1 | af4^( f ef) s4 | s2.
  s4 | s2 af2 | s1 | af4. s8 s2 | s2
  s2 | s1 | s1 | af4^( f ef) s4 |
}

bass = \fixed c {
  \global
  <af, af>8. q16 q8. q16 s4 s8. q16 | 
  q2 q | 
  s2 q8. q16 
  
  s4 | 
  <ef g>4^(_( <f af> <ef g>^)_) a4\rest |
  <af, af>8. q16 q8. q16 s4 s8. q16 | 
  q2 q |
  
  <ef bf>8. q16 q8. <ef af>16 <ef g>8. q16 q8. q16 |
  af,2. d4\rest |
  \tuplet 3/2 { <af, af>8^(_( q q^)_) } q8. q16 q8. q16 
  
  q8. q16 |
  <c af>4. <bf g>8 af4_( c) |
  <ef g>4. <ef af>8 <ef g>4 <f af>8. <g bf>16 |
  af4. <ef g>8 <c af>4 <bf, g> |
  \tuplet 3/2 { <af, af>8^(_( q q^)_) } q8. q16
  
  q8. q16 q8. q16 |
  <c af>4. <bf, g>8 <af, af>2 |
  <df af>8. q16 q8. <bf, af>16 <ef af>4 <ef g> |
  af,2. d4\rest \bar "|." |
  
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  어 둔 세 상 밝 혀 주 는 말 씀
  육 신 되 어 오 신 예 수 님
  하 늘 나 라 영 광 다 버 리 고
  나 의 생 명 구 해 주 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  온 세 상 에 충 만 한 주 은 혜
  멀 리 떠 난 영 혼 깨 우 네
  주 를 떠 나 방 황 하 던 나 를 
  사 랑 으 로 품 어 주 셨 네 
 
  주 님 의 사 랑 신 기 하 고
  놀 랍 다 놀 랍 다 놀 랍 다 오
  주 님 의 사 랑 신 기 하 고
  놀 랍 다 생 각 수 록 놀 랍 다.
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 님 통 해 나 타 난 큰 사 랑
  측 량 할 자 세 상 에 없 네
  십 자 가 로 내 죄 속 했 으 니
  영 원 무 궁 찬 미 하 겠 네 
}

verseExtra = \lyricmode {
  정 말
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
           \context NullVoice = alignerb {
             \alignerb
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
    
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

