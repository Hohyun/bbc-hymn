\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "대장되신 예수 따르라"
engTitle = "Sound the Battle Cry"
hymnNumber = "743"
poet = "W. F. Sherwin, 1826~1888"
composer = "W. F. Sherwin, 1826~1888"
bibleInfo = "딤후 2:3"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>4 q <bf, d>8. <c ef>16 <d f>4 |
  <ef g>4 s4 <f d'>8. <ef c'>16 <d bf>4 \breathe |
  <f c'> <f d'> <f c'>8. <f a>16 f4 | %\break
  
  <e g>4 g8[ a] f2 \breathe |
  <d f>4 q <bf, d>8. <c ef>16 <d f>4 |
  <ef g> s <f d'>8. <ef c'>16 <d bf>4 \breathe |
  <f d'>4 s4 %\break
  
  <d bf>8. <c a>16 <d bf>8 <ef c'> |
  <f d'>4 <ef c'> <d bf>2 \breathe \bar "||" | \break
  <f d'>4^\markup "(후렴)" <d bf> <f d'> <d bf> |
  <ef c'>8. <d b>16 <ef c'>8. s16 %\break
  
  <f d'>4 <d bf> \breathe |
  <fs d'> <fs a> <g bf> g |
  <e c'>8. <g bf>16 <f a>8. <e g>16 
  
  << { f2 } \\ { \stemUp \tiny s4 g16[ a bf c'] \normalsize } >> \breathe |
  
  
  <f d'>4 <d bf> <f d'> <d bf> | %\break
  
  <ef c'>8. <d b>16 <ef c'>8. s16 <f d'>4 <d bf> \breathe |
  <f d'> s <d bf>8. <c a>16 <d bf>8 <ef c'> |
  <f d'>4 <ef c'> <d bf>2 \bar "|." | 
}

aligner = \fixed c' {
  \global
  <d f>4 q <bf, d>8. <c ef>16 <d f>4 |
  <ef g>4 q <f d'>8. <ef c'>16 <d bf>4 |
  <f c'> <f d'> <f c'>8. <f a>16 f4 | 
  
  <e g>4 g8 a f2 |
  <d f>4 q <bf, d>8. <c ef>16 <d f>4 |
  <ef g> q <f d'>8. <ef c'>16 <d bf>4 |
  <f d'>4 q
  
  <d bf>8. <c a>16 <d bf>8 <ef c'> |
  <f d'>4 <ef c'> <d bf>2 |
  <f d'>4 <d bf> <f d'> <d bf> |
  <ef c'>8. <d b>16 <ef c'>8. q16 
  
  <f d'>4 <d bf> |
  <fs d'> <fs a> <g bf> g |
  <e c'>8. <g bf>16 <f a>8. <e g>16 
  f2 |
  <f d'>4 <d bf> <f d'> <d bf> | 
  
  <ef c'>8. <d b>16 <ef c'>8. q16 <f d'>4 <d bf> |
  <f d'> q <d bf>8. <c a>16 <d bf>8 <ef c'> |
  <f d'>4 <ef c'> <d bf>2 |
}

alto = \fixed c' {
  \global
  s1 | s4 <g ef'>4 s2 | s2. f4 |
  s4 e f2 | s1 | s4 <g ef'> s2 | s4 <f f'> 
  s2 | s1 | s1 | s4 s8. <g ef'>16
  s2 | s2. g4 | s2 f2 | s1 |
  s4 s8. <g ef'>16 s2 | s4 <f f'> s2 | s1 |
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 |
  s4 bf8[ c'] s2 | s1 | s1 | s2
  s2 | s1 | bf4 4 4 4 | s2
  bf4 4 \breathe | s1 | s1 | bf4 4 4 4 |
  s2 bf4 s4 | s1 | s1 |
}

bass = \fixed c {
  \global
  <bf, bf>4 q <bf d>8. q16 <bf, bf>4 |
  <ef bf>4 q <bf, bf>8. q16 q4 \breathe |
  <f a>4 <f bf> <f a>8. <f c'>16 <f a>4 |
  
  <c c'>4 c <f a>2 \breathe |
  <bf, bf>4 q q8. q16 q4 |
  <ef bf>4 q <bf, bf>8. q16 q4 \breathe |
  q <d bf> 
  
  <g bf>8. <g c'>16 <g bf>8 q |
  <f bf>4 <f a> <bf, bf>2 \breathe |
  bf4 4 4 4 |
  <f a>8. q16 q8. q16 
  
  bf4 4 |
  <d a>4 <d d'> <g d'> <g bf> |
  <c g>8. <c c'>16 q8. <c bf>16 <f a>2 \breathe |
  bf4 4 4 4 |
  
  <f a>8. q16 q8. q16 bf4 <bf, f> \breathe |
  <bf, bf>4 <d bf> <g bf>8. <g c'>16 <g bf>8 q |
  <f bf>4 <f a> <c bf>2 \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  싸 움 터 졌 다 몰 려 오 는 적
  주 의 깃 발 을 높 이 들 라
  전 신 갑 주 로 몸 을 두 르 고
  주 의 명 령 따 라 나 가 자
}

verseTwo = \lyricmode {
  \set stanza = "2."
  담 대 하 여 라 진 군 하 여 라
  오 직 진 리 로 승 리 한 다
  믿 음 방 패 와 성 령 검 으 로
  마 귀 대 적 하 여 이 기 리
  
  군 병 들 아 깃 발 아 래 뭉 쳐
  굳 게 서 서 대 적 하 여 라
  앞 을 향 해 호 산 나 부 르 며
  대 장 되 신 예 수 따 르 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  우 리 하 나 님 귀 기 울 이 사
  우 리 구 할 것 다 주 시 니
  싸 움 끝 나 고 승 리 얻 을 때
  주 님 앞 에 면 류 관 쓰 리
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

