\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "진실로 진실로"
engTitle = "Verily, Verily"
hymnNumber = "719"
poet = "James McGranahan, 1840~1907"
composer = "James McGranahan, 1840~1907"
bibleInfo = "요 5:24"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

aligner = \fixed c' {
  <d g>4 q8 <d a> <d g> <d fs> <c e> <b,d> |
  <d g>4 <d a> <d b>2 |
  <d a>4 q8 <d b>8 
  
  <d a>8 <d g> <d fs> <d g> |
  <d a>4 <d b> <d c'>2  |
  <d b>4 <f d'>8. q16 <e c'>8 <d b> <c a> <b, g> | 
  
  <d fs>4 <c e> <e c'>2  |
  <g e'>4 <g d'>8 <g c'> <g b>4 <fs a> |
  <d g>1  |
  <g b>8. <a c'>16 <b d'>4 <g b>8. <a c'>16 <b d'>4 | 
  
  <gs e'>8 <g d'> <g c'> <g b> <a c'>2 |
  <fs a>8. <g b>16 <a c'>4 <fs a>8. <g b>16 <a c'>4 |
  <fs d'>8 <fs c'> <fs b> <fs a> <g b>2 | 
  
  <g b>4 <f d'>8. q16 <e c'>8 <d b> <c a> <b, g> |
  <d fs>4 <c e> <e c'>2  |
  <gs e'>4 <g d'>8 <g c'> <g b>4 <fs a> |
  <d g>1 \bar "|." |
}

soprano = \fixed c' {
  \global
  <d g>4 q8 <d a> <d g> <d fs> <c e> <b,d> |
  <d g>4 <d a> <d b>2 \breathe |
  <d a>4 q8 <d b>8 %\break
  
  <d a>8 <d g> <d fs> <d g> |
  <d a>4 <d b> <d c'>2 \breathe | \break
  <d b>4 <f d'>8. q16 <e c'>8 <d b> <c a> <b, g> | %\break
  
  <d fs>4 <c e> <e c'>2 \breathe |
  s4 <g d'>8 <g c'> <g b>4 <fs a> |
  <d g>1 \breathe \bar "||" |
  <g b>8.^\markup "(후렴 )" <a c'>16 s4 <g b>8. <a c'>16 s4 | %\break
  
  s8 <gs d'> <gs c'> <gs b> <a c'>2 \breathe |
  <fs a>8. <g b>16 <a c'>4 <fs a>8. <g b>16 <a c'>4 |
  <fs d'>8 <fs c'> <fs b> <fs a> <g b>2 \breathe | %\break
  
  <g b>4 <f d'>8. q16 <e c'>8 <d b> <c a> <b, g> |
  <d fs>4 <c e> <e c'>2 \breathe |
  s4 <g d'>8 <g c'> <g b>4 <fs a> |
  <d g>1 \bar "|." |
}

alto = \fixed c' {
  \global
  s1 | s1| s2
  s2 | s1 | s1 |
  s1 | <g e'>4 s2. | s1 | s4 <b d'>4 s4 <b d'>4 |
  <gs e'>8 s4. s2 | s1 | s1 |
  s1 | s1 | <g e'>4 s2. | s1 |
  
}

tenor = \fixed c {
  \global
  s1 | s2  g2 | s2
  s2 | s4 g4 s2 | g4 s4 g8 8 s4 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 |
  s2 g8 8 s4 | s1 | s1 | <g b>1 |
}

bass = \fixed c {
  \global
  <g, b>4 q8 <g,c'> <g, b> <g, a> <g,g> q |
  <b, g>4 <d fs> g2 \breathe |
  <d fs>4 q8 <d g>
  
  <d c'>8 <d b> <d a> <d g> |
  <d fs>4 g <fs a>2 \breathe |
  g4 <g b>8. q16 g8 8 <d fs> <e g> |
  
  <c g>4 q q2 \breathe | <a, c'>4 <b, b>8 <c a> <d d'>4 <d c'> |
  <g b>1 \breathe |
  <g d'>8. q16 q4 q8. <g c'>16 <g b>4 |
  
  <e b>8 q <e e'> q <a e'>2 \breathe |
  <d d'>8. q16 q4 <d c'>8. <d b>16 <d a>4 |
  <d a>8 q <d d'>8 q <g d'>2 \breathe |
  
  <g d'>4 <g b>8. q16 g8 8 <d fs> <e g> |
  <c g>4 q q2 \breathe |
  <a, c'>4 <b, b>8 <c a> <d d'>4 <d c'> |
  g,1 \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 나 를 위 해 죽 으 심 으 로
  큰 죄 의 저 주 면 해 주 셨 네
  아 들 을 보 고 믿 는 자 마 다
  영 생 을 주 리 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 죄 의 짐 을 대 신 지 시 사
  내 죄 의 빛 을 갚 아 주 셨 네
  누 구 나 예 수  공 로 힘 입 어
  영 생 을 얻 겠 네
  
  진 실 로 진 실 로 네 게 이 르 니
  진 실 로 진 실 로 주 의 말 씀 에
  아 들 을 보 고 믿 는 자 마 다
  영 생 을 주 리 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  빈 궁 할 때 에 주 께 맡 기 며 
  연 약 할 때 에 말 씀 믿 으 오
  우 리 게 기 쁜 소 식 들 리 니
  영 생 을 얻 겠 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  나 같 은 죄 인 용 서 하 심 은
  주 님 의 사 랑 풍 성 함 일 세
  이 기 쁜 소 식 믿 는 자 마 다
  영 생 을 얻 겠 네
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
      \tempo 4 = 90
    }
  }
}

