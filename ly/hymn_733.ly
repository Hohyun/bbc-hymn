\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내 맘속에 노래 있으니"
engTitle = "He Keeps Me Singing"
hymnNumber = "733"
poet = "Luther B. Bridgers, 1844~1948"
composer = "Luther B. Bridgers, 1844~1948"
bibleInfo = "히 3:12-16"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d b>8 q <cs as> <d b> <e c'>4 <d b> |
  <cs b> <cs a> <cs e>2 \breathe |
  <d fs>8 <e g> <es gs> <fs a> <fs d'>4 <d c'> |
  b2^( c'4) b4\rest \breathe | \break
  
  <b, d>8 <d b> <cs as> <d b> <e c'>4 <d b> |
  <cs b> <cs a> <cs e>2 \breathe |
  <d fs>8 <d d'> <d c'> <d fs> <d b>4 <c a> |
  <b, g>2. b4\rest \breathe | \break
  
  <b, d>4^\markup "(후렴)" <b, e> <b, fs> <d g> |
  <d c'>2 <d fs>4 b4\rest \breathe |
  <fs d'>4 <fs a> <fs d'> <fs as> |
  <g b>2. b4\rest \breathe | \break
  
  <b, d>4 <b, e> <b, fs ><d g> |
  <e a>2 e4 b\rest \breathe |
  <d fs>8 <d d'> <d c'> <d fs> <d b>4 <c a> |
  <b, g>2. b4\rest \bar "|." |
  
}

aligner = \soprano

alto = \fixed c' {
  \global
  s1 | s1 | s1| d2. s4 |
  s1 | s1 | s1| s1 |
  s1 | s1 | s1| s1 |
  s1 | s2 e4 s4 | s1| s1 |
}

tenor = \fixed c {
  \global
  <g, g>8 q q q q4 q | <a, g>4 q q2 \breathe | s1 | g2^( fs4) d4\rest \breathe |
  <g, g>8 q q q q4 q | <a, g>4 q q2 \breathe | s1 |<g, g>2. d4\rest \breathe |
  <g, g>4 q q s | <a, fs>2 s2 | s1 | s1 |
  <g, g>4 q q s | s1 | s1 | <g, g>2. d4\rest \bar "|." |
}

bass = \fixed c {
  \global
  s1 | s1 | <d a>8 q q q q4 <d fs> | d2. s4 |
  s1 | s1 | <d a>8 <d fs> q <d a> <d g>4 <d fs> | s1 |
  s2. <b, g>4 | s2 <d a>4 d\rest \breathe | <d a> <d d'> <d a> <d d'> | <g d'>2. d4\rest \breathe |
  s2. <b, g>4 | <c g>2 <c a>4 d\rest | <d a>8 <d fs> q <d a> <d g>4 <d fs> | s1 |
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 맘 속 에 노 래 있 으 니
  속 삭 이 는 주 음 성
  주 님 안 에 있 는 참 평 화
  평 생 나 를 지 키 네
  
  예 수 예 수 예 수 
  귀 한 그 이 름
  내 게 만 족 주 니
  항 상 노 래 합 니 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 죄 심 히 나 를 누 르 고
  맘 에 고 통 당 할 때
  예 수 나 를 풀 어 주 시 사
  화 평 이 뤄 주 셨 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  한 량 없 는 주 의 큰 은 혜 
  주 의 날 개 아 래 서
  주 의 미 소 바 라 볼 때 에
  찬 미 절 로 납 니 다
}

verseFour = \lyricmode {
  \set stanza = "4."
  가 끔 환 란 시 험 당 하 고
  마 귀 시 험 당 할 때
  주 가 피 할 길 을 주 시 니
  주 만 바 라 봅 니 다
}

verseFive = \lyricmode {
  \set stanza = "5."
  주 님 나 를 영 접 하 시 려
  공 중 에 임 하 실 때
  고 대 하 던 하 늘 나 라 에
  길 이 주 와 살 겠 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
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
            \context NullVoice = aligner {
             \aligner
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
        \context Lyrics = "LyrFive" \lyricsto "aligner" { \verseFive }
    
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

