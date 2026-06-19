\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주님만 따르리"
engTitle = "I Am Resolved"
hymnNumber = "742"
poet = "Palmer Hartsough, 1844~1932"
composer = "James H. Fillmore, 1849~1936"
bibleInfo = "마 16:24"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>4 <bf, d>8. <c ef>16 <d f>4 <f bf> |
  <g bf>4 <ef g>8. <f a>16 <g bf>4 <ef g> \breathe |
  <d f> <bf, d>8. <c ef>16 <d f>4 <f bf> |
  <f c'>2. b4\rest | \break
  
  <f d'>4 <d bf>8. <ef c'>16 <f d'>4 <f bf> |
  <g bf> <ef g>8. <f a>16 <g bf>4 <ef g> \breathe |
  <d f> <d bf>8. <ef c'>16 <f d'>4 <ef c'> |
  <d bf>2. b4\rest \bar "||" | \break
  
  <f d'>2^\markup "(후렴)" <f bf> |
  <g c'>4 < g bf> <ef g> <ef bf> \breathe |
  <d f> <f bf>8. <f c'>16 <f d'>4 q |
  <f c'>2. b4\rest | \break
  
  <f d'>2 <f bf> |
  <g c'>4 <g bf> <ef g> <ef bf> \breathe |
  <d f>4 <f bf>8[_( <g c'>]) <f d'>4 <ef c'> |
  <d bf>2. b4\rest \bar "|." |
}

aligner = \soprano

alignerb = \fixed c {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  bf4 4 4 4 | s1 | s1 | s4 b8. 16 8 8 8 8 |
  s1 | s1 | s1 | s1 |
}

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 | s1 |
  bf4 8. 16 4 s | s1 | s1 | s1 |
  bf4 4 s2 | s1 | s1 a2. bf4\rest |
  s1 | s1 | s4 bf4 s2 | s1 |
}

bass = \fixed c {
  \global
  <bf, bf>4 <bf, f>8. q16 <bf, bf>4 <d bf> |
  <ef bf>4 q8. q16 q4 q \breathe |
  <bf, bf> <bf, f>8. q16 <bf, bf>4 <ef bf> |
  <f a>2. d4\rest |
  
  bf4 8. 16 4 <d bf> |
  <ef bf>4 q8. q16 q4 q |
  <f bf> <g bf>8. <gf bf>16 <f bf>4 <f a> |
  <bf, f>2. d4\rest |
  
  bf4 4 <bf d'> q |
  <ef ef'> q <ef bf> <g bf> \breathe |
  <f bf> <d bf>8. <c a>16 <bf, bf>4 <d bf> |
  f4 8. g16 f8 ef d[ c] |
  
  <bf, bf>4 q <bf d'> q |
  <ef ef'> q <ef bf> <g bf> \breathe |
  <f bf> d8[( ef]) <f bf>4 <f a> |
  <bf, f>2. d4\rest |
}

verseOne = \lyricmode {
  \set stanza = "1."
  이 세 상 열 락 모 두 버 리 고
  주 님 만 따 르 리
  저 높 은 곳 과 찬 란 한 곳 을 
  나 사 모 합 니 다
  
  기 쁜 마 음 으 로 주 님 을 따 르 리
  예 수 나 의 구 주 주 께 옵 니 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 무 거 운 죄 벗 어 버 린 호
  주 님 만 따 르 리
  참 길 되 시 고 진 리 되 시 며
  내 영 생 되 신 주
}

verseThree = \lyricmode {
  \set stanza = "3."
  신 실 하 시 고 진 실 한 친 구
  주 님 만 따 르 리
  그 말 씀 듣 고 순 종 한 는 것
  내 기 쁨 되 었 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 예 비 하 신 천 국 에 까 지
  주 님 만 따 르 리
  이 세 상 친 구 날 조 롱 해 도
  겁 낼 것 없 겠 네
}

verseFive = \lyricmode {
  \set stanza = "5."
  내 가 는 길 에 함 께 갈 영 혼 
  열 심 히 찾 겠 네
  주 말 씀 따 라 성 령 과 함 께
  저 천 국 길 가 네
}

verseExtra = \lyricmode {
  기 쁜 마 음
  주 를 따 르 리
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
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
        \context Lyrics = "LyrFive" \lyricsto "aligner" { \verseFive }
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
    }
    \midi {
      \tempo 4 = 90
    }
  }
}

