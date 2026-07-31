\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "주와 동행하는 것이 영광이로다"
engTitle = "It is Glory Just to Walk With Him"
hymnNumber = "788"
poet = "Avis B.Christiansen, 1895"
composer = "Haldor Lillenas, 1885~1959"
bibleInfo = "히 13:4-5"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4 
}

soprano = \fixed c' {
  \global
  <c e>8. <d f>16 |
  <e g>8. q16 q8. q16 <f a>8. <e g>16 <c e>8. <e g>16 |
  <e c'>8. q16 q8. q16 q4 %break
  
  <g b>8. <f a>16 | 
  <e g>8. q16 q8. q16 <e c'>4 <c e> |
  <b, d>2. \breathe <c e>8. <d f>16 |
  <e g>8. q16 q8. q16 <f a>8. <e g>16 %break
  
  <c e>8. <e g>16 | 
  <e c'>8. q16 <f c'>8. q16 <e c'>4 \breathe <f c'>8. <f d'>16 |
  <g e'>8. <g c'>16 <g b>8. <f a>16 <e g>4 <f d'> |
  <e c'>2. \breathe \bar "||" %break
  
  <c e>8.^\markup "(후렴)" <d f>16 |
  <e g>8. <ds fs>16 <e g>8. <ds fs>16 <e g>4 <e c'> |
  b2( <f b>4) \breathe <b, d>8. <c e>16 |
  <b, f>8. <b, e>16 %break
  
  <d f>8. <e g>16 <g b>4 <f a> |
  g2( <e g>4) \breathe <c e>8. <d f>16 |
  <e g>8. q16 q8. q16 <e c'>4 <e g>8. q16 %break
  
  <f a>8. q16 a8. 16 <fs d'>4\fermata \breathe <fs c'>8. q16 |
  <g b>8. q16 <f b>8. <f a>16 g4 <f d'> |
  c'2( 4) \bar "|."
}

alto = \fixed c' {
  \global
  s4 | s1 | s2.
  s4 | s1 | s1 | s2. 
  s4 | s1 | s1 | s2.
  
  s4  | s1 | f4 4 s2 | s4
  s2. | e4 f s2 | s1 | 
  s4 g8. 16 s2 | s2 f4 s | e4 f e
}

aligner = \soprano

alignerb = \fixed c' {
  \global
  s4 | s1 | s2.
  s4 | s1 | s1 | s2. 
  s4 | s1 | s1 | s2.
  
  s4  | s1 | s4 f f s | s4
  s2. | s4 f f s | s1 | 
  s1  | s1 | g4 a g
}

tenor = \fixed c {
  \global
  s4 | s1 | s2.
  s4 | s1 | g2. s4 | s2. 
  s4 | s1 | s1 | s2.
  
  s4  | s1 | s2. g8. s16 | s4
  <g, g>8. q16 q4 s | s1 | s1 | 
  s1  | s1 | g4 a g
}

bass = \fixed c {
  \global
  <c g>8. q16 |
  <c c'>8. q16 q8. q16 q8. q16 <c g>8. q16 |
  q8. q16 <c a>8. q16 <c g>4 
  
  <c c'>8. q16 |
  q8. q16 q8. q16 <c g>4 q |
  g2. \breathe <c g>8. q16 |
  <c c'>8. q16 q8. q16 q8. q16
  
  <c g>8. q16 |
  q8. q16 <c a>8. q16 <c g>4 \breathe <c a>8. <c af>16 |
  <c g>8. <c c'>16 q8. q16 <g c'>4 <g, b> |
  <c c'>2. \breathe
  
  <c g>8. q16 |
  <c c'>8. q16 q8. q16 q4 <c g> |
  <d g> <e g> <g, g> \breathe f8. <e g>16 |
  <d g>8. q16
  
  s2 <b g>4 |
  <c g> < d b> <c c'> \breathe <c g>8. q16 |
  <c c'>8. q16 q8. q16 <c g>4 <c c'>8. q16 |
  
  <f c'>8. q16 <e cs'>8. q16 <d d'>4\fermata \breathe q8. q16 |
  <g d'>8. q16 q8. <g c'>16 <g b>4 <g, b> |
  c2( 4)
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 를 구 속 하 신 주 와 
  동 행 하 는 이 영 광
  내 영 혼 에 기 쁨 이 로 다
  나 의 발 길 가 는 곳 에
  주 가 함 께 하 시 니
  나 의 평 생 영 광 이 로 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  어 둔 그 늘 가 운 데 도
  주 가 동 행 하 시 니
  주 를 믿 고 의 지 합 니 다
  밝 은 하 늘 밑 에 서 도
  주 가 동 행 하 시 니
  나 의 평 생 영 광 이 로 다

  주 와 동 행 하 는 이 영 광
  주 와 동 행 하 는 이 영 광
  깊 은 골 짝 에 서 나
  험 한 산 길 에 서 도 
  주 는 나 의 영 광 되 도 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 와 함 께 천 국 길 을
  동 행 하 는 이 영 광
  다 시 주 를 떠 남 없 겠 네
  슬 픔 고 통 없 는 곳 에 
  주 와 함 께 사 는 것
  영 원 토 록 영 광 이 로 다
}

