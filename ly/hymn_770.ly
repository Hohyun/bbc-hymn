\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "전능의 주와 함께 나가라"
engTitle = "We Are Not Here To Play"
hymnNumber = "770"
poet = "Anonymous"
composer = "Anonymous"
bibleInfo = "시 46:6-11"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  \tempo 4 = 90
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  bf4 bf8. bf16 bf8 f d f |
  <d bf>4 <f c'> <f d'>2 \breathe |
  <f c'>4 <f a>8. <f bf>16 <f ef'>8 <f d'> <f c'> <f bf> |
  <f a>4 <e g> f2 \breathe | \break
  
  bf4 bf8. bf16 bf8 f <f bf> <f c'> |
  <f d'>4 <f bf> <f c'>4. \breathe f8 |
  <d bf>2 <ef g>4. f8 | 
  bf1 | \bar "|."
}

alto = \fixed c' {
  \global
  bf4 bf8. bf16 bf8 f d f |
  s1 |
  s1 |
  s1 |
  
  bf4 bf8. bf16 bf8 f s4 |
  s2 s4. f8 |
  s2 s4. ef8 |
  d1 |
}

tenor = \fixed c {
  \global
  bf4 bf8. bf16 bf8 f d f |
  \stemDown
  <g bf>4 <f a> <ef bf,>2 \breathe |
  <f a>4 <f c'>8. <d bf>16 <c a>8 <bf, bf> <a, c'> <bf, d'> |
  <c c'>4 <c bf> <f a>2 \breathe |
  
  \stemUp
  bf4 bf8. bf16 bf8 \stemDown f <d bf> <f a> |
  <bf, bf>4 <d bf> <f a>4. \breathe \stemUp f8 |
  bf2 bf4. a8 |
  bf1 | \bar "|."
}

bass = \fixed c {
  \global
   bf4 bf8. bf16 bf8 f d f |
   s1 |
   s1 |
   s1 |
   
   bf4 bf8. bf16 bf8 f d f |
   s2 s4. f8 |
   g8[ a g f] ef[ d c] f |
   bf,1 | 
}

verseOne = \lyricmode {
  \set stanza = "1."
  전 능 의 주 와 함 께 나 가 라 죽 음 과 괴 롬 겁 내 지 말 고
  주 예 수 구 령 역 사 위 하 여 힘 써 전 하 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  세 상 의 헛 된 것 을 버 리 며 내 주 의 힘 센 팔 을 붙 잡 고
  영 광 의 십 자 가 를 위 하 여 굳 세 게  서 라 
}

verseThree = \lyricmode {
  \set stanza = "3."
  죄 악 의 권 세 더 욱 강 하 고 큰 싸 움 나 를 엄 습 하 여 도
  승 리 는 우 리 손 에 있 으 니 잡 아 라 승 리
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
            \new Voice = sop { \voiceOne \soprano }
            \new Voice = alto { \voiceTwo \alto }
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
            \new Voice = tenor { \voiceOne \tenor }
            \new Voice = bass { \voiceTwo \bass }
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
      }
    }
    \midi {}
  }
}

