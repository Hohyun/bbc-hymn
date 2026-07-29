\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "사랑하는 예수"
engTitle = "O How I Love Jesus"
hymnNumber = "786"
poet = "Frederick Whitfielo, 1829~1904"
composer = "Arr. by G. W. Peterson, 1921"
bibleInfo = "롬 8:36-39"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \numericTimeSignature
  \time 6/8
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

soprano = \fixed c' {
  \global
  <b, g>8 |
  <d b>4 q8 q8[ <c a>] <d b> |
  <b, g>4 q8 q4 \breathe <d g>8 |
  <d a>4 q8 a[ g] <d a> |
  <d b>4. <d d'>4 \breathe \break
  
  <d c'>8 |
  <d b>4 q8 q[ <c a>] <d b> |
  <b, g>4 q8 q4 \breathe <d g>8 |
  a[ b] <e c'> <d b>4 <c a>8 |
  <b, g>4.^(_( q^)_) \bar "||" | \break
  
  <d b>4.^\markup "(후렴)" q8 <c a> <d b> |
  <b, g>4. <d g> \breathe |
  <d a>4. q8 <d g> <d a> |
  <d b>4. d'4( c'8) \breathe | \break
  
  <d b>4. <ds b>8 <ds a> <fs b> |
  <e g>4. g4\breathe 8 |
  a8[ b] <ef c'>8 <d b>4 <c a>8 |
  <b, g>4.^(_( q4^)_) \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s8 | s2. | s2. | s4. d4 s8 | s4. s4
  s8 | s2. | s2. | e4 s2 | s2. |
  
  s2. | s2. | s2. | s4. d |
  s2. | s4. f4 8 | e4 s2 | s4. s4
}

tenor = \fixed c {
  \global
  <g, d>8 | 
  <g, g>4 q8 q4 q8 | 
  <g, d>4 q8 q4 \breathe s8 | 
  s4. fs8[ e] s | 
  <g, g>4. s4
  
  <a, fs>8 | 
  <g, g>4 q8 q4 q8 | 
  <g, d>4 q8 q4 \breathe s8 | 
  s2. | 
  <g, d>4.^(_( q^)_) |
  
  <g, g>4. q8 q q | 
  <g, d>4. s | 
  s2 e8 s | 
  <g, g>4. s \breathe |
  
  <g, g>4. s | 
  s2. | 
  s2. | 
  <g, d>4.^(_( q4^)_)
}

bass = \fixed c {
  \global
  s8 |
  s2. |
  s4. s4 <b, g>8 |
  <d fs>4 q8 d4 <d fs>8 |
  s4. <b, g>4 \breathe
  
  s8 |
  s2. |
  s4. s4  \breathe <b, g>8 |
  <c g>4 q8 <d fs>4 q8 |
  s2. |
  
  s2. |
  s4. <b, g> \breathe |
  <d fs>4. q8 d <d fs> |
  s4. \stemUp <b, g>4^(_( \stemDown <a, fs>8^)_) |
  
  s4. <b, fs>8 q <ds b> |
  <e b>4. <d b>4 \breathe q8 |
  <c a>8[ <b, gs>] <a, g> <d fs>4 q8 |
  s4. s4
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  그 귀 한 이 름 주 예 수 
  내 노 래 제 목 일 세
  내 귀 에 음 악 같 으 니
  무 엇 에 비 하 랴
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 영 혼 구 하 시 려 고
  대 신 죽 음 당 했 네
  그 흘 린 보 배 피 로 서
  나 정 결 케 됐 네

  오 내 사 랑 예 수 
  오 내 사 랑 예 수
  오 주 께 서 먼 저
  날 사 랑 하 셨 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 나 를 받 아 주 시 고
  자 녀 삼 아 주 신 후
  영 멸 망 길 을 떠 나 서
  저 천 국 길 가 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  나 깊 은 고 난 당 할 때
  주 앞 에 다 고 하 면
  피 할 길 미 리 주 시 니
  나 염 려 없 겠 네
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

