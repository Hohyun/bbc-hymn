\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% Hymn Info
korTitle = "담대한 주의 군사여"
engTitle = "There's a Royal Banner"
hymnNumber = "745"
poet = "Daniel W. Whittle, 1840~1901"
composer = "James McGranahan, 1840~1907"
bibleInfo = "딤후 2:3"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <bf, d>8. <c ef>16 |
  <d f>4 q q <d bf> |
  <bf, d>8. <c ef>16 <d f>8. <ef g>16 <d f>4 \breathe <f bf>8. q16 |
  <ef a>4 <ef c'> %\break
  
  <ef g> <ef a> |
  <d bf>2. \breathe <bf, d>8. <c ef>16 |
  <d f>4 q q <d bf> |
  <bf, d>8. <c ef>16 <d f>8. <ef g>16 <d f>4 \breathe %\break
  
  <f bf>8. q16 |
  <f a>4 <f c'> <e g> <e c'> |
  f2. \breathe f8.^\markup "(후렴)" <f a>16 |
  c'2^( <a c'>4) <a d'>8. <a c'>16 | %\break
  
  bf2^( <f bf>4) \breathe <d bf> |
  <ef ef'> <g ef'> <f d'>8. <f c'>16 bf8. d'16 |
  c'2^( 4) \breathe f8. 16 | %\break
  
  <d bf>4 <f d'> f'2 |
  <ef g>4 <g bf> ef'2 \breathe |
  <f d'>4 q q8 <d bf> <ef c'>8. q16 |
  <d bf>2. \bar "|."
  
}

aligner = \soprano

alignerb = \fixed c' {
  <bf, d>8. <c ef>16 |
  <d f>4 q q <d bf> |
  <bf, d>8. <c ef>16 <d f>8. <ef g>16 <d f>4 \breathe <f bf>8. q16 |
  <ef a>4 <ef c'> \break
  
  <ef g> <ef a> |
  <d bf>2. \breathe <bf, d>8. <c ef>16 |
  <d f>4 q q <d bf> |
  <bf, d>8. <c ef>16 <d f>8. <ef g>16 <d f>4 \breathe \break
  
  <f bf>8. q16 |
  <f a>4 <f c'> <e g> <e c'> |
  f2. s4 | s4 a4 f s4 |
  s4 d f s | s1 | f8 g a bf c'4 s4 |
  s1 | s1 | s1 | s2.
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s2
  s2 | s4 \tiny \stemUp \tuplet 3/2 { <d bf>8 q q } q4 \stemDown \normalsize s4 | s1 | s2. 
  s4 | s1 | s4 \tiny \stemUp \tuplet 3/2 { <c f>8 q q } q4 \stemDown \normalsize f8. s16 | a4 f s2 |
  bf4 d s2 | s2. f4 | f8 g a bf a[ g] f8. ef16 |
  s2 f4_( 4) | s2 g4_( 4) s1 | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s2
  s4 f4 | s4 \stemDown \tiny \tuplet 3/2 { <bf, f>8 q q } q4 s4 \normalsize \stemUp | s1 | s2.
  s4 | s1 | s4 \stemDown \tiny \tuplet 3/2 { <f a>8 q q } q4 s4 \normalsize \stemUp | s1
  s2. bf4 | s1 | s4. g8 c'4 s4 |
  s1 | s1 | s1 | s2.
  
}

bass = \fixed c {
  \global
  <bf f>8. q16 |
  <bf, bf>4 q q <bf, f> |
  q8. q16 <bf, bf>8. q16 q4 \breathe <bf, d'>8. q16 |
  <f c'>4 <f a> 
  
  <f c'> f |
  <bf, f>2. \breathe q8. q16 |
  q4 <bf, bf> q <bf, f> |
  q8. q16 <bf, bf>8. q16 q4 \breathe 
  
  <bf, d'>8. q16 |
  <c c'>4 <c a> <c c'> <c bf> |
  <f a>2. \breathe q8. <f c'>16 |
  <f ef'>4 <a ef'> <c' ef'> <f f'>8. <f ef'>16 |
  
  <bf, d'>4 <f bf> <bf d'> \breathe af |
  <g bf> <ef bf> <bf, bf>8. <c a>16 <d bf>8. <bf, bf>16 |
  <f a>8 <e bf> <f a> g f[ ef] \breathe <d a>8. <c a>16 |
  
  <bf, bf>4 q <bf, d'>^(_( <d bf>^)_) |
  <ef bf>4 q q^(_( <c c'>^)_) \breathe |
  <f bf>4 q q8 q <f a>8. q16 |
  <bf, bf>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  선 한 싸 움 위 해 받 은 십 자 가
  군 기 를 굳 게 잡 고
  왕 의 기 수 되 어 용 감 스 럽 게
  찬 미 하 며 나 가 세
}

verseTwo = \lyricmode {
  \set stanza = "2."
  원 수 들 이 우 리 대 적 하 여 도
  군 기 를 굳 게 잡 고
  깃 발 아 래 우 리 굳 게 뭉 치 세
  진 리 승 리 하 겠 네
  
  나 가 세 나 가 세
  담 대 한 주 의 군 사 여
  목 숨 다 하 여 싸 우 면
  최 후 승 리 얻 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  산 과 바 다 넘 어 어 느 곳 이 나
  승 리 소 식 전 하 며
  피 에 젖 은 주 의 군 기 붙 들 고
  기 쁜 소 식 전 하 세
  
  (나 가)
  (나 가)
  (주 의 군 사 여)
}

verseFour = \lyricmode {
  \set stanza = "4."
  영 광 스 런 새 벽 속 히 이 르 러
  왕 의 왕 이 임 할 때
  주 가 우 리 원 수 모 두 파 하 고
  십 자 가 승 리 하 리
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
    %last-bottom-spacing.padding = #0
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
        \context Lyrics = "LyrThree" \lyricsto "alignerb" { \verseThree }
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

