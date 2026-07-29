\version "2.24.0"

\include "./hymn_init_b.ly"

\language "english"

% Hymn Info
korTitle = "주의 선하심과 자비하심"
engTitle = ""
hymnNumber = "740"
poet = "John. W.Peterson, 1921" 
poetb = "Alfred B. Smith"
composer = "John. W.Peterson, 1921"
composerb = "Alfred B. Smith"
bibleInfo = "시 23:1-6"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  bf,8. 16 |
  <bf, ef>4 q q |
  <ef g> <bf, f> <bf, ef> |
  <af, c> <c ef>2^(_( |
  q^)_)\breathe q8. q16 |
  <d f>4 q q | \break
  
  <d f>4 <c ef> <d f> |
  <ef g>2.^(_( |
  q2^)_) \breathe bf,4 |
  <bf, ef> q q |
  <ef g> <bf, f> <bf, ef> | \break
  
  <af, c> <c af>2^(_( |
  q^)_) \breathe <ef af>8. q16 |
  <ef g>4 <bf, f> <bf, ef> |
  <bf, d> <af, c> <bf, d> |
  <bf, ef>2.^(_( |
  q2^)_) \breathe \bar "||" \break
  
  <ef g>8.^\markup "(후렴)" <ef fs>16 |
  g8.[ f16] <bf, ef>4 <d g> |
  g8.[ f16] <bf, ef>4 <ef g> |
  <g bf>4. <af c'>8 bf[ ef] |
  <ef g>2 \breathe q8. q16 |
  <d f>2 q8. q16 | \break
  
  <d f>4 <c ef> <d f> |
  g4.^(_( fs8 g[f] |
  <bf, ef>2^)_) \breathe <ef g>8. fs16 |
  g8.[ f16] <bf, ef>4 <ef g> |
  g8.[ f16] <bf, ef>4 <ef g> |
  <g bf>4. <af c'>8 bf[ ef] | \break
  
  <ef g>2 \breathe q8. q16 |
  <d f>2 q8. q16 |
  q4 <d g> <d f> |
  <bf, ef>2.^(_( |
  q2^)_) \breathe s4 |
  s2. | \break
  
  s2 <af c'>4 | 
  <g bf>2 <af c'>4 |
  <g bf> <ef g> \breathe s4 |
  s2. |
  s4 <ef c'> <f d'>8 s |
  d'2 c'4 |
  
  bf2 \breathe <ef g>8. fs16 |
  g8.[ f16] <bf, ef>4 <ef g> |
  g8.[ f16] <bf, ef>4 <ef g> |
  <g bf>4. <af c'>8 bf[ ef]  | 
  <ef g>2 \breathe q8. q16 |
  <d f>2 q8. q16 | \break
  
  <d f>4 <d g> <d f> |
  <bf, ef>2.^(_( |
  q2^)_) \breathe <ef g>8. q16 |
  <d f>2 q8. <d g>16 |
  <d af>4 <d g> <d f> |
  <bf, ef>2.^(_( |
  q2^)_) \bar "|." 
}

