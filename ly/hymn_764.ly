\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주님을 바라 보아라"
engTitle = "Look to the Lamb of God"
hymnNumber = "764"
poet = "H. G. Jacksen, 19th Centry"
composer = "James M. Black, 1856~1938"
bibleInfo = "히 12:2-3"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <c a>4 q8. <c bf>16 <c a>4 c |
  <c f>8. <c g>16 <f a>8. <f bf>16 <f c'>2 \breathe |
  <f c'>4 q8. <f a>16 f4 <f a> |
  <e g>2. b4\rest | \break
  
  <c a>4 q8. <d bf>16 <c a>4 c |
  <c f>8. <c g>16 <f a>8. <f bf>16 <f c'>2 \breathe |
  <e c'>4 q8. <e bf>16 <e a>4 <c g> |
  <c f>2. b4\rest | \break
  
  <f c'>4^\markup "(후렴)" q8. <f d'>16 <f c'>4 <c f> |
  <c e>2. b4\rest |
  <e g>4 <g bf>8. <a c'>16 \stemDown <bf e'>4 <bf d'> \stemUp |
  <a c'>2. b4\rest \break
  
  <f a>4 q8. <e bf>16 <f c'>4 <f a> |
  <f bf>4 <f d'>8. q16 q4 <f bf> \breathe |
  <f a>4 <f c'>8. <f bf>16 <e a>4 <e g> |
  <c f>2. b4\rest \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  s2. c4 | s1 | s2 f4 s | s1 |
  s2. c4 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
}

tenor = \fixed c {
  \global
  f4 8. 16 4 s | s4 s8. g16 s2 | s1 | s1 |
  f4 8. 16 4 s | s4 s8. g16 s2 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  
}

bass = \fixed c {
  \global
  f4 8. 16 4 <f a> |
  q8. <f bf>16 <f c'>8. f16 <f a>2 \breathe |
  q4 q8. <f c'>16 <a c'>4 <f c'> |
  <c c'>2. f4\rest |
  
  f4 8. 16 4 <f a> |
  q8. <f bf>16 <f c'>8. f16 <f a>2 \breathe |
  <c g>4 q8. <c c'>16 q4 <c bf> |
  <f a>2. f4\rest |
  
  q4 q8. <f bf>16 <f a>4 q |
  <g bf>4 q <c bf> f4\rest |
  <c c'>4 q8. q16 q4 <c e'> |
  <f f'> <c f'> <f f'> f4\rest |
  
  <f c'>4 q8. q16 <a c'>4 <f c'> |
  <bf, d'> <bf, bf>8. q16 q4 <bf, d'> \breathe |
  <c c'> <c a>8. <c d'>16 <c c'>4 <c bf> |
  <f a>2. f4\rest |
}

verseOne = \lyricmode {
  \set stanza = "1."
  무 거 운 죄 짐 벗 기 원 하 면
  주 바 라 보 아 라
  너 속 죄 코 자 피 훌 리 신 주
  하 나 님 어 린 양
  
  하 나 님 어 린 양
  하 나 님 어 린 양
  너 구 원 할 자 오 직 한 분 인 
  주 바 라 보 아 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  두 렴 과 의 심 유 혹 당 할 때
  주 바 라 보 아 랴
  주 님 의 능 력 보 호 하 리 니
  하 나 님 어 린 양
}

verseThree = \lyricmode {
  \set stanza = "3."
  너 가 는 길 이 피 곤 할 때 에
  주 바 라 보 아 라
  네 맘 에 힘 과 기 쁨 주 시 는
  하 나 님 어 린 양
}

verseFour = \lyricmode {
  \set stanza = "4."
  어 려 운 시 험 앞 을 막 을 때
  주 바 라 보 아 라
  만 물 을 친 히 주 관 하 시 는
  하 나 님 어 린 양
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

