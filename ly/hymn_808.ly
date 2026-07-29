\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "나는 시온성을 향해 가겠네"
engTitle = "I Lift up Zion"
hymnNumber = "808"
poet = "Anonymous"
composer = "Negro Spiritual"
bibleInfo = "시 66:10-15"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  c8 d |
  <c f>8 q4 q8 q4 q8 <c g>8 |
  <f a>4. <e g>8 <c f>4 \breathe <c f>8 <c g> |
  <f a>4 fs <fs a>8 q <c f> q |
  g2. \breathe %\break
  
  <f a>8 <f c'> |
  q4 q8 q <f a> <c f> q q |
  <f a>4. <e g>8 <c f>4 \breathe <c f>8 <c g> |
  <f a>4 q q16 <d f>8. <e g>8. q16 |
  f2. \breathe %\break
  
  a8^\markup "(후렴)" 8 |
  c'8 8( 2) a8 8 |
  16[ g] f4.( 4) <c f>8 <c g> |
  <f a>4 <fs g> <fs a>8 q <c fs> q |
  g2. %\break
  
  a8 8 |
  c'8 8( 2) a8 8 |
  16[ g] f4.( 4) f8 g |
  <f a>4 q q16 f8. <e g>8. q16  |
  f1( |
  f2.) \bar "|."
}

aligner = \soprano

alignerb = \fixed c' {
  c8 d |
  <c f>8 q4 q8 q4 q8 <c g>8 |
  <f a>4. <e g>8 <c f>4 <c f>8 <c g> |
  <f a>4 fs <fs a>8 q <c f> q |
  g4 4 4
  
  <f a>8 <f c'> |
  q4 q8 q <f a> <c f> q q |
  <f a>4. <e g>8 <c f>4 <c f>8 <c g> |
  <f a>4 q q16 <d f>8. <e g>8. q16 |
  f4 4 4 
  
  s4 | s4 f8 8 8 8 s4 | s4 c8 8 8 8 s4 | s1 | e4 f e 
  s4 | s4 f8 8 8 8 s4 | s4 c8 8 8 8 s4 | s1 | a4 b a g | a2.
}

alto = \fixed c' {
  \global
  c8 d | s1 | s1 | s1 | e4 f e
  s4   | s1 | s1 | s1 | c4 d c
  
  c4\rest |
  c4\rest f8 8 8 8 c4\rest |
  c4\rest c8 8 d c s4 |
  s1 |
  e4 f e
  
  c4\rest |
  c4\rest f8 8 8 8 b,4\rest |
  b,4\rest c8 8 d8 c8 8 8 |
  s2 s16 f8. s4 |
  c4 d c c |
  s2.
}

tenor = \fixed c {
  \global
  s4   | s1 | s1 | s1 | s2.
  s4   | s1 | s1 | s1 | a4 bf a \breathe
  
  s4   | s1 | s1 | s1 | s2.
  s4   | s1 | s1 | s1 | a4 bf a g | s2.
  
}

bass = \fixed c {
  \global
  <f a>8 <f bf> |
  <f a>8 q4 q8 q4 q8 <f bf> |
  <f c'>4. <f bf>8 <f a>4 \breathe <f a>8 <f bf> |
  <f c'>4 <f b> <f c'>8 q <f a> q |
  <c c'>4 <d b> <c bf> \breathe 
  
  <f a>8 q |
  q4 q8 q <f c'> <f a> q q |
  <f c'>4. <f bf>8 <f a>4 \breathe q8 <f bf> |
  <f c'>4 q <d d'>16 <d b>8. <c c'>8. <c bf>16 |
  f2.
  
  d4\rest |
  d4\rest <f a>8 q <f bf> <f a> d4\rest |
  d4\rest <f a>8 q <f bf> <f a> q <f bf> |
  <f c'>4 <f b> <f c'>8 q <f a> q |
  <c c'>4 <d b> <c bf>
  
  d4\rest |
  d4\rest  <f a>8 q <f bf> <f a> d4\rest |
  d4\rest <f a>8 q <f bf> <f a> q <f bf> |
  <f c'>4 q <e c'>16 <c a>8. <c bf>8. q16 |
  f1( |
  2.)
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 는 시 온 성 을 향 해 가 겠 네
  높 은 그 성 영 광 이 로 다
  내 가 그 성 에 도 달 한 그 아 침 에
  시 온 성 의 영 광 보 겠 네
  
  아 름 다 운 시 온 성 __ 에 
  기 뻐 뛰 며 올 라 가 겠 네
  아 름 다 운 시 온 성 __ 에
  기 뻐 나 는 올 라 가 겠 네 __
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 는 시 온 성 을 향 해 가 겠 네
  높 은 그 성 영 광 이 로 다 (영 광)
  그 곳 에 나 를 구 속 한 구 주 께 서
  나 를 기 다 리 고 있 도 다 (영 광)
  
  (아 름 다 운) (시 온 성 에) 가 겠 네
  (아 름 다 운) (시 온 성 에) 올 라 가 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 는 시 온 성 을 향 해 가 겠 네
  높 은 그 성 영 광 이 로 다
  나 는 그 성 을 떠 나 지 않 으 리 라 
  괴 롬 없 는 안 식 처 로 다
}

verseFour = \lyricmode {
}

verseExtra = \lyricmode {
  
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
            \context NullVoice = alignerb {
             \alignerb
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "alignerb" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        %\context Lyrics = "LyrExtra" \lyricsto "aligner" { \verseExtra }
    
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

