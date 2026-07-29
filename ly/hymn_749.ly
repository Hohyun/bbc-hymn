\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "고마운 주님"
engTitle = "Blessed Redeemer"
hymnNumber = "749"
poet = "Avis B. Christiansen, 1895~"
composer = "Harry Dixon Loes, 1892~1965"
bibleInfo = "벧 2:24"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key d \major
  \numericTimeSignature
  \time 9/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

soprano = \fixed c' {
  \global
  <fs a>8 q q |
  q4. <d fs> <fs a>8 <e g> <d fs> |
  <cs e>4.^(_( q^)_) \breathe <e g>8 q q |
  <e g>4. <cs e> <g b>8 <fs a> <e g> |
  <d fs>4.^(_( q^)_) \breathe %\break
  
  <fs a>8 q q |
  q4. <d fs> q8 <d g> <d a> |
  <d b>4.^(_( q^)_) \breathe <d d'>8 <d cs'> <d b> |
  <d a>4. <d fs> <cs a>8 <cs e> <cs fs> |
  d4.^(_( d^)_) \breathe \bar "||" \break
  
  <d b>8^\markup "(후렴)" q q |
  q4. <d g> <g b>8 q q |
  <fs a>4. <d fs> \breathe <fs a>8 q q | %\break
  
  <e a>4. <cs e>4 <cs a>8 <e cs'> q < d b> |
  <cs a>4.^(_( a^)_)\fermata \breathe <d fs>8 <e g> <es gs> |
  <fs a>4. <d fs> <d fs>8 <e g> <fs a> |% \break
  
  <g b>4.^(_( \stemDown <b d'>^)_)\fermata \breathe <b d'>8 \stemUp <a cs'> <g b> |
  <fs a>4. <d fs> <cs a>8 <cs e> <cs fs> |
  <a, d>4.^(_( q^)_) \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4. | s2. s4. | s2. s4. | s2. s4. | s2.
  s4. | s2. s4. | s2. s4. | s2. s4. | d4. d
  
  s4. | s2. s4. | s2. s4. |
  s2. s4. | s4. g s4. | s2. s4. |
  s2. s4. | s2. s4. | s2.
}

tenor = \fixed c {
  \global
  s4. | s2. s4. | s2. s4. | s2. s4. | s2.
  s4. | s2. s4 <a, fs>8 | <g, g>4.^(_( q^)_) s4. | <a, fs>4. s <a, e>8 s4 | s2.
  
  g8 g g  | g4. s2. | s2. s4. |
  s4. s4 e8 s fs s   | s2. s4. | s2. s4. |
  s2. s4. | s2. s4. | s2.
}

bass = \fixed c {
  \global
  <d d'>8 q q | 
  q4. <d a> q8 q q |
  <a, a>4.^(_( q^)_) \breathe <a, cs'>8 q q |
  q4. <a, a> q8 <b, a> <cs a> |
  <d a>4.^(_( q^)_) \breathe
  
  <d d'>8 q q | q4. <d a> <c a>8 <b, g> s |
  s2. \breathe <g, b>8 <g, a> <g, g> |
  s4. <a, a> s8 <a, g> <a, a> |
  <d fs>4.^(_( q^)_) \breathe
  
  g8 g g |
  g4. <g b> <g d'>8 q q |
  <d d'>4. <d a> \breathe <d a>8 <d b> <ds bs> |
  
  <e cs'>4. <e a>4 e8 <e a> e <e gs> |
  <g, a>4. <g, cs'> \breathe <d a>8 q q |
  <d d'>4. <d a> <d a>8 q <d d'> |
  
  <g d'>4.^(_( q^)_)\fermata \breathe q8 q q |
  <d d'>4. <d a> <a, g>8 q <a, a> |
  <d fs>4.^(_( q^)_) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  갈 보 리 동 산 험 한 길 에
  십 자 가 지 신 구 주 예 수
  내 모 든 죄 를 사 하 시 고
  영 원 한 생 명 주 셨 도 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  저 들 의 죄 를 사 하 소 서
  주 님 이 대 신 간 구 했 네
  극 심 한 고 통 당 할 때 도
  끝 까 지 우 리 사 랑 했 네
  
  고 마 운 주 님 귀 하 신 주 님
  나 지 금 주 를 바 라 봅 니 다
  내 죄 를 위 해 피 흘 리 사
  주 님 이 대 신 죽 으 셨 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  오 나 의 주 님 귀 한 친 구
  그 은 혜 어 찌 보 답 할 꼬
  세 상 에 서 나 천 국 에 서
  영 원 히 찬 미 하 리 로 다
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
      \tempo 4 = 100
    }
  }
}

