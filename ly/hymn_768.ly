\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주의 영화로운 십자가의 승리"
engTitle = "Glory to the Cross"
hymnNumber = "768"
poet = "Anonymous"
composer = "Anonymous"
bibleInfo = "갈 6:14"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 100
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \relative c' {
  \global
  d4 |
  g4. d8 g4 d |
  g2 b4\rest 
  \fixed c' { <d g>8. <d a>16 } |
  b4.( a8) g4 g8. a16 |
  b4.( c8) \fixed c' { <g b>4 } \breathe \break
  
  d,4 |
  a'4. d,8 a'4 d, |
  a'2 b4\rest 
  \fixed c' { 
    <fs a>8. <g b>16 | 
    <a c'>4.( <g b>8) <fs a>4 <fs a>8. <g b>16 | 
    <a c'>4.( <b d'>8) <a c'>4 \breathe \break
  }
  
  d,4 |
  g4. fs8 e4 d |
  c2 b'4\rest e,4 |
  a4. g8 fs4 e |
  d2 b'4\rest \break
  
  d,4 |
  \fixed c' { <b, g>2 <d g> | 
              <e g>4 } 
  g4 
  \fixed c' { <e c'>4 \breathe <e c'>8. <e c'>16 | 
              <d b>4 <g b>4. <g b>8 } 
  a4 |
  \fixed c' { <fs a>2 }
  b4\rest \break
  
  d,4 |
  \fixed c' { <b, g>2 <d g> | 
              <e g>4 } 
  g4 e' \fermata \breathe 
  \fixed c' { \stemDown <g e'>8. <g e'>16 | 
              \stemUp <g d'>4 <g b>4. <fs b>8 <fs a>4 |
              <d g>2 b4\rest } \break

  g,8.^\markup "(후렴)" a16 |
  b2~ b8. a16 g8. 
  \fixed c' { <g b>16 |
              \stemDown <b d'>2~ <b d'>8. <a c'>16 \breathe <g b>8. <b d'>16 |
              <a c'>2~ <a c'>8. \stemUp <g b>16 <fs a>8. <a c'>16 |
              \stemDown <c' e'>4 <b d'> \stemUp <g b> \breathe } \break
  
  g8. a16 |
  b2~ b8. a16 g8. 
  \fixed c' { <g b>16 | 
              \stemDown <b d'>2~ <b d'>8. <a c'>16 \breathe \stemUp <g b>8. \stemDown <b d'>16 |
              \stemNeutral <a c'>8 <g b> <a c'> <b d'> <c' e'>4 <c' fs'> |
              <b g'>2. } \bar "|."
}

alto = \relative c' {
  \global
  d4 |
  g4. d8 g4 d |
  g2 s4 s4 |
  g2 d4 d8. d16 |
  g2 s4
  
  d4 |
  a'4. d,8 a'4 d, |
  a'2 s2 |
  s1 |
  s2.
  
  d,4 |
  g4. fs8 e4 d |
  c2 s4 e4 |
  a4. g8 fs4 e |
  d2 s4
  
  d4 |
  s1 |
  s4 f s2 |
  s2. g4 |
  s2.
  
  d4 |
  s1 |
  s4 f e8[ g_\fermata] s4 |
  s1 |
  s2. 
  
  r4 |
  g4 g g g8. s16 |
  s1 |
  s1 |
  s2. 
  
  r4 |
  g4 g g g8. s16 |
  s1 |
  s1 |
  s2. 
}

