\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주의 백성 모으실 때"
engTitle = "What a Gathering"
hymnNumber = "710"
poet = "Fanny J. Crosby, 1820~1915"
composer = "Ira D. Sankey, 1840~1908"
bibleInfo = "살전 4:16-17"
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
  <bf, d>8 <c ef> |
  <d f>8 q q q q <f d'> \breathe <f c'> <f bf> |
  <ef g>8 q q <f a> \break
  
  <g bf>4 \breathe <f a>8 <ef g> |
  <d f>8 q q q <d bf> <f bf> <ef a> <d bf> |
  <f c'>2. \breathe \break
  
  <f bf>8 <f c'> |
  <f d'>8 <g ef'> <f d'> <f c'> <f bf> q \breathe <ef a> <d bf> |
  <ef c'>8 <ef bf> <ef a> <ef g> \break
  
  <d f>4 \breathe <bf, d>8 <c ef> |
  <d f>8 <d bf>8 q <f bf> <ef bf> <ef a> <ef g>8. <ef a>16 |
  <d bf>2. \break
  
  <bf, d>8.^\markup "(후렴)" <c ef>16 |
  <d f>2 <d bf>4 <f d'>8. q16 |
  <ef c'>2 <ef g>4 \break
  
  <e bf>8. q16 |
  <f a>8 q q q q f <ef g> <ef a> |
  <d bf>8. q16 <ef bf>8. <ef g>16 <d f>4 \break
  
  <bf, d>8. <c ef>16 |
  <d f>2 <d bf>4 <f d'>8. q16 |
  c'4( d') ef'\fermata \break
  
  <f d'>8 <ef c'> |
  <d bf>8 q q q <ef bf>8. <ef a>16 <ef g>8. <ef a>16 |
  <d bf>2. \bar "|."
}

alto = \fixed c' {
  \global
  s4 | s1 | s2
  s2 | s1 | s2.
  s4 | s1 | s2
  s2 | s1 | s2.
  
  s4 | s1 | s2.
  s4 | s2 s8 f s4 | s2.
  s4 | s1 | g2 4 
  s4 | s1 | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s2
  s2 | s1 | s2.
  s4 | s1 | s2
  s2 | s2. s8. f16 | s2.
  
  <bf, f>8. q16 | s1 | s2.
  s4 | s1 | s2.
  <bf, f>8. q16 | s1 | s2.
  s4 | f8 8 8 8 s4 s8. <f, f>16 | <bf, f>2.
}

bass = \fixed c {
  \global
  <bf, f>8 q |
  <bf, bf>8 q q q q <bf f> \breathe <c a> <d bf> |
  <ef bf>8 q q q 
  
  <ef bf>4 \breathe q8 q |
  <bf, bf>8 q q q <bf, f> <d bf> <c f> <bf, f> |
  <f a>2. \breathe
  
  <d bf>8 <c a> |
  <bf, bf>8 q q <ef a> <d bf> q \breathe <c f> <bf, f> |
  <ef g>8 q <ef a> <ef bf>
  
  <bf, bf>4 \breathe <bf, f>8 q |
  <bf, bf>8 <bf f> q <d bf> <f c'> q q8. f16 |
  <bf, f>2.
  
  s4 |
  <bf, bf>8 q q q <bf, f> q <bf, bf>8. q16 |
  <ef g>8 q q q <ef bf> q 
  
  <c c'>8. q16 |
  <f c'>8 q q q q <f a> <f bf> <f c'> |
  <bf, bf>8. <bf f>16 <ef g>8. <ef bf>16 <bf, bf>4
  
  s4 |
  <bf, bf>8 q q q <bf, f> q <bf, bf>8. q16 |
  <ef bf>4^(_( <d b>^)_) <c c'>\fermata
  
  <d g>8 <ef g> |
  f8 8 8 8 <f, c'>8. q16 q8. s16 |
  s2.  
}

chorus = \fixed c {
  s4 | s1 | s2
  s2 | s1 | s2.
  s4 | s1 | s2
  s2 | s1 | s2.
  
  <bf, f>8. q16 |
  <bf, bf>8 q q q <bf, f> q <bf, bf>8. q16 |
  <ef g>8 q q q <ef bf> q 
  
  s4 | s1 | s2.
  <bf, f>8. q16 |
  <bf, bf>8 q q q <bf, f> q 
  
  
}
verseOne = \lyricmode {
  \set stanza = "1."
  금 빛 찬 란 한 아 침 에 주 님 다 시 오 실 때
  주 의 영 광 내 가 친 히 보 겠 네
  온 세 상 에 흩 어 있 는 주 의 백 성 모 을 때
  그 때 나 도 거 기 들 림 받 겠 네
  
  주 의 백 성 모 으 실 때
  구 속 받 은 주 의 자 녀 크 신 사 랑 속 에 서
  주 의 백 성 모 으 실 때
  영 원 토 록 천 국 에 서 살 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 안 에 서 잠 든 성 도 주 의 음 성 듣 고 서
  무 덤 모 두 깨 고 일 어 나 겠 네
  주 와 같 은 몸 을 입 고 공 중 에 서 주 뵐 때
  그 때 가 쁨 형 용 할 수 있 으 랴
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 눈 이 빛 난 천 국 문 을 바 라 볼 때 에
  그 안 에 서 생 명 강 물 흐 르 리
  우 리 앝 서 세 상 떠 난 형 제 자 매 만 날 때
  두 손 벌 려 영 접 함 을 받 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  심 판 주 가 오 실 날 이 얼 마 남 지 않 았 네
  주 가 약 속 하 신 그 날 보 리 라
  순 식 간 에 우 리 몸 이 변 화 함 을 받 고 서
  주 와 같 이 영 원 토 록 살 겠 네
}

verseChorus = \lyricmode {
  주 의 백 성 모 으 실 때 주 의 백 성 모 으 실 때
  주 의 백 성 모 으 실 때
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
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }  
        
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
              \context NullVoice = chorus {
                \chorus
              }
          >>       
        }
        
        \context Lyrics = "LyrChorus" \lyricsto "chorus" { \verseChorus }       
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
      }
    }
    \midi {
      \tempo 4 = 100
    }
  }
}

