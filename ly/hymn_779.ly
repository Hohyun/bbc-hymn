\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주가 진주문을 열고"
engTitle = "He the Pearly Gates Will Open"
hymnNumber = "779"
poet = "Fredrik A. Blom, 1867~1927"
composer = "Elsie Ahlwen, 1905~"
bibleInfo = "계 21:21-23"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d b>4. <d b>8 <d a>8. <d g>16 <d b>8 <c a> |
  <b, g>2 g \breathe | 
  <e c'>4. q8 <d b>8. <d a>16 <d g>8 <d b> |
  <d a>2. b4\rest \breathe | \break
  
  <d b>4. <c a>8 <b, g>8. q16 <b, d>8 <b, ds> |
  <c e>2 <e g>4 \breathe <d fs>8 <c e> |
  <b, d>4 <d b> q <c a> |
  g1\bar "||" | \break
  
  <c a>4. q8 <d b>8. <c a>16 <b, g>8 <c a> |
  <d b>2 g \breathe |
  <e c'>4. q8 <d b>8. <d a>16 <d g>8 <d b> | 
  <d a>2. b4\rest \breathe |
  
  <d b>4. <d a>8 <b, g>8. q16 <b, d>8 <b, ds> |
  <c e>2 <c g>4 \breathe <as, fs>8 <as, e> |
  <b, d>4 <d b> <e c'> <c fs> |
  g1 \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  s1 | s2 d4( f) | s1 | s1 |
  s1 | s1 | s1 | b,1 |
  s1 | s2 f | s1 | s1 |
  s1 | s1 | s1 | b,1 |
}

tenor = \fixed c {
  \global
  <g, g>4. q8 <a, fs>8. s16 s4 | 
  <g, d>2 s2 | 
  s2 <g, g>8. <a, fs>16 s8 <g, g> | 
  s1 |
  
  <g, g>4. <g, d>8 q8. q16 <g, g>8 q | s1 | s1 | s1 |
  
  s2. e8 s | <g, g>2 s2 | s2 <g, g>8. <a, fs>16 s4 | s1 |
  
  <g, g>4. <g, d>8 q8. q16 <g, g>8 q | 
  s1 | s1 | s1 |
}

bass = \fixed c {
  \global
  s2 s8. <b, g>16 <d fs>8 q | 
  s2 <b, g> \breathe | 
  <c g>4. q8 s4 <b, g>8 s8 | 
  <d fs>2. d4\rest \breathe |
  
  s1 |
  <c g>2 q4 \breathe q8 q |
  <d g>4 q <d fs> q |
  <g, d>1 |
  
  <d fs>4. q8 q8. q16 d8 <d fs> |
  s2 <b, g>2 \breathe |
  <c g>4. q8 s4 <b, g>8 <g, g> |
  <d fs>2. d4\rest \breathe |
  
  s1 |
  <c g>2 <c e>4 \breathe <cs fs>8 <cs g> |
  <d g>4 q q <d a> |
  <g, d g>1 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 의 사 랑 어 찌 큰 지
  측 량 할 수 없 도 다
  예 수 십 자 가 를 통 해
  변 함 없 는 그 사 랑

  주 가 진 주 문 을 열 고
  나 를 반 겨 맞 으 리
  나 의 죄 값 지 불 하 사
  모 든 죄 사 하 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  상 처 받 은 사 슴 같 이
  상 한 비 둘 기 같 이
  죄 에 쫒 겨 다 닐 때 에
  주 가 구 해 주 셨 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 의 크 신 사 랑 으 로
  보 혈 흘 려 주 셨 네
  내 죄 사 해 주 신 주 님
  영 원 찬 미 하 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  나 의 갈 길 다 지 난 후
  천 국 문 두 드 릴 때
  주 의 사 랑 의 지 하 여
  천 국 에 들 어 가 리
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
      \tempo 4 = 100
    }
  }
}