tenor = \relative c {
  \global
  d4 |
  g4. d8 g4 d |
  g2 d4\rest 
  \stemDown \fixed c { <g b>8. <g c'>16 } | \stemUp
  d'4.( c8) b4 b8. c16 |
  d4.( e8) d4 \breathe
  
  d,4 |
  a'4. d,8 a'4 d, |
  a'2 e4\rest 
  \stemDown \fixed c { 
    <d d'>8. <d d'>16 | 
    <d d'>2 <d d'>4 <d d'>8. <d d'>16 | 
    <d d'>2 <d d'>4 \breathe \break
  } \stemUp
  
  d4 |
  g4. fs8 e4 d |
  c2 e4\rest e4 |
  a4. g8 fs4 e |
  d2 e4\rest
  
  d4 |
  \fixed c { <g, g>2 }
  b'2 |
  \fixed c { \stemDown
    <e b>4 <d b> <c c'> \breathe <c g>8. <c g>16 |
    <d g>4 <d d'>4. <d d'>8 <a cs'> 4 |
    <d d'>2 e4\rest
  }
  
  \stemUp d,4 |
  \stemDown
  \fixed c { <g, g>2 }
  b'2 |
  \fixed c { \stemDown
    <e b>4 <d b> <c c'> \breathe <c g>8. <c g>16 |
    <d g>4 <d d'>4. <d d'>8 <a c'> 4 |
    <g b>2 e4\rest
  }
  
  % refrain
  \fixed c {
    \stemUp
    b8. c'16 |
    d'2~ d'8. c'16 b8. d'16 | 
    \stemDown
    <g d'>4 <g d'> <g d'> \breathe <g d'> |
    <d d'>4 <d d'> <d d'> <d d'> |
    <g, d'>4 <g, d'> <g, d'> \breathe
    
    \stemUp
    b8. c'16 |
    d'2~ d'8. c'16 b8. d'16 |
    \stemDown
    <g d'>4 <g d'> <g d'> \breathe <g d'>8. <g d'>16 |
    <d d'>8 <d d'> <d d'> <d d'> <d d'>4 <d d'> |
    <g, d'>2.
  }
}

bass = \relative c {
  \global
  d4 |
  g4. d8 g4 d |
  g2 s4 s4 |
  g2 g4 g8. g16 |
  g2 g4
  
  d4 |
  a'4. d,8 a'4 d, |
  a'2 s2 |
  s1 |
  s2.
    
  d,4 |
  g4. fs8 e4 d |
  c2 s4 e4 |
  a4. g8 fs4 e |
  d2 s4
  
  d4 |
  s2 g4( f) |
  s1 |
  s1 |
  s2.
  
  d4 |
  s2 g4( f) |
  s1 |
  s1 |
  s2.
  
  % refrain
  \fixed c {
    r4 |
    g4 g g g |
    s1 |
    s1 |
    s2. 
    
    r4 |
    g4 g g g |
    s1 |
    s1 |
    s2. 
  }
}

nullRefrain = \fixed c {
  \global
  \skip 4
  \skip 1*19
  \skip 2.
  
  r4 |
  g4 g g g |
  g4 g g g |
  d4 d d d |
  g,4 g, g, 
  
  r4 |
  g4 g g g |
  g4 g g g8. g16 |
  d8 d d d d4 d |
  g,2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 님 의 십 자 가 할 렐 루 야 할 렐 루 야 
  튼 튼 히 섰 도 다 할 렐 루 야 할 렐 루 야 
  온 세 상 비 웃 고 바 람 이 심 하 나  
  튼 튼 히 섰 도 다 할 렐 루 야 십 자 가 
  튼 튼 히 섰 도 다 할 렐 루 야 십 자 가 
  할 렐 루 야 영 원 토 록 흔 들 리 지 않 고 섰 도 다
  할 렐 루 야 영 원 토 록 주 의 영 화 로 운 십 자 가
}

verseTwo = \lyricmode {
  \set stanza = "2."
  옛 날 의 그 대 로 할 렐 루 야 할 렐 루 야 
  승 리 의 십 자 가 할 렐 루 야 할 렐 루 야 
  하 나 님 은 혜 와 주 님 의 보 혈 로
  속 죄 함 주 셨 네 할 렐 루 야 십 자 가 
  속 죄 를 주 셨 네 할 렐 루 야 십 자 가 
}

verseThree = \lyricmode {
  \set stanza = "3."
  우 리 의 십 자 가 할 렐 루 야 할 렐 루 야 
  주 님 이 지 셨 네 할 렐 루 야 할 렐 루 야 
  다 찬 미 불 러 서 부 활 의 주 님 께
  큰 기 쁨 돌 려 라 할 렐 루 야 십 자 가 
  큰 영 광 돌 려 라  할 렐 루 야 십 자 가 
}

verseRefrain = \lyricmode {
  할 렐 루 야 영 원 히 흘 들 리 쟎 고 섰 도 다
  할 렐 루 야 영 원 히
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
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \clef bass
          <<      
            \new Voice {
              \voiceOne
              \tenor
            }
            \new Voice {
              \voiceTwo
              \bass
            }
            \new NullVoice = refrain {
              \nullRefrain
            }
          >>
        }
        \context Lyrics = "LyrRefrain" \lyricsto "refrain" { \verseRefrain }
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
      }
    }
    \midi {}
  }
}

