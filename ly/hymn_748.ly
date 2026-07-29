\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "날 사랑하시사 십자가 달린 주"
engTitle = "For All My Sin"
hymnNumber = "748"
poet = "Norman J. Clayton, 1903~"
composer = "Norman J. Clayton, 1903~"
bibleInfo = "벧전 2:24"
oneOrTwo = #2  % odd page: 1, even page: 2

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
  b8\rest <e c'> <g c'> <gf c'> <f c'>8. <f b>16 q4 |
  b8\rest <f a> q <f b> <e a>8. <e g>16 q4 |
  b8\rest q8 q <e a> %\break
  
  <d g>8. <d f>16 q4 |
  b8\rest <b, f> <b, e> <b, ds> <c e>2 |
  b8\rest <e c'> <g c'> <gf c'> <f c'>8. <f b>16 q4 |
  b8\rest <f a> q <f b> %\break
  
  <e a>8. <e g>16 q4 |
  b8\rest <e g> q <e a> <d g>8. <d f>16 q4 |
  b8\rest
  <b, f> <b, e> <b, d> c2 \bar "||" | %\break
  
  b8\rest^\markup "(후렴)" <c a> <f a> <e a> \tuplet 3/2 { <ef a>8 <ef gs> <ef a> } <d b>4 |
  b8\rest <c c'> <a c'> <g c'> \tuplet 3/2 { <fs c'>8 <fs b> <fs c'> } <f d'>4 | %\break
  
  b8\rest <e e'> s2. |
  b8\rest b <g b> <f b> <e c'>2 \bar "|." |
}

aligner = \fixed c' {
  \global
  b8\rest <e c'> <g c'> <gf c'> <f c'>8. <f b>16 q4 |
  b8\rest <f a> q <f b> <e a>8. <e g>16 q4 |
  b8\rest q8 q <e a> 
  
  <d g>8. <d f>16 q4 |
  b8\rest <b, f> <b, e> <b, ds> <c e>2 |
  b8\rest <e c'> <g c'> <gf c'> <f c'>8. <f b>16 q4 |
  b8\rest <f a> q <f b> 
  
  <e a>8. <e g>16 q4 |
  b8\rest <e g> q <e a> <d g>8. <d f>16 q4 |
  b8\rest
  <b, f> <b, e> <b, d> c2 \bar "||" | 
  
  b8\rest <c a> <f a> <e a> \tuplet 3/2 { <ef a>8 <ef gs> <ef a> } <d b>4 |
  b8\rest <c c'> <a c'> <g c'> \tuplet 3/2 { <fs c'>8 <fs b> <fs c'> } <f d'>4 | 
  
  b8\rest <e e'> <c' e'> <d' a'> \tuplet 3/2 { <a e'>8 <a d'> <a e'> } <a f'>4 |
  b8\rest b <g b> <f b> <e c'>2 \bar "|." |
}

alto = \fixed c' {
  \global
  s1 | s1 | s2
  s2 | s1 | s1 | s2
  s2 | s1 | s1 |
  s1 | s1 |
  s4 <c' e'>8 <b e'> \tuplet 3/2 { <a e'>8 <a d'> <a e'> } <a f'>4  | 
  s8 a s2. |
}

tenor = \fixed c {
  \global
  a8\rest s4. s2 | a8\rest s4. s2 | a8\rest s4. 
  s2 | a8\rest s4. s2 | a8\rest s4. s2 | a8\rest s4. 
  s2 | a8\rest s4. s2 | a8\rest <g, a> <g, g> <g, f> <c e>2 |
  a8\rest f s4 s2 | a8\rest a s4 s2 |
  a8\rest s4. s2   | a8\rest s4. s2   |
}

bass = \fixed c {
  \global
  c8 <c c'> <e c'> <ef c'> <d d'>8. q16 <g d'>4 |
  g,8 <g d'> q q <c c'>8. q16 q4 |
  g,8 <cs a> q q 
  
  <d a>8. q16 q4 |
  g,8 <g, a> <g, g> q <c g>2 |
  c8 <c c'> <e c'> <ef d'> <d d'>8. q16 <g d'>4 |
  g,8 <g d'> q q
  
  <c c'>8. q16 q4 |
  g,8 <cs a> q q q8. q16 q4 |
  g,8 s4. s4 g,4 |
  
  c8 f <f a> <f c'> \tuplet 3/2 { q q q } <e gs>4 |
  g,8 a <a c'> <g e'> \tuplet 3/2 { <d d'> q q } <g b>4 |
  
  c8 <c c'> q q \tuplet 3/2 { <f c'> q <e cs'> } <d d'>4 |
  g,8 <g f'> <g e'> <g d'> <c c'>2 \bar "|." |
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  날 사 랑 하 시 사 십 자 가 달 린 주
  내 생 명 주 시 려 죽 으 셨  네
  내 죄 와 허 물 로 큰 수 치 당 하 사
  내 모 든 죄 악 을 사 하 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  갈 보 리 동 산 에 홀 로 서 계 신 주 
  내 죄 를 사 할 이 주 뿐 일 세
  십 자 가 위 에 서 큰 고 통 당 하 사
  내 죄 의 형 벌 을 대 신 했 네
  
  놀 라 운 나 의 주 님
  하 나 님 사 랑 일 세
  그 사 랑 변 치 않 네
  주 큰 사 랑
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 크 신 사 랑 은 새 죄 를 덮 었 네
  나 돌 아 오 도 록 참 으 셨 네
  내 궁 핍 아 시 고 내 친 구 되 시 사
  내 죄 의 속 박 을 다 푸 셨 네
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

