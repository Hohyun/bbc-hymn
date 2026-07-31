\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% Hymn Info
korTitle = "거듭나야 한다"
engTitle = "Ye Must Be Born Again"
hymnNumber = "717"
poet = "Willam T. Sleeper, 1819~1904"
composer = "Ceorge C. Stebbins, 1846~1925"
bibleInfo = ""
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

aligner = \fixed c' {
  \global
  <bf, ef>8 |
  <ef g>8 q q q <f af> <g bf> |
  <af c'>8 <g bf> <fs a> <g bf>4 <g bf>16^(_( q^)_) |
  <g bf>8 <f af> <ef g> 
  
  <d f>8 <ef g> <f af> |
  <f af>8 <ef g> fs <ef g>4 <bf, ef>8 |
  <ef g>8 q q q <f af> <g bf> | 
  
  <af c'>8 <g bf> <fs a> <g bf>4 <ef g>8 |
  <d f>4 <f bf>8 <ef bf>4 <ef a>8 |
  bf4.^( 4) 8 |
  <g bf>4 q8 
  
  <ef g>8[ <f af>] <g bf> |
  af4 8 <af c'>4 q8 |
  q4 q8 <d f>[ <ef g>] <f af> |
  g4 f8 ef4 <d bf>8 |
  <ef g>8. q16 q8 
  
  <d af>8. q16 q8 | <ef bf>8 q q <ef c'>4 <af ef'>8 | 
  <g bf>4 <ef g>8 q4 <d f>8 |
   ef4 c8 bf,4 
}

soprano = \fixed c' {
  \global
  <bf, ef>8 |
  <ef g>8 q q q <f af> <g bf> |
  <af c'>8 <g bf> <fs a> <g bf>4 \breathe <g bf>16^(_( q^)_) |
  <g bf>8 <f af> <ef g> %\break
  
  <d f>8 <ef g> <f af> |
  <f af>8 <ef g> fs <ef g>4 \breathe <bf, ef>8 |
  <ef g>8 q q q <f af> <g bf> | %\break
  
  <af c'>8 <g bf> <fs a> <g bf>4 \breathe <ef g>8 |
  <d f>4 <f bf>8 <ef bf>4 <ef a>8 |
  bf4.^( 4) \bar "||" 8^\markup "(후렴)" |
  <g bf>4 q8 %\break
  
  <ef g>8[ <f af>] <g bf> |
  c'4.^( <af c'>4) \breathe q8 |
  q4 q8 <d f>[ <ef g>] <f af> |
  bf4.^( 4) \breathe <d bf>8 |
  <ef g>8. q16 q8 %\break
  
  <d af>8. q16 q8 | <ef bf>8 q q <ef c'>4 \breathe s8 | 
  <g bf>4 <ef g>8 q4 <d f>8 |
  ef4.^( 4) \bar "|."
}

alto = \fixed c' {
  \global
  s8 | s2. | s2. | s4.
  s4. | s4 ef8 s4. | s2. |
  s2. |s2. | d4_( ef8 f4) af8 | s4.
  
  s4. | af4 8 s4. | s2. | g4 f8 ef4 d8 | s4.
  s4. | s4. s4 <af ef'>8 | s2. | ef4_( c8) bf,4
}

tenor = \fixed c {
  \global
  s8  | s2. | s2. s4.
  s4. | s2. | s2. |
  s2. | s2. | bf4^( g8 af4) s8 | s4.
  s4. | s2. | s2. | s2. | s4.
  s4. | s4. af4 s8 | s4 bf8 s4. | g4 af8 g4
}

bass = \fixed c {
  \global
  <ef g>8 |
  <ef bf>8 q q q q <ef ef'> |
  q8 q q q4 \breathe <ef bf>16^(_( 16^)_) |
  <bf, bf>8 q q
  
  q8 q q | 
  <ef bf>8 q <ef a> <ef af>4 \breathe <ef g>8 |
  <ef bf>8 q q q q <ef ef'> |
  
  <ef ef'>8 q q q4 \breathe <ef bf>8 |
  <f bf>4 <f d>8 <f c'>4 q8 |
  bf4._( 4) \bar "||" <bf, d'>8 |
  <ef ef'>4 q8 
  
  <ef bf>4 <ef ef'>8 |
  <af ef'>4 q8 q4 \breathe <af, ef'>8 |
  <bf, d>4 q8 <bf, bf>4 q8 |
  <ef bf>4 <ef af>8 <ef g>4 \breathe <bf, bf>8 |
  <ef bf>8. q16 q8
  
  <f af>8. q16 q8 |
  <g bf>8 q q af4 \breathe <af c'>8 |
  <bf ef'>4 bf8 <bf, bf>4 <bf, af>8 |
  ef4._( 4) \bar "|."
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 예 수 님 소 문 을 듣 고 난 후
  한 __ 밤 중 에 찾 아 온 유 대 관 원
  주가 중 심 을 아 시 고 이 르 시 되
  거 듭 나 야 한 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 예 수 님 우 리 게 주 신 말 씀
  천_하 아 무 도 피 할 자 하 나 없 네
  이 말 씀 이 네 게 도 해 당 되 니
  거 듭 나 야 한 다
  
  거 듭 나 야 한 다 (거 듭) 
  거 듭 나 야 한 다 (거 듭)
  네게 진 실 로 진 실 로 이 르 노 니
  거 듭 나 야 한 다 (거_ _듭)
}

verseThree = \lyricmode {
  \set stanza = "3."
  이 나 그 네 세 상 을 하 직 한 후
  하_늘 나 라 에 들 어 가 찬 미 할 때
  이 영 생 을 가 질 자 누 구 인 가
  거 듭 난 자 로 다
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 성 령 의 도 움 을 힘 입 어 서
  나_의 죽 었 던 영 혼 이 다 시 났 네
  내 영 혼 이 주 님 을 찬 미 함 은
  거 듭 난 연 고 라 
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %top-margin = 7\mm
    %bottom-margin = 7\mm    
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

