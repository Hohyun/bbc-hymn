\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 마음 가까이"
engTitle = "Near to the Heart of God"
hymnNumber = "761"
poet = "Cleland B. McAfee, 1866~1944"
composer = "Cleland B. McAfee, 1866~1944"
bibleInfo = "빌 2:4-12"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <df f>4 |
  q4. <c e>8 <df f>4 <b, f> |
  <c gf>4. <b, f>8 <c gf>2 \breathe |
  <c ef>4 q8 q <c af>4 <ef gf> |
  <df f>2. \breathe \break
  
  q4 |
  q4. <c e>8 <df f>4 <b, f> |
  <c gf>4. <b, f>8 <c gf>2 \breathe |
  <c ef>4 <c af>8 <c gf> <df f>4 <c ef> |
  <df f>2. \breathe \break
  
  df4^\markup "(후렴)" |
  <df bf>4. q8 <df f>4 bf |
  <gf bf>2 <f af> \breathe |
  q4 <ef gf>8 <df f> <c gf>4 <c af> |
  <df f>2. \breathe \break
  
  df4 |
  <df bf>4. q8 <df c'>4 <df bf> |
  <df af>2 <df f> \breathe |
  <c ef>4 <c f>8 <c gf> <c f>4 ef |
  <af, df>2. \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s2.
  
  df4 | s2. df8[ gf] | s1 | s1 | s2.
  df4 | s1 | s1 | s2. c8[ af,] | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s2 <af, ef>4 s4 | s2.
  s4 | s1 | s1 | s1 | s2.
  
  s4 | <gf, gf>4. q8 s2 | s1 | s1 | s2.
  s4 | gf4. 8 af4 gf | s1 | s4 <gf, f>8 <gf, ef> s2 | s2.
}

bass = \fixed c {
  \global
  <df af>4 |
  q4. <af, af>8 <df af>4 <d af> |
  <ef af>4. <d af>8 <ef af>2 \breathe |
  <af, af>4 q8 q s4 q4 |
  <df af>2. \breathe 
  
  q4 | q4. <af, af>8 <df af>4 <d af> |
  <ef af>4. <d af>8 <ef af>2 \breathe |
  <af, af>4 q8 q q4 q |
  <df af>2. \breathe
  
  <df f>4 |
  s2 <gf bf>4 <gf df'> |
  <df df'>2 q \breathe |
  <af, c'>4 q8 <af, af>8 q4 q |
  <df af>2. \breathe
  
  <df f>4 |
  gf4. 8 4 4 |
  <df f>2 <df af> \breathe |
  <af, gf>4 s4 <af, af> <af, gf> |
  <df f>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  편 히 쉴 만 한 곳 있 네 
  주 마 음 가 까 이
  내 죄 가 방 해 못 하 네
  주 마 음 가 까 이
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 위 로 받 을 곳 있 네
  주 마 음 가 까 이
  내 주 님 만 날 곳 있 네
  주 마 음 가 까 이
  
  오 예 수 나 의 주 님
  내 죄 사 했 으 니
  내 영 혼 이 끄 소 서
  주 마 음 가 까 이
}

verseThree = \lyricmode {
  \set stanza = "3."
  참 자 유 얻 을 곳 있 네
  주 마 음 가 까 이
  기 쁨 과 평 안 얻 겠 네
  주 마 음 가 까 이
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

