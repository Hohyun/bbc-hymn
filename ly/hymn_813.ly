\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "오 이길 편치 않아도"
engTitle = "It's Not An Easy Road"
hymnNumber = "813"
poet = "John W. Peterson, 1921"
composer = "John W. Peterson, 1921"
bibleInfo = "마 7:13-14"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ef \major
  \numericTimeSignature
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <g bf>4 |
  q4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>2 <ef bf>8. q16 |
  <ef c'>4 \stemDown <af ef'>4. <af c'>8 \stemUp |
  <g bf>4 <ef g> <g bf> | %\break 
  
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>4 ef <ef g> |
  f2.^(_( |
  <d f>2^)_) bf4 |
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>2 <ef bf>8. q16 | %\break
  
  <ef c'>4 \stemDown <af ef'>4. <af c'>8 \stemUp |
  <g bf>4 <ef g> <ef bf> |
  q4. <ef a>8 <ef bf>8. <f af>16 |
  <ef g>4^(_( ef^)_) <d f> |
  ef2. | 
  s2. | %\break
  
  <ef c'>2.^\markup "(후렴)" |
  \stemDown <af ef'>2 <af c'>4 \stemUp |
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>2. |
  <ef c'>2. |
  \stemDown <af ef'>2 <af c'>4 \stemUp |
  <g bf>4. <ef g>8 ef8. <ef g>16 |
  <d f>2 bf4 | %\break
  
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>4 ef <ef bf> |
  <ef c'> \stemDown <af ef'>4. <af c'>8 \stemUp |
  <g bf>4 <ef g> <ef bf> |
  q4. <ef a>8 <ef bf>8. <f af>16 |
  g4( ef) <d f> |
  ef2.^(_( | 2^)_) \bar "|."
}

aligner = \fixed c' {
  \global
  <g bf>4 |
  q4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>2 <ef bf>8. q16 |
  <ef c'>4 <af ef'>4. <af c'>8  |
  <g bf>4 <ef g> <g bf> |  
  
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>4 ef <ef g> |
  f2.^(_( |
  <d f>2^)_) bf4 |
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>2 <ef bf>8. q16 | 
  
  <ef c'>4 <af ef'>4. <af c'>8 |
  <g bf>4 <ef g> <ef bf> |
  q4. <ef a>8 <ef bf>8. <f af>16 |
  <ef g>4 ef <d f> |
  ef2. |
  s2. | 
  
  <ef c'>2. |
  <af ef'>2 <af c'>4  |
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>2. |
  <ef c'>2. |
  <af ef'>2 <af c'>4 |
  <g bf>4. <ef g>8 ef8. <ef g>16 |
  <d f>2 bf4 | 
  
  <g bf>4. <fs a>8 <g bf>8. <f af>16 |
  <ef g>4 ef <ef bf> |
  <ef c'> <af ef'>4. <af c'>8 |
  <g bf>4 <ef g> <ef bf> |
  q4. <ef a>8 <ef bf>8. <f af>16 |
  g4( ef) <d f> |
  ef2.^(_( | 2^)_)
}

alto = \fixed c' {
  \global
  s4 | s2. | s2. | s2. | s2. |
  s2. | s4 ef s | f2 ef4 | d2 af4 | s2. | s2. |
  
  s2. | s2. | s2. | s4 ef4 s | s2. |
  \teeny \stemUp <g ef'>4 <af d'> <ef df'> \stemDown \normalsize |
  
  s2. | s2. | s2. | s2. | s2. | s2. | s2 ef8. s16 | s2 af4 |
  s2. | s4 ef s | s2. | s2. | s2. | ef2 s4 | s2. | s2
}

tenor = \fixed c {
  \global
  s4 | s2. | s2. | af4 s2 | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. |
  af4 s2 | s2. | s4. fs8 s4 | s2. | s2. | s2. |
  af2. | s2. | s2. | s2. | af2. | s2. | s2. | s2. |
  s2. | s2. | af4 s2 | s2. | s4. fs8 s4 | s2. | s2. | s2
}

bass = \fixed c {
  \global
  <ef ef'>4 |
  q4. q8 q8. q16 |
  <ef bf>2 <ef g>8. q16 |
  af 4 <af c'>4. <af ef'>8 |
  <ef ef'>4 <ef bf> <ef ef'> |
  
  <ef ef'>4. q8 q8. q16 |
  <ef bf>4 <g bf> <ef bf> |
  <d bf>2^(_( <c a>4 |
  <bf, af>2^)_) <d bf>4 |
  <ef ef'>4. q8 q8. q16 |
  <ef bf>2 <ef g>8. q16 |
  
  af4 <af c'>4. <af d'>8 |
  <ef ef'>4 <ef bf> <ef g> |
  q4. ef8 <ef g>8. <af, c'>16 |
  <bf, bf>4^(_( <c g>^)_) <bf, af> |
  <ef g>2. |
  \teeny <ef bf>4 <f bf> <g bf> \normalsize |
  
  af2. |
  <ef c'>2 <af ef'>4 |
  <ef ef'>4. q8 q8. q16 |
  <ef bf>2. |
  af2. |
  <af c'>2 <af ef'>4 |
  <ef ef'>4. <ef bf>8 <ef g>8. <ef bf>16 |
  <bf, bf>2 <d bf>4 |
  
  <ef ef'>4. q8 q8. q16 |
  <ef bf>4 <g bf> <ef g> |
  af4 <af c'>4. <af ef'>8 |
  <ef ef'>4 <ef bf> <ef g> |
  q4. ef8 <ef g>8. <af, c'>16 |
  <bf, bf>4^(_( <c g>^)_) <bf, af> |
  <ef g>2.^(_( |
  q2^)_) 
}

verseOne = \lyricmode {
  \set stanza = "1."
  저 천 국 가 는 길 비 록 좁 고 험 해 도
  나 지 금 이 길 걸 어 가 네
  그 가 는 길 따 라 주 가 동 행 하 시 며
  늘 기 쁨 위 로 주 "-" 시 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 가 는 길 앞 에 환 란 시 험 이 많 고
  위 험 한 길 을 당 "-" 해 도
  주 님 이 아 시 고 나 를 지 켜 주 시 니
  험 한 길 속 히 지 나 가 리

  오 이 길 편 치 않 아 도
  오 이 길 편 치 않 아 도
  주 예 수 곁 에 있 어 
  갈 길 밝 히 시 며
  내 걸 음 재 촉 하 시 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  내 발 이 아 프 고 피 곤 함 겹 쳐 와 서
  큰 근 심 앞 을 막 "-" 아 도 
  내 영 광 집 에 서 영 원 안 식 할 것 을
  바 라 며 달 려 갑 "-" 니 다
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
      \tempo 4 = 100
    }
  }
}

