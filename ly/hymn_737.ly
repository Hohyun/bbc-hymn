\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "아침문을 나설 때에"
engTitle = "Did you Think to P"
hymnNumber = "737"
poet = "Marry A. Kidder, 1821~1905"
composer = "W. O. Perkins, 1933~1914"
bibleInfo = "살전 5:16-17"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <f a>4. q8 <f bf> <f a> <c g> <c f> |
  c2 <c f> |
  <e g>4. q8 <g bf>4 <f a> |
  <e g>2. f4\rest |
  <e g>4. q8 q q \break
  
  f8 <e g> | <f a> 2 <f c'> \breathe |
  <f a>4. q8 <f bf> <f a> <c g> <c f> |
  d2 <d f> |
  <c e>4. <c f>8 <e g>4. <e a>8 |
  f2. b4\rest \bar "||" | \break
  
  s2. <gs b>8 s | s1 | 
  <f a>4. s4. <g bf>8 <f a> |
  <e g>2. b4\rest | \break
  
  <f a>4. q8 <f bf>8 <f a> <c g> <c f> |
  d2 <d f> \breathe |
  <c e>4. <c f>8 <e g>4. <e a>8 |
  f2. b4\rest \bar "|." |
}

aligner = \fixed c' {
  \global
  <f a>4. q8 <f bf> <f a> <c g> <c f> |
  c2 <c f> |
  <e g>4. q8 <g bf>4 <f a> |
  <e g>2. f4\rest |
  <e g>4. q8 q q \break
  
  f8 <e g> | <f a> 2 <f c'> \breathe |
  <f a>4. q8 <f bf> <f a> <c g> <c f> |
  d2 <d f> |
  <c e>4. <c f>8 <e g>4. <e a>8 |
  f2. b4\rest \bar "||" | \break
  
  <a c'>4. q8 <bf d'> <a c'> <gs b>8 <a c'> | 
  <a f'>2 <a c'> | 
  <f a>4. <a c'>8 <bf d'> <a c'> <g bf>8 <f a> |
  <e g>2. b4\rest | \break
  
  <f a>4. q8 <f bf>8 <f a> <c g> <c f> |
  d2 <d f> \breathe |
  <c e>4. <c f>8 <e g>4. <e a>8 |
  f2. b4\rest \bar "|." |
}

alto = \fixed c' {
  \global
  s1 | c2 s2 | s1 | s1 | s2.
  f8 s | s1 | s1 | d2 s2 | s1 | f2. s4 |
  <a c'>4.^\markup "(후렴)" q8 <bf d'> <a c'> s <a c'> | <a f'>2 <a c'> \breathe | s4. <a c'>8 <bf d'> <a c'> s4 | s1 | 
  s1 | d2 s2 | s1 | f2. s4 |
}

tenor = \fixed c {
}

bass = \fixed c {
  \global
  <f c'>4. q8 <f d'> <f c'> <f bf> <f a> |
  <f a>2 q |
  <c c'>4. q8 <e c'>4 <f c'> |
  <c c'>2. d4\rest |
  <c c'>4. q8 q q 
  
  <a, c'>8 <c c'> |
  <f c'>2 < f a> \breathe |
  <f c'>4. q8 <f d'> <f c'> <f bf> <f a> |
  <bf, bf>2 q |
  <c g>4. <c a>8 <c bf>4. <c c'>8 |
  <f a>2. d4\rest |
  
  <f c'>4. <f f'>8 q q <f d'> <f c'> |
  <f c'>2 <f f'> \breathe |
  <f c'>4. <f f'>8 q q <f c'> q |
  <c c'>2. d4\rest |
  
  <f c'>4. q8 <f d'> <f c'> <f bf> <f a> |
  <bf, bf>2 q \breathe |
  <c g>4. <c a>8 <c bf>4. <c c'>8 |
  <f a>2. d4\rest \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  아 침 문 을 나 설 때 에
  기 도 했 느 뇨
  주 의 이 름 의 지 하 여
  주 실 은 혜 감 사 하 여
  도 움 구 하 라
  
  기 도 할 때 안 식 얻 고
  어 둠 사 라 지 리 니
  너 의 생 활 피 곤 할 때
  기 도 하 여 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  환 란 시 험 당 할 때 에
  기 도 했 느 뇨
  주 의 사 랑 의 지 하 여
  성 령 인 도 하 심 따 라
  도 움 구 하 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  분 한 마 음 괴 롭 힐 때
  기 도 했 느 뇨
  주 의 은 혜 세 어 보 고
  용 서 할 맘 주 시 도 록
  도 움 구 하 라
}

verseFour = \lyricmode {
  \set stanza = "4."
  아 픈 시 련 당 할 때 에
  기 도 했 느 뇨
  네 맘 상 처 고 쳐 주 는
  길 르 앗 의 유 향 으 로
  도 움 구 하 라
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
      \tempo 4 = 90
    }
  }
}

