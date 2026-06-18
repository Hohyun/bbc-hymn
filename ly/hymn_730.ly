\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내 주 안에 쉴 곳 있네"
engTitle = "Hiding in Thee"
hymnNumber = "730"
poet = "William O. Chshing, 1823~1902"
composer = "Ira D. Sankey, 1840~1908"
bibleInfo = "고전 10:204"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <ef bf>4 |
  q2 <ef af>4 <ef g> |
  q2 <bf, f>4 <bf, ef> |
  ef4^( d) c <bf, d> |
  <bf, ef>2. \breathe ef8^(_( 8^)_) | %\break
  
  <ef af>2 <ef g>4 <ef c'> |
  <ef bf>2 <ef g>4 ef | \break
  <d f>2 <ef g>4 <ef a> |
  <d bf>2. \breathe q8^(_( q^)_) |
  <ef bf>2 <ef af>4 <ef g> | %\break
  
  <ef g>2 <bf, f>4 <bf, ef> |
  ef4^( d) c <bf, d> |
  <bf, ef>2. \breathe ef4 |
  <ef af>2 <ef g>4 <ef c'> | \break 
  
  <ef bf>2 <ef g>4 ef |
  <ef g>2 <d g>4. <d f>8 |
  ef2. b4\rest \breathe \bar "||" |
  <d f>2^\markup "(후렴)" q4. <ef g>8 |
  <f af>2. b4\rest | %\break
  
  <ef g>2 q4. <ef af>8 | 
  <ef bf>2. \breathe q4 |
  s2 s4. <af c'>8 |
  <g bf>2 <ef g>4 ef |
  <ef g>2 q4. <d f>8 |
  ef2. \bar "|."
}

aligner = \fixed c' {
  \global
  <ef bf>4 |
  q2 <ef af>4 <ef g> |
  q2 <bf, f>4 <bf, ef> |
  ef4^( d) c <bf, d> |
  <bf, ef>2. ef8^(_( 8^)_) | 
  
  <ef af>2 <ef g>4 <ef c'> |
  <ef bf>2 <ef g>4 ef |
  <d f>2 <ef g>4 <ef a> |
  <d bf>2. q8^(_( q^)_) |
  <ef bf>2 <ef af>4 <ef g> | 
  
  <ef g>2 <bf, f>4 <bf, ef> |
  ef4^( d) c <bf, d> |
  <bf, ef>2. ef4 |
  <ef af>2 <ef g>4 <ef c'> |  
  
  <ef bf>2 <ef g>4 ef |
  <ef g>2 <d g>4. <d f>8 |
  ef2. b4\rest   |
  <d f>2 q4. <ef g>8 |
  <f af>2. b4\rest | 
  
  <ef g>2 q4. <ef af>8 | 
  <ef bf>2. \breathe q4 |
  <g ef'>2 <bf d'>4. <af c'>8 |
  <g bf>2 <ef g>4 ef |
  <ef g>2 q4. <d f>8 |
  ef2. \bar "|."
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | bf,2 4 s | s1 |
  s1 | s2. ef4 | s1 | s1 | s1 | 
  s1 | bf,2 4 s | s2. ef4 | s1 |
  s2. ef4 | s1 | ef2. s4 | s1 | s1 |
  s1 | s1 | <g ef'>2 <bf d'>4. s8 | s2. ef4 | s1 | ef2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | g4^( f) s2 | s1 |
  s1 | s1 | s1 | s1 | s1 |
  s1 | g4^( f) <bf, ef> s4 | s1 | s1 | 
  s2 ef4 s4 | s1 | s1 | s1 | s1 |
  s2 s4. f8 | s1 | s1 | s1 | s1 | s2.
}

bass = \fixed c {
  \global
  <ef g>4 |
  q2 <ef c'>4 <ef bf> |
  <ef bf>2 <ef af>4 <ef g> |
  bf,2 <bf, ef>4 <bf, f> |
  <ef g>2. \breathe <ef g>8^(_( q^)_) |
  
  <ef c'>2 <ef bf>4 <ef af> | 
  <ef g>2 <ef bf>4 <g bf> |
  <f bf>2 <ef bf>4 <c f> |
  <bf, f>2. \breathe <bf, af>8^(_( q^)_) |
  <ef g>2 <ef c'>4 <ef bf> |
  
  <ef bf>2 <ef af>4 <ef g> |
  bf,2 s4 <bf, f> |
  <ef g>2. \breathe q4 |
  <ef c'>2 <ef bf>4 <ef af> |
  
  <ef g>2 ef4 <c g> |
  <bf, bf>2 q4. <bf, af>8 |
  <ef g>2. d4\rest \breathe \bar "||" |
  <bf, bf>2 q4. <ef bf>8 |
  <d bf>2. d4\rest |
  
  <ef bf>2 q4. ef8 |
  <ef g>2. \breathe q4 |
  <ef bf>2 <ef c'>4. <ef d'>8 |
  <ef ef'>2 <ef bf>4 <c a> |
  <bf, bf>2 q4. <bf, af>8 |
  <ef g>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  오 주 님 은 안 전 한 반 석 이 니
  그 안 에 서 내 영 혼 쉼 얻 겠 네
  내 중 한 짐 누 르 고 괴 롭 힐 때
  이 반 석 에 모 든 짐 풀 었 도 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 영 혼 이 곤 하 고 슬 플 때 나
  큰 환 란 과 시 험 이 닥 쳐 와 도
  변 함 없 는 주 님 의 반 석 안 에
  내 영 혼 이 평 안 함 누 리 도 다
  
  내 주 안 에 쉴 곳 있 네
  변 함 없 이 견 고 한 반 석 일 세
}

verseThree = \lyricmode {
  \set stanza = "3."
  저 마 귀 가 내 갈 길 방 해 할 때
  주_의 피 난 처 안 에 서  물 리 치 네
  노_도 광  풍 이 내 생 명 위 협 하 나
  주 안 에 서 내 영 혼 쉼 얻 도 다
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

