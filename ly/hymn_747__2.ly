\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "승리의 십자가는 서있네"
engTitle = "The Cross Standeth Fast"
hymnNumber = "747"
poet = "Horatius Bonar, 1882"
composer = "James McGranahan, 1882"
bibleInfo = "고전 1:18"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  f4 |
  bf,4. a,8 bf,8[ c] d[ ef] |
  f2. \breathe <d bf>8. <ef c'>16 |
  <d bf>2 <c a>4 <ef c'>8. <f d'>16 |
  <ef c'>2 <d bf>4 \breathe g |
  c4. b,8 %\break
  
  c8[ d] ef[ f] |
  g2. \breathe <e c'>8. <e d'>16 |
  <f c'>2 <f a>4 <e bf>8. <e g>16 |
  <e g>2 f4\fermata \breathe f8[ g] |
  <f a>4 q q <g bf>8[ <e g>] |
  <f a>2. \breathe <f a>8[ <g bf>] | %\break
  
  <a c'>4 q q <bf d'>8[ <gs b>] |
  <a c'>2. \breathe <f c'>8[ <bf d'>] |
  s2 ef'4 <bf d'>8[ <a c'>] |
  s1 | 
  <f d'>4. <f bf>8 <f c'>4. q8 |
  <f bf>2. \break \bar "|"
  
    <d bf>8.^\markup "(후렴)" <ef c'>16 |
  <f d'>4 q2 \breathe <g ef'>8. <f d'>16 |
  <ef c'>4 q2 \breathe <c a>8 <d bf> | %\break
  
  <ef c'>4. q8 d'8[ c'] bf[ c'] |
  <f d'>2. \breathe <d bf>8. <ef c'>16 |
  <f d'>4 q2 \breathe %\break
  
  s4 | 
  s1 | 
  <f d'>8 q4. q8 <ef c'>4. |
  <d bf>2. \breathe %\break
  
  <d bf>8.^\f <ef c'>16 |
  <f d'>4 q2 \breathe <g ef'>8. <f d'>16 |
  <ef c'>4 q2 \breathe <c a>8. <d bf>16 |
  <ef c'>4. q8 d'8[ c'] bf[ c'] |
  <f d'>2. \breathe %\break
  
  <d bf>8. <ef c'>16 |
  <f d'>4 q2 \breathe s4 |
  s1 |
  <f d'>8 q4. q8 <f c'>4. |
  <f bf>2. \bar "|."
}

aligner = \fixed c' {
  \global
  f4 |
  bf,4. a,8 bf,8[ c] d[ ef] |
  f2. \breathe <d bf>8. <ef c'>16 |
  <d bf>2 <c a>4 <ef c'>8. <f d'>16 |
  <ef c'>2 <d bf>4 \breathe g |
  c4. b,8 
  
  c8[ d] ef[ f] |
  g2. <e c'>8. <e d'>16 |
  <f c'>2 <f a>4 <e bf>8. <e g>16 |
  <e g>2 f4 f8[ g] |
  <f a>4 q q <g bf>8[ <e g>] |
  <f a>2. <f a>8[ <g bf>] | 
  
  <a c'>4 q q <bf d'>8[ <gs b>] |
  <a c'>2. <f c'>8[ <bf d'>] |
  ef'4 4 ef'4 <bf d'>8[ <a c'>] |
  f'2. ef8. 16 | 
  <f d'>4. <f bf>8 <f c'>4. q8 |
  <f bf>2. 
  
  <d bf>8.^\markup "(후렴)" <ef c'>16 |
  <f d'>4 q2 <g ef'>8. <f d'>16 |
  <ef c'>4 q2 <c a>8 <d bf> | 
  
  <ef c'>4. q8 d'8[ c'] bf[ c'] |
  <f d'>2. <d bf>8. <ef c'>16 |
  <f d'>4 q2 
  
  f'8. 16 | 
  f'4 ef2 8 8 | 
  <f d'>8 q4. q8 <ef c'>4. |
  <d bf>2. 
  
  <d bf>8.^\f <ef c'>16 |
  <f d'>4 q2 <g ef'>8. <f d'>16 |
  <ef c'>4 q2 <c a>8. <d bf>16 |
  <ef c'>4. q8 d'8[ c'] bf[ c'] |
  <f d'>2.  
  
  <d bf>8. <ef c'>16 |
  <f d'>4 q2 f'8. 16 |
  f'4 ef2 8 8 |
  <f d'>8 q4. q8 <f c'>4. |
  <f bf>2. 
}

alto = \fixed c' {
  \global
  f4 | bf,4. a,8 bf,8[ c] d[ ef] | f2. s4 | s1 | s2 s4 g | c4. b,8
  c8[ d] ef[ f] | g2. s4 | s1 | s2 f4 4 | s1 | s1 |
  s1 | s1 | <a ef'>4 q a8[ c'] s4 | <bf f'>2. \breathe <g ef'>8.^\ff q16 | s1 d2.
  
  s4 | s1 | s1
  s2 f4 4 | s1 | s2.
  <af f'>8. q16 | q4 <g ef'>2 \breathe q8 q | s1 | s2.
  s4 | s1 | s1 | s2 f4 4 | s2.
  s4 | s2. <af f'>8. q16 | q4 <g ef'>2^\fermata q8 q | s1 | s2.
}

