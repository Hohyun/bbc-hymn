\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "네 가는 길에"
engTitle = "The Answer"
hymnNumber = "721"
poet = "Art Wilson, 1907"
composer = "Art Wilson, 1907"
bibleInfo = "수 1:7-9"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 2.
}

soprano = \fixed c' {
  \global
  <c f>4 <d g> <c f> |
  <f a>4 q2 \breathe <c f>8 q |
  <d g>4 <c f> d <c f> |
  c2. \breathe c4 | <c f> <e g> <f a> q^(_( |
  q ^)_) \breathe %\break
  
  f < d g>4 q |
  <d g>4. <f a>8 <e g>2^(_( | q4^)_) \breathe <f c'>8 q q4 q4 |
  <f a> <c f>2 f4 \breathe | %\break
  
  <d f> q q q |
  <f bf>2. \breathe q4 |
  <f d'> <fs df'> <g c'>2^(_( |
  q4^)_) \breathe <f a> <e g> c |
  <f a>4. <e g>8 <c f>2^(_( |
  q^)_) \breathe %\break
  
  <f c'>8^\markup "(후렴)" q q4 |
  q2. q4 |
  <f d'>8 <f c'> <e a>4 <f c'>2^(_( |
  q4^)_) \breathe f f <e g> |
  <f a>2. q8 q8 |
  q8^(_( g^)_) <d f>4 <e g>2^(_( |
  q4^)_) \breathe %\break
  
  <f c'> q q | q2. <f a>4 |
  g f <f bf>2^(_( |
  q4^)_) \breathe <f d'>8 q q4 <fs df'> |
  <g c'>2. <f a>4 |
  <e g>4. <c f>8 q2^(_( |
  q4^)_) \bar "|."
}

alto = \fixed c' {
  \global
  s2. | s1 | s2 d4 s4 | c2. 4 | s1 | s4
  f4 s2 | s1 | s1 | s2. ef4 |
  s1 | s1 | s1 | s2. c4 | s1 | s2
  s2 | s1 | s1 | s4 f f s4 | s1 | s8 f8 s2. | s4
  s2. | s1 |f4 f s2 | s1 | s1 | s1 | s4
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
  <f a>4 <f bf> <f a> |
  <f c'> q2 \breathe <f a>8 q |
  <f bf>4 q q q |
  <f a>2. \breathe q4 |
  q <e bf> <f c'> q^(_( |
  q^)_) \breathe
  
  <f b>4 <d b> q |
  <c b>4. q8 q2^(_( |
  q4^)_) \breathe <c a>8 q <f a>4 q |
  <f c'>4 q2 <f cs'>4 \breathe
  
  <f d'>4 q q q | q2. \breathe <f bf>4 |
  q <d gs> <c a>2^(_( | 
  q4^)_) \breathe <c c'> q q |
  q4. <f bf>8 <f a>2^(_( |
  q^)_) \breathe
  
  <f a>8 q q4 |
  q2. q4 |
  q8 q q4 q2^(_( |
  q4^)_) \breathe q q q |
  <f c'>2. <b f>8 q |
  q8^(_( <e b>^)_) <d b>4 <c c'>2^(_( |
  q4^)_) \breathe
  
  <f a>4 q q | 
  q2. q4 |
  <f bf> <f c'> <f d'>2^(_( |
  q4^)_) \breathe <f bf>8 q q4 <d gs> |
  <c a>2. <c c'>4 |
  <c bf>4. <c a>8 <f a>2^(_( |
  <f a>4^)_) \bar "|."
}

aligner = \soprano

verseOne = \lyricmode {
  \set stanza = "1."
  네 가 는 길 에 많 은 괴 롬 만 있 고
  절 망 과 고 통 네 앞 에 닥 치 네
  죄 로 어 둔 밤 에 네 갈 길 모 를 때
  조 용 하 게 주 말 씀 들 어 라
  
  진 심 으 로 날 의 지 하 고
  너 의 앞 길 내 게 맡 길 때
  내 맘 속 에 나 들 어 가 
  나 의 참 평 안 을 주 리 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  네 모 든 뜻 이 모 두 낭 패 가 되 고
  네 모 든 희 망 물 거 품 과 같 네
  세 상 모 든 일 에 도 낙 이 없 을 때
  내 친 구 여 주 말 씀 들 어 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  정 함 이 없 는 헛 된 일 에 바 쁘 고 
  어 디 를 봐 도 도 울 자 없 구 나
  네 가 하 던 모 든 일 허 사 가 될 때
  여 기 와 서 주 말 씀 들 어 라
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
      \tempo 4 = 90
    }
  }
}

