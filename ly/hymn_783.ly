\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "구원의 문"
engTitle = "The Gateway to Salvation"
hymnNumber = "783"
poet = "G. E. Cottam & K. William, 1939"
composer = "Mrs. W. Liggett"
bibleInfo = "마 7:13-14"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  bf,4 | 
  ef2 d4 ef2 f4 |
  <ef g>2 fs4 <ef g>2 <f af>4 \breathe |
  <g bf>2 <fs a>4 <g bf>2 s4 |
  <g bf>2.^(_( q2^)_) \breathe \break
  
  <g bf>4 |
  s2. s2. |
  <g bf>2 <ef g>4 ef2 \breathe <ef g>4 |
  q2 f4 2 <ef g>4 |
  <d f>2.^(_( q2^)_) \breathe \break
  
  bf,4 |
  ef2 d4 ef2 f4 |
  <ef g>2 fs4 <ef g>2 <f af>4 \breathe |
  <g bf>2 <fs a>4 <g bf>2 s4 |
  <g bf>2.^(_( q2^)_) \breathe \break
  
  <g bf>4 |
  s2. s2. |
  <g bf>2 <ef g>4 <c ef>2\fermata \breathe <c af>4 |
  <bf, g>2 <ef g>4 <d f>2 q4 |
  <bf, ef>2.^(_( q2^)_) \bar "|."
}

aligner = \fixed c' {
  \global
  bf,4 | 
  ef2 d4 ef2 f4 |
  <ef g>2 fs4 <ef g>2 <f af>4 |
  <g bf>2 <fs a>4 <g bf>2 q4 |
  <g bf>2.^(_( q2^)_) 
  
  <g bf>4 |
  q2 q4 q2 q4 |
  <g bf>2 <ef g>4 ef2 <ef g>4 |
  q2 f4 2 <ef g>4 |
  <d f>2.^(_( q2^)_) 
  
  bf,4 |
  ef2 d4 ef2 f4 |
  <ef g>2 fs4 <ef g>2 <f af>4 |
  <g bf>2 <fs a>4 <g bf>2 q4 |
  <g bf>2.^(_( q2^)_) 
  
  <g bf>4 |
  q2 q4 q2 q4 |
  <g bf>2 <ef g>4 <c ef>2 <c af>4 |
  <bf, g>2 <ef g>4 <d f>2 q4 |
  <bf, ef>2.^(_( q2^)_)
}

alto = \fixed c' {
  \global
  s4 | s2. s2. | s2 ef4 s2. | s2. s2 <af c'>4 | s2. s2
  
  s4 | 
  <af c'>2 <bf d'>4 <c' ef'>2 <af c'>4 | 
  s2. ef2 s4  |
  s2 ef4 2 s4 |
  s2. s2
  
  s4 | s2. s2. | s2 ef4 s2. | s2. s2 <af c'>4 | s2. s2
  
  s4 | 
  <af c'>2 <bf d'>4 <c' ef'>2 <af c'>4 |  
  s2. s2. | 
  s2. s2
}

tenor = \fixed c {
  \global
  d4\rest | ef,2. s2. | ef,2. s2. | ef,2. s2. | ef,2. s2
  d4\rest | af,2. s2. | ef,2. s2. | c2. s2. | s2. bf,,2
  d4\rest | ef,2. s2. | ef,2. s2. | ef,2. s2. | s2. s2
  s4      | af,2. s2. | ef,2. s2 f,4 | <bf, ef>2. s2. | s2. s2
}

bass = \fixed c {
  \global
  s4 | 
  s2. <ef g bf>2. | 
  s2. <ef bf>2. \breathe |
  s2. q2. |
  s2. ef2 \breathe
  
  s4 |
  s2. <af ef'> |
  s2. <ef g bf> \breathe |
  s2. <f a>2. |
  <bf, bf>2. s2 \breathe 
  
  s4 |
  s2. <ef g bf>2. |
  s2. <ef bf> \breathe |
  s2. <ef bf> |
  \stemUp ef,2.( \stemDown ef2) \breathe
  
  ef4 |
  s2. <af ef'> |
  s2. <c g>2\fermata \breathe s4 |
  s2. <bf, af> |
  <ef g>2.^(_( q2^)_)
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  험 하 고 험 한 인 생 길 에
  문 하 나 있 네
  주 예 수 님 이 세 우 신
  구 원 의 좁 은 문
  길 잃 은 죄 인 들 어 가 면
  영 생 얻 는 다
  친 구 여 들 어 오 너 라
  구 원 을 받 으 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  그 문 은 천 국 들 어 가 는
  좁 은 문 이 요
  누 구 든 지 들 어 가 면
  구 원 을 얻 는 다
  그 길 은 좁 고 험 하 지 만
  생 명 길 이 다
  주 예 수 님 은 우 리 와
  늘 함 께 하 신 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  험 하 고 좁 은 길 을 가 면
  황 금 길 있 다
  그 진 주 문 을 들 어 가 
  주 예 수 뵈 오 리
  그 한 량 없 는 영 광 중 에
  기 뻐 하 리 라
  주 예 수 사 랑 감 사 해
  늘 찬 송 하 리 라
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
      \tempo 4 = 120
    }
  }
}