tenor = \fixed c {
  \global
  f4 | bf,4. a,8 bf,[ c] d[ ef] | f2. 8. 16 | 2 4 s4 | s2. g4 | c4. b,8
  c8[ d] ef[ f] | g2. s4 | s1 | s1 | R1 | R1 |
  R1 | s2. a8[ bf] | s2. d'8[ ef'] | s1 | s1 | s2. 
  
  s4 | s1 | s1 |
  s2 a4 s4 | s1 | s2.
  s4 | s1 | s2 s8 f8 8 8 | s2.
  bf8. 16 | 4 2 8. 16 | s1 | s2 a4 s4 | s2.
}

bass = \fixed c {
  \global
  f4 | 
  bf,4. a,8 bf,[ c] d[ ef] | 
  f2. 8. 16 | 
  2 4 <f a>8. <f bf>16 |
  <f a>2 <bf, bf>4 \breathe g |
  c4. b,8
  
  c8[ d] ef[ f] |
  g2. \breathe <c g>8. <c bf>16 |
  <c a>2 <c c'>4 <c g>8. <c bf>16 |
  <c bf>2 <f a>4\fermata b4\rest |
  s1 |
  s1 |
  
  s1 |
  d2.\rest f4 |
  <f c'>4 q q f |
  <bf, d'>2. \breathe <ef bf>8. q16 |
  <f bf>4. <f d'>8 <f ef'>4. q8 |
  <bf, d'>2.
  
  d4\rest |
  d4\rest <bf, bf>8. q16 q8 q d4\rest |
  d4\rest <f a>8. q16 q8 q <f c'> <f bf> |
  
  <f a>8 q q q f[ ef] \breathe <d bf> <c a> |
  <bf, bf> q q q q4 d4\rest |
  d4\rest <bf, f>8. q16 q8 q
  
  d4\rest |
  d4\rest <ef bf>8. q16 q8 q \breathe <ef g> <ef bf> |
  q q q q q f f f | <bf f>2. \breathe
  
  bf8. 16 | 
  4 2 8. 16 |
  <f a>4 q2 \breathe <f c'>8. <f bf>16 |
  <f a>4. q8 f[ ef] <d bf>[ <c a>] |
  <bf, bf>2. \breathe
  
  q8. q16 | q4 q2 \breathe q8. q16 |
  <ef bf>4 q2 \breathe q8 q|
  <f bf>8 q4. <f a>8 <f ef'>4. |
  <bf, d'>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  보 아 라 십 자 가 
  할 렐 루 야 할 렐 루 야
  언 제 나 서 있 네
  할 렐 루 야 할 렐 루 야
  거 센 바 람 불 어 
  쓰 러 질 때 라 도
  흔 들 리 지 않 고 
  십 자 가 는 서 있 네
  
  할 렐 루 야 할 렐 루 야 
  십 자 가 는 서 있 네
  할 렐 루 야 할 렐 루 야 
  세 상 끝 날 때 까 지
  할 렐 루 야 할 렐 루 야 
  십 자 가 는 서 있 네
  할 렐 루 야 할 렐 루 야 
  세 상 끝 날 때 까 지
}

verseTwo = \lyricmode {
  \set stanza = "2."
  갈 보 리 십 자 가
  할 렐 루 야 할 렐 루 야
  지 금 도 서 있 네
  할 렐 루 야 할 렐 루 야
  주 님 의 피 로 써
  이 세 상 만 민 을
  구 원 하 여 주 신 
  십 자 가 는 서 있 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  승 리 의 십 자 가
  할 렐 루 야 할 렐 루 야
  드 높 이 서 있 네
  할 렐 루 야 할 렐 루 야
  구 원 하 여 주 신 
  주 님 의 백 성 들
  무 한 감 사 하 는 
  십 자 가 는 서 있 네
}

myChords = \chordmode {
}

sopranob = \fixed c' {
  \global
  b4\rest | R1*15 |
  %s1 | s1 | s1 | s2
  %s2 | s1 | s1 | s1 | s1 | s1
  %s1 | s1 | s1 | s1 | s1 | 
  s2.
  
  b4\rest |
  b4\rest <d f>8. q16 q8 q b4\rest |
  b4\rest <c f>8. q16 q8 q q <d f> |
  
  f8 8 8 8 4 \breathe 8 8 |
  <d f>8 q q q q4 b4\rest |
  b4\rest <d bf>8. q16 q8 q 
  
  b4\rest | b4\rest <g bf>8. q16 q8 q \breathe <ef bf> <g bf> |
  <f bf> q <d bf> q <f bf> <f a> q q |
  <d bf>2. \breathe
  
  s4 | s1 | s1 | s1 | s2.
  
}

alignerb = \sopranob

altob = \fixed c' {
  \global
  s4 | s1 | s1 | s1 | s1 | s2
  s2 | s1 | s1 | s1 | s1 | s1
  s1 | s1 | s1 | s1 | s1 | s2.
  
  s4 | s1 | s1 |
  ef8 8 8 8 f4 8 ef8 | s1 | s2.
}

verseExtra = \lyricmode {
  할 렐 루 야 할 렐 루 야 
  십 자 가 는 서 있 네
  십 자 가 는 서 있 네
  할 렐 루 야 
  할 렐 루 야 영 원 토 록 
  세 상 끝 날 까 지 도
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
        
        \context Staff = middle \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          <<
            \context Voice = sopb {
              \voiceOne
                \sopranob
            }
            \context Voice = altob {
              \voiceTwo
                \altob
            }
            \context NullVoice = alignerb {
             \alignerb
            }
          >>
        }
                   
        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
        
    
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
      \context {
        \Staff
        \RemoveEmptyStaves
      }
    }
    \midi {
      \tempo 4 = 90
    }
  }

}

