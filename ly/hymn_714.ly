\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내 죄 없어졌네"
engTitle = "My Sins are Gone"
hymnNumber = "714"
poet = "N. B. Vandall, 1896"
composer = "N. B. Vandall, 1896"
bibleInfo = "히 10:10-14"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <fs d'>4 | 
  <g b>8 <g d'> <g b> <g d'> <g b> <g d'>4 q8 |
  <fs c'>8 <fs d'> <fs c'> <fs b> <fs a>4 \breathe <fs c'>4 | 
  a2^( 8^) %\break
  
  <fs d'>8 q q |
  <g b>2. \breathe <fs d'>4 |
  <g b>8 <g d'> <g b> <g d'> <g b> <g d'>4 q8 |
  <fs c'>8 <fs d'> <fs c'> <fs b> %\break
  
  <fs a>4 \breathe <fs c'> |
  <fs a>2^(_( q8^)_) <fs c'> <fs b> <fs a> |
  <d g>2. \bar "||" <d g>4^\markup "(후렴)" |
  <fs a>8 q q <fs b> <fs c'>4 <fs d'>8. <fs c'>16 | %\break
  
  <g b>8 q q <fs c'> <g d'>4 \breathe q |
  \stemDown <g e'>8 q q q \stemUp <g d'> q q <g b> | 
  <fs d'>2. \breathe q8. q16 | %\break
  
  <g b>8 <g d'> q q <g b>8 <g d'> q q |
  \stemDown <g e'>8. q16 \stemUp <g d'>8 <g c'> <g b>4 \breathe <es d'>4 |
  <fs d'>2^(_( q8^)_) <fs c'>8^\markup \italic "rit" <fs b> <d a> |
  <d g>2. \bar "|."
  
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | fs4_( e d8_)
  s4. | s1 | s1 | s2 
  s2 | s1 | s2. s4 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s1 | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | c'2^( 8^)
  s4. | s1 | s1 | s2 
  s2 | s1 | s1 | s1 |
  s1 | c'8 s8 s2. | s1 |
  s1 | s1 | c'2^( 8^) s4. | s2.
}

bass = \fixed c {
  \global
  <d c'>4 |
  <g d'>8 <g b> <g d'> <g b> <g d'> <g b>4 q8 |
  <d c'>8 <d a> q <d d'> <d c'>4 \breathe q |
  d4_( e fs8_)
  
  <d c'>8 q q |
  <g d'>2. \breathe <d c'>4 |
  <g d'>8 <g b> <g d'> <g b> <g d'> <g b>4 q8 |
  <d c'>8 <d a> q <d d'>
  
  <d c'>4 \breathe q |
  q2^(_( q8^)_) <d e'> <d d'> <d c'> |
  <g b>2. \bar "||" q4 |
  <d c'>8 q q <d d'> <d a>4 q8. <d d'>16 |
  
  <g d'>8 q q <a d'> <b d'>4 \breathe <g b> |
  c'8 <c c'> <cs as> q <d b> q <g b> <g d'> |
  <d c'>2. \breathe <d d'>8. <d c'>16 |
  
  <g d'>8 <g b> q q <g d'> <g b> q q |
  <c c'>8. q16 <g b>8 <g e'> <g d'>4 \breathe <gs b> |
  a4_( d4 8_) <d e'> <d d'> <d c'> |
  <g b>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 맘 의 기 쁨 물 을 때 대 답 할 말 은 
  내 죄 없 어 졌 네
  
  내 친 구 나 를 비 웃 고 조 롱 하 여 도 
  내 죄 없 어 졌 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 십 자 가 에 달 리 사 대 속 했 으 니 
  내 죄 없 어 졌 네 
  
  주 내 맘 주 장 하 실 때 마 귀 떠 났 네
  내 죄 없 어 졌 네
  
  저 아 침 해 가 뜰 때 에 어 둠 밀 리 듯 
  주 보 혈 내 죄 몰 아 내 셨 네
  주 가 내 죄 기 억 않 겠 다 고 약 속 했 으 니
  내 죄 없 어 졌 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  저 마 귀 의 심 줄 때 에 대 적 할 말 은
  내 죄 없 어 졌 네 
  
  나 괴 롬 중 에 있 을 때 주 가 건 졌 네
  내 죄 없 어 졌 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  내 주 님 위 해 사 는 것 즐 거 움 일 세
  내 죄 없 어 졌 네 
  
  내 영 혼 기 쁨 넘 쳐 서 찬 미 할 말 은
  내 죄 없 어 졌 네
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
            %\context NullVoice = aligner {
            %  \aligner
            %}
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
        %\override LyricText.font-name = "빛고을광주"
        \override LyricText.font-name = "NanumSquare"
        \override LyricText.font-series = #'bold
      }
    }
    \midi {
      \tempo 4 = 90
    }
  }
}

