\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "저 십자가"
engTitle = "At Calvary"
hymnNumber = "751"
poet = "William R. Newell, 1868~1956"
composer = "Daniel B. Towner, 1850~1919"
bibleInfo = "빌 2:6-11"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <e g>4. q8 q8. <d f>16 <c e>8. <d f>16 |
  <e g>4 <f a> <e g>2 \breathe |
  <f b>4. q8 q8. <f a>16 <e g>8. <d f>16 | \break
  
  <c e>4 <f a> <e g>2 \breathe |
  <e g>4. q8 q8. <d f>16 <c e>8. <d f> 16 |
  <e g>4 <f a> <e g> <g c'> |
  <f d'>2 <f b> |
  <e c'>2. b4\rest | \break
  
  <a c'>4.^\markup "(후렴)" <gs b>8 <a c'>8. <gs b>16 <a c'>8. <f a>16 |
  <f a>4 <e g> q2 \breathe |
  <f b>4. <f a>8 <f b>8. <f a>16 <f b>8. <f a>16 | \break
  
  <e g>4 <e c'> q2 \breathe |
  <a c'>4. <gs b>8 <a c'>8. <gs b>16 <a c'>8. <f a>16 |
  q4 <e g> q \breathe <g c'> |
  <f d'>2 <f b> |
  <e c'>2. b4\rest \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
  s1 | s1 | s2. s8. g16 |
  s1 | s1 | s1 | s2 g2 | s1 |
  s1 | s1 | s1 |
  s1 | f4. 8 8. 16 8. s16 | s1 | s2 g | s1 |
}

bass = \fixed c {
  \global
  <c c'>4. q8 q8. q16 <c g>8. q16 |
  <c c'>4 q q2 \breathe |
  <g d'>4. q8 q8. <g b>16 <g c'>8. g16 |
  
  <c g>4 <c c'> q2 \breathe |
  q4. q8 q8. q16 <c g>8. q16 |
  <c c'>4 q q <e c'> |
  <f a>2 g |
  <c g>2. d4\rest |
  
  <f c'>4. q8 q8. q16 q8. q16 |
  <c c'>4 q q2 \breathe |
  <g d'>4. q8 q8. q16 q8. <g b>16 |
  
  <c c'>4 <c g> q2 \breathe |
  f4. 8 8. 16 8. <f c'>16 |
  <c c'>4 q q \breathe <e c'> |
  <f a>2 g |
  <c g>2. d4\rest \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  헛 된 일 에 세 월 보 내 고
  주 를 멀 리 떠 나 있 었 네
  날 위 하 여 주 님 죽 으 신
  저 십 자 가
  
  주 의 자 비 풍 성 하 시 니
  나 를 용 서 하 심 한 없 네
  죄 짐 벗 고 자 유 얻 은 곳
  저 십 자 가
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 말 씀 맘 에 받 을 때
  내 죄 알 고 심 히 떨 었 네
  내 죄 형 벌 모 두 맡 긴 곳
  저 십 자 가
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 께 모 든 것 을 드 리 니
  주 가 나 의 왕 이 되 셨 네
  나 의 찬 미 제 목 하 나 뿐
  저 십 자 가
}

verseFour = \lyricmode {
  \set stanza = "4."
  구 원 하 심 이 루 시 려 고
  이 땅 위 에 오 신 주 예 수
  하 나 님 과 화 목 된 곳 은
  저 십 자 가
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

