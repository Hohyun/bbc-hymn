\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "나 주께 속했네"
engTitle = "Now I Belong to Jesus"
hymnNumber = "726"
poet = "Norman J. Clayton, 1903"
composer = "Norman J. Clayton, 1903"
bibleInfo = "엡 2:4-7"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <c af>4 q8 q <ef g>4 f |
  <f df'>4 q8 q<ef c'>4 <df bf> \breathe |
  <c af>4 q8 q<ef g>4 f |
  <f df'>4 q8 q \break
  
  <ef c'>4 <ef bf> \breathe |
  <e c'>4 <g c'>8 q <f af>4 q |
  <d bf>4 <f bf>8 q <ef g>2 |
  <c af>4 q8 q<d g>4 <d f> |
  <df bf>2. b4\rest \breathe \bar "||" | \break
  
  <c ef>4^\markup "(후렴)" <c f>8 <c g> <ef af>4 f |
  <df af>2 <df g> \breathe |
  <f df'>4 q8 q <ef c'>4 <ef b> |
  <ef c'>2. b4\rest \breathe | \break
  
  <ef ef'>4 s4 <f df'>4 <f c'> |
  <f bf> <f af> <b, f>2\fermata \breathe |
  <c ef>4 f8 <ef af> <d c'>4 <df bf> |
  <c af>2. b4\rest \bar "|." |
}

aligner = \fixed c' {
  \global
  <c af>4 q8 q <ef g>4 f |
  <f df'>4 q8 q<ef c'>4 <df bf> \breathe |
  <c af>4 q8 q<ef g>4 f |
  <f df'>4 q8 q \break
  
  <ef c'>4 <ef bf> \breathe |
  <e c'>4 <g c'>8 q <f af>4 q |
  <d bf>4 <f bf>8 q <ef g>2 |
  <c af>4 q8 q<d g>4 <d f> |
  <df bf>2. b4\rest \breathe \bar "||" | \break
  
  <c ef>4^\markup "(후렴)" <c f>8 <c g> <ef af>4 f |
  <df af>2 <df g> \breathe |
  <f df'>4 q8 q <ef c'>4 <ef b> |
  <ef c'>2. b4\rest \breathe | \break
  
  <ef ef'>4 <gf ef'>8 q <f df'>4 <f c'> |
  <f bf> <f af> <b, f>2\fermata \breathe |
  <c ef>4 f8 <ef af> <d c'>4 <df bf> |
  <c af>2. b4\rest \bar "|." |
}

alto = \fixed c' {
  \global
  s2. ef4 | s1 | s2. ef4 | s2
  s2 | s1 | s1 | s1 | s1 |
  s2. ef4 | s1 | s1 | s1 |
  s4 <gf ef'>8 q s2 | s1 | s4 ef8 s8 s2 | s1 |
}

tenor = \fixed c {
  \global
  <af, ef>4 q8 q s2 | s1 | s4 <af, ef>8 q s2 | s2
  s2 | s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
}

bass = \fixed c {
  \global
  s2 <c af>4 q |
  <bf, bf>4 q8 q8 <ef g>4 q \breathe |
  <af, af> s <c af> q |
  <bf, bf>4 q8 q
  
  <ef g>4 <df g> \breathe |
  <c g> <e c'>8 q q4 q |
  <bf, bf>4 <d bf>8 q <ef bf>2 |
  <f af>4 q8 q <bf, bf>4 <bf, af> |
  <ef g>2. d4\rest \breathe |
  
  <af, af>4 q8 q <c af>4 q |
  <bf, bf>2 <ef bf> \breathe |
  <ef g>4 q8 q q4 q |
  <af, af>2. d4\rest \breathe |
  
  <c af>4 <c bf>8 q <f a>4 <ef a> |
  <df bf> q <d af>2\fermata \breathe |
  <ef af>4 <c af>8 q <bf, af>4 <ef g> |
  <bf, af>2. d4\rest \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 님 은 나 의 영 원 한 행 복
  마 귀 의 권 세 해 할 수 없 네
  주 나 를 대 속 하 셨 으 니
  나 주 께 속 했 네
  
  나 주 께 속 했 으 니 예 수 는 나 의 주
  온 세 상 만 물 변 해 도 영 원 한 그 사 랑
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 전 에 죄 에 빠 져 헤 맬 때
  예 수 님 오 사 구 해 주 셨 네
  슬 픔 과 수 치 면 했 으 니
  나 주 께 속 했 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 내 게 온 후 기 쁨 넘 치 네
  큰 죄 의 결 박 풀 어 주 셨 네
  귀 중 한 피 를 흘 렸 으 니
  나 주 께 속 했 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
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

