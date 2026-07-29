\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 187 mm) (* 266 mm)))
   %#(set-paper-size '(cons (* 201.5 mm) (* 286 mm)))
   top-margin = 9\mm
   bottom-margin = 9\mm
   print-all-headers = ##t
   print-page-number = ##f
   
   %print-first-page-number = ##t
   %ragged-bottom = ##f
   %ragged-last-bottom = ##f
   % page-breaking = #ly:one-page-breaking
   last-bottom-spacing.padding = #2
   
   %scoreTitleMarkup = #(hymnScoreTitleMarkup hymnNumber)
   %#(define fonts (make-pango-font-tree "NamumSquare" "DejaVu Sans Mono" "DejaVu Sans Mono" (/ staff-height pt 20)))
   #(define fonts (make-pango-font-tree "Gowun Batang" "DejaVu Sans Mono" "DejaVu Sans Mono" (/ staff-height pt 20)))
}


% Hymn Info
korTitle = "주 예수님과 매일 속삼임"
engTitle = "Just a Little Talk With Jesus"
hymnNumber = "763"
poet = "Anonymous"
composer = "Anonymous"
bibleInfo = "살전 5:16-17"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  <ef c'>8 |
  <af c'>8 q q q s2 |
  s4. <f df'>8 <ef c'>4. q8 |
  <af c'>16 q q q s2. |
  s2 s4. <ef df'>8 | %\break
  
  <af c'>8 q q q s2 |
  s4. <f df'>8 <ef c'>4. q8 |
  <af c'>16 q q q q8 s8 s2 |
  c'4( df' c'8) %\break
  
  b8\rest^\markup "(후렴)" b4\rest |
  <af c'>16 q q q q8 q <f df'> <ef c'> b4\rest |
  <af c'>16 q q q q8 q <f df'> <ef c'> b4\rest |
  s1 | s2 s8 %\break
  
  b8\rest b4\rest |
  s1 |
  s1 |
  <af c'>16 q q q q8 s8 s2 |
  f'8 c'8 df'8 8 c'4. \bar "|."
}

aligner = \fixed c' {
  \global
  <ef c'>8 |
  <af c'>8 q q q <c' ef'>4. <c' e'>8 |
  <bf f'>8 <af f'> q <f df'>8 <ef c'>4. q8 |
  <af c'>16 q q q <af ef'>8 <bf ef'> <c' ef'> q <bf ef'> <af d'> |
  <bf ef'>4^(_( <bf d'> <bf df'>4.^)_) <ef df'>8 | 
  
  <af c'>8 q q q <c' ef'>4. <c' e'>8 |
  <bf f'>8 <af f'> q  <f df'>8 <ef c'>4. q8 |
  <af c'>16 q q q q8 <bf df'>8 <c' ef'> q <bf df'> q  |
  c'4( df' c'8) \break
  
  b8\rest b4\rest |
  <af c'>16 q q q q8 q <f df'> <ef c'> b4\rest |
  <af c'>16 q q q q8 q <f df'> <ef c'> b4\rest |
  <bf ef'>8 q <bf d'> q <bf df'> b8\rest b4\rest | 
  <c' ef'>8 q q q q
  
  b8\rest b4\rest |
  <af f'>16 q q q q8 q q q b4\rest |
  <af ef'>16 q q q q8 q q q b4\rest |
  <af c'>16 q q q q8 <bf df'>8 <c' ef'> q <bf df'> q |
  af2
}

alignerb = \fixed c {
   s8 | s1 | s1 | s1 | s1 |
   s1 | s1 | s1 | s2 s8
   af,8 bf, c  | s2. c8 ef | s2. c8 af, | s2 s8 ef f g | s8 s2
   af,8 bf, c  | s2. c8 ef | s2. c8 af, | s1 | af8 ef f f ef4.
   
}

alto = \fixed c' {
  \global
  s8 |
  s2 <c' ef'>4. <c' e'>8 |
  <bf f'>8 <af f'> q s8 s2 |
  s4 <af ef'>8 <bf ef'> <c' ef'> q <bf ef'> <af d'> |
  <bf ef'>4^(_( <bf d'> <bf df'>4.^)_) s8 | 
  
  s2 <c' ef'>4. <c' e'>8 |
  <bf f'>8 <af f'> q s8 s2 |
  s4. <bf df'>8 <c' ef'> q <bf df'> q |
  af2( 8)
  
  s4. |
  s1 |
  s1 |
  <bf ef'>8 q <bf d'> q <bf df'> b8\rest b4\rest |
  <c' ef'>8 q q q q
  
  s4. |
  <af f'>16 q q q q8 q q q b4\rest |
  <af ef'>16 q q q q8 q q q b4\rest |
  s4. <bf df'>8 <c' ef'> q <bf df'> q |
  af2 4. 
}

tenor = \fixed c {
  \global
  <af, ef>8 |
  q q q q q4. <af c'>8 |
  s1 | <af, ef>16 q q q s4 af8 af s4 |
  s1 |
  
  <af, ef>8 q q q q4. <af c'>8 |
  s1 |
  s1 |
  af4( f ef8)
  
  s4. |
  <af, ef>16 q q q q8 q <af, f> s a4\rest |
  <af, ef>16 q q q q8 q <af, f> s a4\rest |
  s2 s8 b8\rest c'4\rest |
  s8 s2
  
  f8\rest f4\rest |
  s2. b4\rest |
  <af, ef>16 q q q q8 q q q a4\rest |
  s1 |
  af8 ef f f ef4.
}

bass = \fixed c {
  \global
  s8 |
  s1 |
  <df af>8 q q q <af, af>4. q8 |
  s4 <c af>8 <c ef> af af <g bf> <f bf> |
  <ef g>4^(_( <f af> <ef g>4.^)_) q8 |
  
  s1 |
  <df af>8 q <df f> q <af, af>4. q8 |
  <f af>16 q q q <ff af>8 q <ef af> q <ef g> q |
  af,2( 8)
  
  af,8 c ef |
  s2 s8 <af, af> c ef |
  s2 s8 <af, af> c ef |
  <ef g>8 q <f af> q <ef g> ef f g |
  af8 <f af> <ef af> <c af> <af, af>
  
  af,8 bf, c |
  <df f>16 q q q q8 q q q c bf, |
  s2. c8 ef |
  <f af>16 q q q q8 q <ef af> q <ef g> q |
  af,2 af,4. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 한 때 길 잃 고 죄 중 에 헤 멜 때
  주 예 수 나 를 구 해 생 명 주 셨 네
  내 이 름 생 명 책 에 기 록 된 이 후
  주 예 수 님 과 매 일 속 삭 입 니 다.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 가 끔 두 렵 고 또 낙 심 될 때 에
  곧 의 심 구 름 주 의 햇 빛 가 리 며
  내 주 께 지 은 죄 내 맘 을 상 할 때
  주 예 수 님 과 매 일 속 삭 입 니 다.
  
  주 와 함 께 속 삭 이 세
  우 리 고 통 다 고 하 세
  귀 기 울 이 사 응 답 하 시 네
  우 리 맘 문 활 짝 열 면
  하 늘 축 복 다 주 시 네
  속 삭 임 을 통 해 온 전 케 되 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 괴 롬 당 하 여 눈 물 이 나 올 때
  주 위 로 하 는 나 의 친 구 되 시 니
  내 근 심 걱 정 을 다 대 신 지 시 는
  주 예 수 님 과 매 일 속 삭 입 니 다.
}

verseExtra = \lyricmode {
  다 같 이 모 두 주 님 분 명 히
  주 앞 에 주 가 주 와 온 전 케 되 네
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

