\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "조용히 예수님 보라"
engTitle = "Be Still and Know"
hymnNumber = "792"
poet = "Mrs. H. Buckner"
composer = "B. B. Mckinney"
bibleInfo = "히 12:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \numericTimeSignature
  \time 3/4
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

soprano = \fixed c' {
  \global
  g8 fs g |
  ef4. g8 af ef |
  g4. \breathe 8 bf af |
  f4. bf,8 f g |
  ef4. \breathe %\break
  
  g8 fs g |
  ef4. 8 g bf |
  af4. c'8 bf af |
  g ef g4 f |
  ef4.\fermata %\break
  
  ef8^\markup "(후렴)" 8 8 |
  ef'4. c'8 ef' c' |
  bf4. \breathe g8 c' bf |
  af4. f8 g a | %\break
  
  bf4. \breathe 8 a af |
  g4. ef8 g bf |
  af4. c'8 bf af | %\break
  
  g8\fermata ef g4 f |
  ef4.\fermata \bar "||" <af, ef>8^\markup "(마지막절 후에)" <a, ef> q |
  <bf, ef>4. ef8 8 f |
  <ef g>4.\fermata \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4. | s2. | s2. | s2. | s4.
  s4. | s2. | s2. | s2. | s4.
  
  s4. | 
  e8\rest <ef af>8[ <af c'>] e8\rest e4\rest |
  e8\rest <bf, ef>8[ <ef g>] c8\rest c4\rest |
  <c ef f>8[ q] q b,8\rest b,4\rest |
  
  s2. | s2. | s2. |
  s2. | s2. | s2. | s4
}

tenor = \fixed c {
  \global
  bf8 b bf |
  g4. df'8 c' cf' |
  bf4. \breathe 8 d' c' |
  af4. g8 af bf |
  g4. \breathe 
  
  bf8 a bf |
  g4. 8 bf df' |
  c'4. ef'8 d' c' |
  bf8 a bf4 a |
  g4.\fermata 
  
  g8 c' df' |
  c'4. af8 c' af |
  g4. \breathe bf8 af g |
  f4. d'8 ef' ef' |
  d'4. \breathe bf8 c' d' |
  ef'4. g8 bf df' |
  c'4. ef'8 d' c' |
  
  bf8\fermata a bf4 af |
  g4.\fermata g8 fs fs |
  g4. df'8 c' cf' |
  bf4.\fermata
  
}

bass = \fixed c {
  \global
  d8\rest b,4\rest |
  ef,8[ bf,] ef d8\rest b,4\rest |
  ef,8[ bf,] ef d8\rest b,4\rest |
  <bf,, bf,>8[ f,] bf, d8\rest d4\rest |
  f,8[ bf,] ef
  
  d8\rest b,4\rest |
  ef,8[ bf,] ef d8\rest b,4\rest |
  af,8[ c] ef d8\rest b,4\rest |
  ef,8 c] bf,[ ef] d[ bf,] |
  ef8[ bf,] ef,\fermata
  
  c8\rest c4\rest |
  af4. c8\rest c4\rest |
  ef4. c8\rest c4\rest | 
  f4. e8\rest c4\rest |
  
  <bf,, bf,>8[ f,] bf, bf,8\rest bf,4\rest |
  ef,8[ bf,] ef bf,8\rest bf,4\rest |
  af,8[ c] ef d8\rest bf,4\rest |
  
  ef,8[\fermata c] bf,[ ef] d[ bf,] |
  ef8[ bf,] ef,\fermata ef[ c] cf |
  bf,[ ef] bf,[ g,] af,4 |
  <ef, ef>4.
}

verseOne = \lyricmode {
  \set stanza = "1."
  조 용 히 예 수 님 보 라
  그 는 참 하 나 님 이 라
  네 모 든 생 사 화 복 을
  손 안 에 쥐 고 계 시 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 일 일 알 지 못 하 고
  가 는 길 들 험 하 여 도
  하 나 님 친 히 보 살 펴
  네 앞 길 인 도 하 시 네
  
  조 용 히 예 수 님 보 라
  그 는 참 하 나 님 이 라
  네 맘 에 깊 은 근 심 도
  아 시 는 분 주 하 나 님
  그 는 참 하 나 님 이 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  내 모 든 두 렴 맡 길 때
  주 님 이 담 당 하 시 네
  주 예 수 십 자 가 볼 때
  몸 은 두 렴 사 라 지 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  이 세 상 풍 랑 만 날 때
  주 안 에 피 란 처 있 네
  그 크 신 주 의 권 능 이
  모 든 것 물 리 치 시 네
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    top-margin = 4\mm
    bottom-margin = 2\mm    
    page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    %% tip: adjust pading number and set ragged-last-bottom to ##f to fit one page 
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##t
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