verseExtra = \lyricmode {
  영 광 영 광
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "이 몸이 죽을 때"
engTitleB = "Earth's Joy Are But Fleeting"
hymnNumberB = "789"
poetB = "Ananymous"
composerB = "Lowell Mason, 1856"
bibleInfoB = "전 1:1-8"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key g \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \fixed c' {
  \globalB
  <d b>2. <c a>2 <b, g>4 |
  <e g>2 <c e>4 q2.\breathe |
  d2. <d g>2 <d b>4 |
  <d a>2.^(_( q2^)_) b4\rest |
  <d b>2. <c a>2 <b, g>4 | \break
  
  <e g>2 <c e>4 q2. \breathe |
  <b, d>2^(_( <d g>4^)_) <d fs>2 <d a>4 |
  <d g>2.^(_( q2^)_) b4\rest |
  <g d'>2. s2 q4 |
  q2 <g b>4 <g d'>2. \breathe | \break
  
  <g d'>2. s2 q4 |
  <d d'>2 <d b>4 <c a>2. \breathe |
  <d b>2. <c a>2 <b, g>4 |
  <e g>2 <c e>4 q2. \breathe |
  <b, d>2^(_( <d g>4^)_) <d fs>2 <d a>4 |
  <d g>2.^(_( q2^)_) b4\rest \bar "|." |
}

alignerB = \fixed c' {
  \globalB
  <d b>2. <c a>2 <b, g>4 |
  <e g>2 <c e>4 q2. |
  d2. <d g>2 <d b>4 |
  <d a>2.^(_( q2^)_) b4\rest |
  <d b>2. <c a>2 <b, g>4 | 
  
  <e g>2 <c e>4 q2. |
  <b, d>2^(_( <d g>4^)_) q2 <d a>4 |
  <d g>2.^(_( q2^)_) b4\rest |
  <g d'>2. q2 q4 |
  q2 <g b>4 <g d'>2. | 
  
  <g d'>2. q2 q4 |
  <d d'>2 <d b>4 <c a>2. |
  <d b>2. <c a>2 <b, g>4 |
  <e g>2 <c e>4 q2. |
  <b, d>2^(_( <d g>4^)_) <d fs>2 <d a>4 |
  <d g>2.^(_( q2^)_) b4\rest
}

altoB = \fixed c' {
  \globalB
  s2. s2. | s2. s2. | d2. s2. | s2. s2. | s2. s2. |
  
  s2. s2. | s2. s2. | s2. s2. | s2. <g e'>2 s4 | s2. s2. |
  
  s2. <g e'>2 s4 | s2. s2. | s2. s2. | 
  s2. s2. | s2. s2. | s2. s2. |
}

tenorB = \fixed c {
  \globalB
  g2. s2. | s2. s2. | s2. s2 <g, g>4 | s2. s2. | g2. s2. |
  
  s2. s2. | g2( b4) s2. | s2. s2. | s2. s2. | s2 g4 s2. |
  
  s2. s2. | s2 g4 s2. | g2. s2. | 
  s2. s2. | g2( b4) s2. | s2. s2. |
}

bassB = \fixed c {
  \globalB
  g2. <d fs>2 <e g>4 |
  <c c'>2 <c g>4 q2. \breathe |
  <g, b>2. <b, g>2 s4 |
  <d fs>2.^(_( q2^)_) d4\rest |
  g2. <d fs>2 <e g>4|
  
  <c c'>2 <c g>4 q2. \breathe |
  d2. <d a>2 <d c'>4 |
  <g, b>2.^(_( q2^)_) d4\rest |
  <g b>2. <g c'>2 <g b>4 |
  q2 g4 <g b>2. \breathe |
  
  <g b>2. <c c'>2 <g b>4 |
  <fs a>2 g4<d fs>2. \breathe |
  g2. <d fs>2 <e g>4 |
  <c c'>2 <c g>4 q2. \breathe |
  d2. <d a>2 <d c'>4 |
  <g, b>2.^(_( q2^)_) d4\rest |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  이 세 상 소 망 은 구 름 같 고
  부 귀 와 영 화 도 한 꿈 일 세
  이 몸 이 죽 을 때 안 개 같 이 되 나
  주 님 주 신 소 망 영 원 일 세
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  주 예 수 안 믿 는 모 든 영 혼
  영 원 한 고 통 의 지 옥 가 나
  구 원 받 은 영 혼 영 원 한 영 생 복
  주 님 계 신 천 국 나 는 가 네
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  연 약 한 나 의 몸 매 일 매 시
  주 님 의 능 력 에 맡 깁 니 다
  구 주 여 내 몸 을 강 건 케 하 시 고
  주 님 의 뜻 대 로 늘 쓰 소 서
}

verseFourB = \lyricmode {
  \set stanza = "4."
  죄 인 괴 수 라 도 버 리 잖 는
  주 의 크 신 은 혜 한 량 없 네
  십 자 가 의 고 난 너 위 해 받 으 신
  사 랑 의 주 예 수 영 접 하 라
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:minimal-breaking
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
            \context NullVoice = alignerb {
              \alignerb
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
    
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
      \tempo 4 = 120
    }
  }
}
