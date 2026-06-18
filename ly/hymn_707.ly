\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "옛 선지자 말씀에"
engTitle = "It All Adds up"
hymnNumber = "707"
poet = "Art Wilson, 1907~"
composer = "Art Wilson, 1907"
bibleInfo = "계 22:20"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  ef4 |
  <ef g>4 q q | 
  q <d f> ef  | 
  <g bf> q q  | 
  q2 \breathe q4 | 
  <af c'>4 q q | %\break
  
  <g bf>4 <ef g> ef | 
  <d f>2.^(_( | 
  <d f>2^)_) \breathe ef8 f | 
  <ef g>4 q q | 
  q <d f> ef  | 
  <bf, ef> <bf, f> <df g> | 
  <c af>2 \breathe %\break
  
  <ef c'>4 | 
  <ef bf>2 q8 <ef c'> |
  <ef bf>4 <ef g>4. <d f>8 |
  <bf, ef>2.^(_( |
  <bf, ef>2^)_) \breathe <ef bf>4^\markup "(후렴)" |
  q2 <d af>4 | <ef g>2 %\break
  
  <g ef'>8 q |
  q2 <f d'>4 |
  <ef c'>2 q4 |
  <g bf>2 q4 |
  <af c'>4 <g bf> <ef g> |
  <d f>2.^(_( |
  <d f>2^)_) <bf, ef>8 <d f> | %\break
  
  <ef g>2 q4 | q <d f> ef |
  <bf, ef> <bf, f> <df g> |
  <c af>2\fermata \breathe <ef c'>4 |
  <ef bf>2 q8 <ef c'> |
  <ef bf>4 <ef g>\fermata <g ef'> |
  <g ef' g'>4 q\fermata <f d' f'> |
  <ef ef'>2 \bar "|."
}

alto = \fixed c' {
  \global
  ef4 | 
  s2.    | s2 ef4   | s2.      | s2.    | s2.    |
  s2 ef4 | s2.      | s2 ef8 f | s2.    | s2 ef4 | s2. | s2
  s4 | s2. | s2. | s2. | s2. | s2. | s2
  s4 | s2. | s2. | s2. | s2. | s2. | s2. |
  s2. | s2 ef4 | s2. | s2. | s2. | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  s4 |
}

bass = \fixed c {
  \global
  <ef g>4 | 
  
  <ef bf>4 <d bf> <c bf>  | 
  <bf, bf> <ef af> <ef g> | 
  <ef ef'> q q   | 
  q2 \breathe q4 | 
  <ef c'>4 q q   |
  
  <ef bf>4 q q   | 
  <bf, af>2.^(_( | 
  <bf, af>2^)_) \breathe <bf, g>8 <bf, af> | 
  <ef bf>4 <d bf> <c bf> |
  <bf, bf>4 <ef af> <ef g> |
  q <ef af>4 <ef bf> |
  <ef af>2 \breathe
  
  <af, af>4 | 
  <bf g>2 <ef g>8 q | 
  <ef bf>4 q4. <d af>8 |
  <ef g>2.^(_( |
  q2^)_) \breathe q4 |
  q2 <d af>4 |
  <ef bf>2
  
  <ef bf>8 q |
  q2 <f bf>4 |
  <ef af>2 <ef c'>4 |
  <ef bf>2 q4 |
  <ef c'>4 <ef bf> <ef a> |
  <bf, bf>2.^(_( |
  <bf, af>2^)_) <bf, g>8 <d af> |
  
  <ef bf>2 q4 | 
  q <d af> <ef g> |
  q <ef af> <ef bf> |
  <ef af>2 \breathe q4 |
  <ef g>2 q8 q |
  <ef bf>4 q q |
  <bf, bf>4 q <bf, af> |
  <ef g>2
}

verseOne = \lyricmode {
  \set stanza = "1."
  옛 선 지 자 말 씀 에 이 르 기 를 
  한 구 세 주 오 "-" 셔 서 
  십 자 가 위 에 달 "-" 려 죽 으 심 과
  부 활 승 천 예 언 했 네
  이 세 상 의 모 든 일 이
  주 님 말 씀 따 "-" 라 서 
  어 김 없 이 하 나 씩 이 뤄 지 니 다
  이 뤄 "-" 지 니 주 다 시 오 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 떠 나 신 그 대 로 
  이 세 상 에 또 오 시 마 약 속 했 네
  큰  "" 노 래 와 나 "-" 팔 울 려 날 때
  우 리 모 두 주 보 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  이 세 상 에 되 는 일 바 라 볼 때
  주 오 실 날 임 박 했 네
  세 상 어 둠 이 짙 으 나 
  우 리 맘 에 참 빛 있 어 노 래 하 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 7\mm    
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
            %\context NullVoice = aligner {
            %  \aligner
            %}
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
    
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

