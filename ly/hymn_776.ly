\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "훗날 우리 다시 만나"
engTitle = "Shall We Gather At the River"
hymnNumber = "776"
poet = "Robert Lowry, 1826~1899"
composer = "Robert Lowry, 1826~1899"
bibleInfo = "계 21:1-4"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key d \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d fs>4 q q8. <cs e>16 <d fs>8. <e g>16 |
  <fs a>2 <d fs> \breathe |
  <e g>4 q q8. <fs a>16 <e g>8. <d fs>16 |
  <cs e>2^(_( <cs a>^)_) \breathe | \break
  
  <d fs>4 q q8. <cs e>16 <d fs>8. <e g>16 |
  <fs a>2 <d fs>4 \breathe q8 <d g> |
  <cs e>4 q8[ <d fs>] <e g>4 <d fs>8[ <cs e>] |
  d1 \bar "||" | \break
  
  <d b>4^\markup "(후렴)" q <g d'>8. <g cs'>16 <g d'>8. <g b>16 |
  <fs a>2 <d fs>4. \breathe q8 |
  <e g>8. <ds fs>16 <e g>8. <ds fs>16 <e g>8. <ds fs>16 <e g>8 <cs e> |
  <d fs>2 <fs a> \breathe | \break
  
  <g b>8. q16 q8. q16 <g d'>8. <g cs'>16 <g d'>8. <g cs'>16 |
  <fs a>2 <d fs>4 \breathe q |
  <cs e>4 q8. <d fs>16 <e g>4 <d fs>8 <cs e> |
  d1 \bar "|." |
}

aligner = \fixed c' {
  \global
  <d fs>4 q q8. <cs e>16 <d fs>8. <e g>16 |
  <fs a>2 <d fs> |
  <e g>4 q q8. <fs a>16 <e g>8. <d fs>16 |
  <cs e>2 <cs a> | 
  
  <d fs>4 q q8. <cs e>16 <d fs>8. <e g>16 |
  <fs a>2 <d fs>4 q8 <d g> |
  <cs e>4 q8 <d fs> <e g>4 <d fs>8 <cs e> |
  d1 |
  
  <d b>4 q <g d'>8. <g cs'>16 <g d'>8. <g b>16 |
  <fs a>2 <d fs>4. q8 |
  <e g>8. <ds fs>16 <e g>8. <ds fs>16 <e g>8. <ds fs>16 <e g>8 <cs e> |
  <d fs>2 <fs a> |
  
  <g b>8. q16 q8. q16 <g d'>8. <g cs'>16 <g d'>8. <g cs'>16 |
  <fs a>2 <d fs>4 q |
  <cs e>4 q8. <d fs>16 <e g>4 <d fs>8 <cs e> |
  d1 |
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | d1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | d1 |
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s2. a8[ g] | d1 |
  g4 g s8. as16 s4 | s1 | s1 | s1 |
  s2 s8. gs16 s4 | s1 | s2. a8 g | d1 |
}

bass = \fixed c {
  \global
  <d a>4 q q8. q16 q8. q16 |
  <d cs'>2 <d a> \breathe |
  <a, a>4 q q8. q16 q8. q16 |
  <a, a>2^(_( q^)_) \breathe |
  
  <d a>4 q q8. q16 q8. q16 |
  <d d'>2 <d a>4 \breathe q8 <d b> |
  <a, a>4 q q a, |
  d1 \breathe |
  
  g4 g <g b>8. g16 <g b>8. <g d'>16 |
  <d d'>2 <d a>4. \breathe q8 |
  <a, a>8. q16 q8. q16 q8. q16 q8 q |
  <d a>2 <d d'> \breathe |
  
  <g d'>8. q16 q8. q16 <g b>8. g16 <g b>8. <g d'>16 |
  <d d'>2 <d a>4 \breathe q |
  <a, a>4 q8. q16 q4 a, |
  d1
}

verseOne = \lyricmode {
  \set stanza = "1."
  훗 날 우 리 다 시 만 나
  수 정 강 물 가 에 모 여
  천 사 영 접 받 으 면 서
  주 의 보 좌 앞 에 있 겠 네

  우 리 모 두 거 기 모 여
  저 아 름 답 고 황 홀 한 강 가 에
  사 함 받 은 성 도 들 과 만 나
  주 보 좌 앞 에 있 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 보 좌 에 서 부 터
  강 물 흘 러 나 리 니 "-"
  강 변 생 명 나 무 마 다
  풍 성 한 과 일 이 열 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  그 강 변 에 서 기 전 에
  육 신 짐 을 모 두 벗 고
  변 화 함 을 받 은 몸 이
  예 비 한 면 류 관 받 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  장 막 생 활 모 두 끝 나
  속 히 거 기 가 리 니 "-"
  참 된 복 락 누 리 므 로
  영 원 한 안 식 을 얻 겠 네
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

