\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "새 생명 주신 예수님"
engTitle = "He Lifted Me"
hymnNumber = "716"
poet = "Charles H. Gabriel, 1856~1932"
composer = "Charles H. Gabriel, 1856~1932"
bibleInfo = "롬 5:6-8"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

aligner = \fixed c' {
  \global
  <a, c>8 |
  q8 <a, d> q4. <a, c>8 |
  <c a>8 q <d bf>4. <c a>8 |
  <c a>8 <bf, g> c4. <bf, g>8 |
  <bf, g>8 < a, f> q4. 
  
  <a, c> 8 |
  q8 <a, d> q4. <a, c>8 |
  <c a>8 q <d bf>4. <c a>8 |
  <b, a>8 <b, g> q4 <b, d>4 |
  bf,8 c e d c 
  
  c8^\markup "(후렴)" |
  <a, c>8 <c f> <f a>4. <f c'>8 |
  <e c'>8 <c e> q4. c8 |
  <c e>8 <e g> <e bf>4. <e d'>8 |
  <f d'>8 <f c'> q4.
  
  c8 |
  <c f>8 <f a> <f c'>4. q8 |
  <ef d'>8 <ef c'> <d bf>4. q8 |
  <d f>8 <df g> <c a>4. <f c'>8 |
  <f a>8 <e g> <c f>4. 
}

soprano = \fixed c' {
  \global
  <a, c>8 |
  q8 <a, d> q4. <a, c>8 |
  <c a>8 q <d bf>4. \breathe <c a>8 |
  <c a>8 <bf, g> c4. <bf, g>8 |
  <bf, g>8 < a, f> q4. \breathe \break
  
  <a, c> 8 |
  q8 <a, d> q4. <a, c>8 |
  <c a>8 q <d bf>4. \breathe <c a>8 |
  <b, a>8 <b, g> q4 <b, d>4 |
  g2^( 8)\fermata \bar "||" \break
  
  c8^\markup "(후렴)" |
  <a, c>8 <c f> <f a>4. <f c'>8 |
  <e c'>8 <c e> q4. \breathe c8 |
  <c e>8 <e g> <e bf>4. <e d'>8 |
  <f d'>8 <f c'> q4. \breathe \break
  
  c8 |
  <c f>8 <f a> <f c'>4. q8 |
  <ef d'>8 <ef c'> <d bf>4. \breathe q8 |
  <d f>8 <df g> <c a>4. <f c'>8 |
  <f a>8 <e g>\fermata <c f>4. \bar "|."
}

alto = \fixed c' {
  \global
  s8 | s2. | s2. | s4 bf,4. s8 | s4 s4.
  s8 | s2. | s2. | s2. | bf,8 c e d c_\fermata
  
  bf,8 | s2. | s4 s4. c8 | s2. | s4 s4.
  c8 | s2. | s2. | s2. | s4 s4.
}

tenor = \fixed c {
  \global
  <f, f>8 | q q q4. q8 | q q q4. \breathe q8 | s2. | <f, c>8 q q4. \breathe
  <f, f>8 | q q q4. q8 | q q q4. \breathe q8 | q q q4 q4 | e8 8 g f e\fermata \bar "||"
  
  s8 | <f, f> <f, a> s2 | s2. | s2. s4 s4. 
  s8 | s2. | s8 <a, f> <bf, f>4. \breathe q8 | s2. | s4 s4. \bar "|."
}

bass = \fixed c {
  \global
  s8 | s2. | s2. | <c e>8 q q4. q8 | s4 s4.
  s8 | s2. | s2. | s2. | c2_( 8)_\fermata 
  
  <c e>8 | s4 <f c'>4. <f a>8 | <c g> <c bf> q4. \breathe <c e>8 | <c g> <c bf> <c g>4. <c bf>8 | <f bf> <f a> q4. \breathe
  <f a>8 | q <f c'> <f a>4. q8 | q s2 s8 | <bf, f>8 q <c f>4. <c a>8 | <c c'> <c bf> <e a>4. 
}

verseOne = \lyricmode {
  \set stanza = "1."
  하 늘 로 서 오 신 예 수 
  내 영 혼 을 구 하 시 려
  십 자 가 에 달 리 시 사
  내 죄 대 속 했 네 (대 속 했 네) 
  
  사 망 의 길 로 헤 맬 때
  은 혜 로 서 날 붙 드 사
  새 생 명 주 신 예 수 님
  그 이 름 을 찬 양 하 리
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 예 수 알 기 이 전 에
  주 나 위 해 죽 으 셨 네
  주 내 맘 에 영 접 할 때 
  속 죄 함 얻 었 네 (죄 속 했 네)
}

verseThree = \lyricmode {
  \set stanza = "3."
  가 시 로 찔 린 그 이 마
  못 박 히 신 그 손 과 발
  내 죄 로 당 한 큰 고 통
  주 사 랑 아 닌 가 (사 랑 일 세)
}

verseFour = \lyricmode {
  \set stanza = "4."
  나 이 제 천 국 길 가 니
  내 영 혼 이 기 뻐 하 네
  놀 라 운 주 의 사 랑 을
  어 찌 다 말 할 까 (말 못 하 네)
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 7\mm
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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

