\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "거기 늙음이 전혀 없네"
engTitle = "Where We Will Never Grow Old"
hymnNumber = "806"
poet = "Jas. C. Moore, 19th Century"
composer = "Jas. C. Moore, 19th Century"
bibleInfo = "계 21:4-5"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  ef 8 f |
  <ef g>4. fs8 <ef g>4 <bf, ef>2 \breathe <ef g>8 <f a> |
  <g bf>4. <fs a>8 <g bf>4 <ef g>2 \breathe <g bf>8 q | %\break
  
  s2. <g bf>8 <ef g>4. ef4 |
  <d f>2.^(_( q2^)_) \breathe ef8 f |
  <ef g>4. fs8 <ef g>4 <bf, ef>2 <ef g>8 <f af> | %\break
  
  <g bf>4. <fs a>8 <g bf>4 <ef g>2 \breathe <g bf>8 q |
  s2. <g bf>8 <ef g>4. <d f>4 |
  ef2.^(_( 2.^)_) \breathe | \break
  
  <g bf>8^\markup "(후렴)" <ef g>4. <g bf>4 ef'2. |
  s2. <g bf>2 \breathe q8 q |
  q4 <ef g> q q8 <bf, f>4. <c ef>4 |
  <d bf>2.^(_( q^)_) \breathe | %\break
  
  <g bf>8 <ef g>4. <g bf>4 ef'2. |
  s2. <g bf>2 \breathe q8 q |
  q4 <ef g> ef <ef g>8 q4. <d f>4 |
  <bf, ef>2.^(_( 2^)_) \bar "|." 
}

aligner = \fixed c' {
  \global
  ef 8 f |
  <ef g>4. fs8 <ef g>4 <bf, ef>2 <ef g>8 <f a> |
  <g bf>4. <fs a>8 <g bf>4 <ef g>2 <g bf>8 q | 
  
  <af c'>4 <af ef'> <af c'> <g bf>8 <ef g>4. ef4 |
  <d f>2.^(_( q2^)_) ef8 f |
  <ef g>4. fs8 <ef g>4 <bf, ef>2 <ef g>8 <f af> | 
  
  <g bf>4. <fs a>8 <g bf>4 <ef g>2 <g bf>8 q |
  <af c'>4 <af ef'> <af c'> <g bf>8 <ef g>4. <d f>4 |
  ef2.^(_( 2.^)_) | 
  
  <g bf>8 <ef g>4. <g bf>4 ef'2. |
  <af c'>8 <af ef'>4. q4 <g bf>2 q8 q |
  q4 <ef g> q q8 <bf, f>4. <c ef>4 |
  <d bf>2.^(_( q^)_) | 
  
  <g bf>8 <ef g>4. <g bf>4 ef'2. |
  <af c'>8 <af ef'>4. q4 <g bf>2 q8 q |
  q4 <ef g> ef <ef g>8 q4. <d f>4 |
  <bf, ef>2.^(_( 2^)_) 
}

alto = \fixed c' {
  \global
  ef8 8 | s4. ef8 s1 | s1. |
  
  <af c'>4 <af ef'> <af c'> s8 s4. ef4 |
  s2. s2 ef8 8 |
  s4. ef8 s1 |
  
  s1. |
  <af c'>4 <af ef'> <af c'> s2. |
  ef2. 2. | 
  
  s2. g4 af bf | 
  <af c'>8 <af ef'>4. <af c'>4 s2. | 
  s1. |
  s1. |
  
  s2. g4 af bf | 
  <af c'>8 <af ef'>4. <af c'>4 s2. | 
  s2 ef4 s2. |
  s2. s2
}

tenor = \fixed c {
  \global
  s4  | s1. | s1. |
  s1. | s1. | s1. |
  s1. | s2. s8 bf4. s4 | s1. |
  
  s2. ef'2. | s1. | s1. | s1. |
  s2. ef'2. | s1. | s1. |s2. s2
}

bass = \fixed c {
  \global
  <ef g>8 <ef af> |
  <ef bf>4. <ef a>8 <ef bf>4 <ef g>2 \breathe <ef bf>8 q |
  <ef ef'>4. q8 q4 <ef bf>2 \breathe <ef ef'>8 q |
  
  <af ef'>4 <af c'> <af ef'> <ef ef'>8 <ef bf>4. <c a>4 |
  <bf, bf>2.^(_( q2^)_) \breathe <ef g>8 <ef af> |
  <ef bf>4. <ef a>8 <ef bf>4 <ef g>2 <ef bf>8 q |
  
  <ef ef'>4. q8 q4 <ef bf>2 \breathe <ef ef'>8 q |
  <af ef'>4 <af c'> <af ef'> <bf ef'>8 bf4. <bf, af>4 |
  <ef g>2.^(_( q^)_) \breathe |
  
  <ef ef'>8 <ef bf>4. <ef ef'>4 ef f g |
  <af ef'>8 <af c'>4. <af ef'>4 <ef ef'>2 \breathe <ef ef'>8 q |
  q4 <ef bf> q q8 <d bf>4. <c a>4 |
  <bf, bf>2.^(_( q^)_) \breathe |
  
  <ef bf>8 q4. <ef ef'>4 ef f g |
  <af ef'>8 <af c'>4. <af ef'>4 ef'2 \breathe <ef ef'>8 q |
  q4 <ef bf>4 <c a> <bf, bf>8 q4. <bf, af>4 |
  <ef g>2.^(_( q2^)_) 
}

verseOne = \lyricmode {
  \set stanza = "1."
  하 늘 너 머 저 편 머 나 먼 강 변 에
  아 름 다 운 내 고 향 있 네
  주 가 예 비 하 신 고 통 없 는 그 곳
  늙 고 죽 음 이 영 없 다 오
}

verseTwo = \lyricmode {
  \set stanza = "2."
  다 시 방 항 할 일 없 는 그 곳 에 서
  나 의 영 혼 이 편 히 쉴 때
  만 국 왕 주 님 께 영 원 찬 미 하 리
  거 기 죽 음 이 다 시 없 네

  늙 음 없 네 늙 음 없 네
  거 기 늙 음 이 전 혀 없 네
  늙 음 없 네 늙 음 없 네
  거 기 늙 음 이 전 혀 없 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 달 려 갈 길 모 두 마 친 후 에
  주 가 면 류 관 내 게 줄 때
  모 든 슬 픔 고 통 모 두 사 라 지 고
  앞 서 간 성 도 만 나 리 라
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
      \tempo 4 = 100
    }
  }
}

