\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "일하러 나가세"
engTitle = "To the Work"
hymnNumber = "774"
poet = "Fanny J. Crosby, 1820~1915"
composer = "W. H. Doane, 1832~1915"
bibleInfo = "마 16:16"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <f a>8. <g bf>16 |
  <a c'>4 q8. q16 q4 <c f>8 <c g> |
  <f a>4 q8. q16 q4 \breathe <e g>8 <f a> |
  <g bf>4 q8. <fs a>16 %\break
  
  <g bf>4 <f a>8 <g bf> | \break
  s4 <a c'>8. <gs b>16 <a c'>4\fermata \breathe <f a>8. <g bf>16 |
  <a c'>4 q8. q16 q4 <c f>8 <c g> | %\break
  
  <f a>4 q8. q16 q4 \breathe q8 q | \break
  g4 <g c'>8 q <g b>4 <g c'>8 <g d'> |
  <g e'>4 q8. <f d'>16 <e c'>4\fermata \bar "||" %\break
  
  <f a>8.^\markup "(후렴)" <g bf>16 |
  <a c'>2. s8. <f a>16 |
  <e g>2. \breathe q8. <f a>16 |
  <g bf>2. <e c'>8. <g bf>16 |
  <f a>2. \breathe %\break
  
  <f a>8. <f bf>16 |
  c'2. <f f'>8. <f e'>16 |
  d'2. \breathe <g e'>4 |
  <f f'>8 <f c'> <f d'>8. <g bf>16 <f a>4 <e g> |
  f2. \bar "|."
}

aligner = \fixed c' {
  \global
  <f a>8. <g bf>16 |
  <a c'>4 q8. q16 q4 <c f>8 <c g> |
  <f a>4 q8. q16 q4 <e g>8 <f a> |
  <g bf>4 q8. <fs a>16 
  
  <g bf>4 <f a>8 <g bf> |
  q4 <a c'>8. <gs b>16 <a c'>4 <f a>8. <g bf>16 |
  <a c'>4 q8. q16 q4 <c f>8 <c g> | 
  
  <f a>4 q8. q16 q4 q8 q |
  g4 <g c'>8 q <g b>4 <g c'>8 <g d'> |
  <g e'>4 q8. <f d'>16 <e c'>4
  
  <f a>8. <g bf>16 |
  <a c'>2. q8. <f a>16 |
  <e g>2. q8. <f a>16 |
  <g bf>2. <e c'>8. <g bf>16 |
  <f a>2. 
  
  <f a>8. <f bf>16 |
  c'2. <f f'>8. <f e'>16 |
  d'2. <g e'>4 |
  <f f'>8 <f c'> <f d'>8. <g bf>16 <f a>4 <e g> |
  f2.
}


alignerb = \fixed c' {
  \global
   <f a>8. <g bf>16 |
  <a c'>4 q8. q16 q4 <c f>8 <c g> |
  <f a>4 q8. q16 q4 <e g>8 <f a> |
  <g bf>4 q8. <fs a>16 
  
  <g bf>4 <f a>8 <g bf> |
  q4 <a c'>8. <gs b>16 <a c'>4 <f a>8. <g bf>16 |
  <a c'>4 q8. q16 q4 <c f>8 <c g> | 
  
  <f a>4 q8. q16 q4 q8 q |
  g4 <g c'>8 q <g b>4 <g c'>8 <g d'> |
  <g e'>4 q8. <f d'>16 <e c'>4
  
  s4 | 
  s4 f8. 16 4 s4 | 
  s4 f8. 16 4 s4 | 
  s4 f8. 16 4 s4 | 
  s4 f8. 16 4
  
  s4 | 
  s4 e f s  | 
  s4 fs g s | 
  s1 | 
  f2.
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s2
  s2 | <bf d'>4 s2. | s1 |
  s1 | g4 s2. | s2.
  
  s4 | s2. <a f'>8. s16 | s1 | s1 | s2.
  s4 | f e f s | f fs g s | s1 | f2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s2
  s2 | s1 | s1 |
  s1 | s1 | s2.
  
  s4 | s1 | s1 | s1 | s2.
  s4 | s1 | bf4 s2 c'4 | s1 | s2.
}

bass = \fixed c {
  \global
  <f c'>8. q16 |
  q4 q8. q16 q4 <f a>8 <f bf> |
  <f c'>4 q8. q16 q4 \breathe q8 q |
  <c c'>4 q8. q16
  
  q4 <f c'>8 q |
  q4 q8. q16 q4 \breathe q8. q16 |
  q4 q8. q16 q4 <f a>8 <f bf>
  
  <f c'>4 q8. q16 q4 \breathe q8 q |
  q4 <c e'>8 q <g d'>4 <g e'>8 <g b> |
  <g c'>4 q8. <g b>16 <c c'>4\fermata
  
  d4\rest |
  d4\rest <f c'>8. q16 q4 q8. q16 |
  <c c'>4 q8. q16 q4 \breathe d4\rest |
  d4\rest q8. q16 q4 q8. q16 |
  <f c'>4 q8. q16 q4 \breathe
  
  q8. <g c'>16 |
  <a c'>4 <g bf> <f a> q8. <a c'>16 |
  bf4 <a c'> <g bf> \breathe c'8[ bf] |
  <a c'>8 <f a> <bf, bf>8. <bf, d'>16 <c c'>4 <c bf> |
  <f a>2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  일 하 러 나 가 세 우 리 는 주 의 종
  앞 서 간 주 님 의 발 자 취 따 르 세
  성 령 이 주 시 는 새 로 운 힘 으 로
  닥 치 는 모 든 일 감 당 케 하 시 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  일 하 러 나 가 세 주 린 자 먹 이 세
  곤 한 자 이 끌 어 주 앞 에 인 도 해
  우 리 의 영 광 은 주 님 의 십 자 가 
  이 소 식 고 하 세 구 원 이 임 했 네
  
  힘 쓰 세 힘 쓰 세 
  모 든 힘 바 치 세
  복 음 을 전 하 세 
  주 다 시 오 실 때 까 지
}

verseThree = \lyricmode {
  \set stanza = "3."
  일 하 러 나 가 세 모 든 힘 합 하 세
  어 둠 의 권 세 는 영 원 히 망 하 나
  여 호 와 이 름 은 영 원 히 빛 나 리
  기 쁘 게 전 할 말 구 원 이 임 했 네
  
  힘 쓰 세 힘 쓰 세
  모 든 힘 바 치 세
  복 음
  전 해
}

verseFour = \lyricmode {
  \set stanza = "4."
  일 하 러 나 가 세 주 권 능 만 믿 게
  모 든 일 끝 날 때 면 류 관 쓰 겠 네
  우 리 가 거 처 할 본 향 에 올 라 가
  찬 미 로 부 를 말 구 원 이 임 했 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
      \tempo 4 = 100
    }
  }
}