aligner = \fixed c' {
  \global
  bf,8. 16 |
  <bf, ef>4 q q |
  <ef g> <bf, f> <bf, ef> |
  <af, c> <c ef>2^(_( |
  q^)_)\breathe q8. q16 |
  <d f>4 q q | \break
  
  <d f>4 <c ef> <d f> |
  <ef g>2.^(_( |
  q2^)_) \breathe bf,4 |
  <bf, ef> q q |
  <ef g> <bf, f> <bf, ef> | \break
  
  <af, c> <c af>2^(_( |
  q^)_) \breathe <ef af>8. q16 |
  <ef g>4 <bf, f> <bf, ef> |
  <bf, d> <af, c> <bf, d> |
  <bf, ef>2.^(_( |
  q2^)_) \breathe \bar "||" \break
  
  <ef g>8.^\markup "(후렴)" <ef fs>16 |
  g8. f16 <bf, ef>4 <d g> |
  g8. f16 <bf, ef>4 <ef g> |
  <g bf>4. <af c'>8 bf ef |
  <ef g>2 \breathe q8. q16 |
  <d f>2 q8. q16 | \break
  
  <d f>4 <c ef> <d f> |
  g4.^(_( fs8 g[f] |
  <bf, ef>2^)_) \breathe <ef g>8. fs16 |
  g8. f16 <bf, ef>4 <ef g> |
  g8. f16 <bf, ef>4 <ef g> |
  <g bf>4. <af c'>8 bf ef | \break
  
  <ef g>2 \breathe q8. q16 |
  <d f>2 q8. q16 |
  q4 <d g> <d f> |
  <bf, ef>2.^(_( |
  q2^)_) \tuplet 3/2 { <bf ef'>8 q q } | 
  <af ef'>2 q8. q16 | \break
  
  c4 d4 <af c'>4 | 
  <g bf>2 <af c'>4 |
  <g bf> <ef g> \breathe \tuplet 3/2 { <bf ef'>8 q q } |
  g2 8. 16 |
  g4 <ef c'> <f d'>8 q |
  d'2 c'4 |
  
  bf2 \breathe <ef g>8. fs16 |
  g8. f16 <bf, ef>4 <ef g> |
  g8. f16 <bf, ef>4 <ef g> |
  <g bf>4. <af c'>8 bf ef  | 
  <ef g>2 \breathe q8. q16 |
  <d f>2 q8. q16 | \break
  
  <d f>4 <d g> <d f> |
  <bf, ef>2.^(_( |
  q2^)_) \breathe <ef g>8. q16 |
  <d f>2 q8. <d g>16 |
  <d af>4 <d g> <d f> |
  <bf, ef>2.^(_( |
  q2^)_) \bar "|." 
}

alto = \fixed c' {
  \global
  bf,8. 16 | s2. | s2. | s2. | s2. | s2. |
  s2. | s2. | s2 bf,4 | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2
  
  s4  | ef4 s2 | ef4 s2 | s2 g4 | s2. | s2. |
  s2. | ef2. | s2 s8. ef16 | ef4 s2 | ef4 s2 | s2 g4 |
  
  s2. | s2. | s2. | s2. | s2 
  \once \override TupletBracket.direction = #UP 
  \tuplet 3/2 { <bf ef'>8 q q } | <af ef'>2 q8. q16 |
  
  <af ef'>4 <bf d'> s4 | s2. | s2 
  \once \override TupletBracket.direction = #UP 
  \tuplet 3/2 { <bf ef'>8 q q } | q2 q8. q16 | 
  q4 s4. <g ef'>8 |  f2. |
  
  f2 s8. ef16 | ef4 s2 | ef4 s2 | s2 g4 | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  s4 | s2. | s2. | <af, ef>4 s2 | s2 <f, af>8. q16 | s2. |
  s2. | s2. | s2. | s2. <ef, ef bf>4 <f, d af> <g, ef g> |
  <af, ef>4 q2^(_( | q^)_) \breathe s4 | s2. | s2. | s2. | s2
  
  s4  | bf8.[ af16]  s2 | bf8.[ af16] s2 | s2. | s2. | s2. |
  s2. | bf4.^( a8 bf[ af]  | g2^) s4 | bf8.[ af16] s2 | bf8.[ af16] s2 | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. |
  s2. | bf8.[ af16] s2 | bf8.[ af16] s2 | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. | s2
}

bass = \fixed c {
  \global
  <ef g>8. q16 |
  q4 q q |
  <ef bf> <ef af> <ef g> |
  s4 <af, af>2^(_( |
  q ^)_) \breathe s4 |
  <bf, af>4 q q |
  
  q <c g> <bf, bf> |
  <ef bf>2.^(_( |
  q2^)_) \breathe <ef g>4 |
  q q q |
  s2. |
  
  s2. | s2 <f, c'>8. q16 |
  <bf, bf>4 <bf, af> <bf, g> |
  <bf, f> q <bf, af> |
  <ef g>2.^(_( |
  q2^)_) \breathe \bar "||"
  
  %후렴
  <ef bf>8. <ef a>16 |
  ef4 <ef g> <ef bf> |
  ef <ef g> <ef bf> |
  <ef ef'>2 q4 |
  <ef bf>2 \breathe q8. q16 |
  <bf, af>2 q8. q16 |
  
  <bf, af>4 <c g> <bf, bf> |
  ef2._( |
  2_) \breathe <ef bf>8. <ef a>16 |
  ef4 <ef g> <ef bf> |
  ef <ef g> <ef bf> |
  <ef ef'>2 q4 |
  
  <ef bf>2 \breathe q8. q16 |
  <bf, af>2 q8. q16 |
  <bf, af>4 <bf, bf> <bf, af> |
  <ef g>2.^(_( |
  q2^)_) \breathe \tuplet 3/2 {<ef df'>8 q q } |
  <af c'>2 q8. q16 |
  
  <af c'>4 <af d'> <af ef'> |
  <ef ef'>2 q4 |
  q4 <ef bf> \breathe \tuplet 3/2 { q8 q q } |
  <c c'>2 q8 <c bf> |
  <f a>4 q q8 q |
  <bf, bf>2 <c a>4 |
  
  <d bf>2 \breathe <ef bf>8. <ef a>16 |
  ef4 <ef g> <ef bf> |
  ef4 <ef g> <ef bf> |
  <ef ef'>2 q4 |
  <ef bf>2 \breathe q8. q16 |
  <bf, af>2 q8. q16 |
  
  <bf, af>4 <bf, bf> <bf, af> |
  <ef g>2.^(_( | 
  q2^)_) \breathe <ef bf>8. q16 |
  <bf, af>2 q8. <bf, bf>16 |
  <bf, c'>4 <bf, bf> <bf, af> |
  <ef g>2.^(_( |
  q2^)_) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  정 처 없 는 길 나 그 네 길 로 
  죄 의 어 둔 밤 헤 매 일 때
  주 내 손 을 붙 잡 아 주 사
  나 는 천 국 길 가 고 있 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  곤 한 내 영 혼 소 생 케 하 며
  시 시 때 때 로 힘 주 시 네
  잔잔 한 물 가 인 도 하 시 며
  나 의 발 걸 음 붙 드 시 네
  
  주 의 선 하 심 과 자 비 하 심 나 를 따 르 네 
  나 의 한 평 생 다 하 도 록
  주 의 선 하 심 과 자 비 하 심 나 를 따 르 네
  나 의 한 평 생 다 하 도 록
  주 님 의 집 안 에 영 원 히 거 하 겠 네
  주 님 이 베 푸 신 잔 치 초 대 받 겠 네
  주 의 선 하 심 과 자 비 하 심 나 를 따 르 네 
  나 의 한 평 생 다 하 도 록
  나 의 한 평 생 다 하 도 록
}

verseThree = \lyricmode {
  \set stanza = "3."
  험 한 골 짜 기 홀 로 헤 맬 때
  주 가 그 곳 에 동 행 하 네
  주의 강 한 손 날 인 도 하 니
  주 가 예 비 한 집 에 서 리
}

verseFour = \lyricmode {
  \set stanza = "4."
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %top-margin = 7\mm
    %bottom-margin = 7\mm
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    %% tip: adjust pading number and set ragged-last-bottom to ##f to fit one page 
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    last-bottom-spacing.padding = #0
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
      poetb = \poetb
      composer = \composer
      composerb = \composerb
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

