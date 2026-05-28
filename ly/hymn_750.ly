\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "구주의 사랑"
engTitle = "My Saviour's Love"
hymnNumber = "750"
poet = "Charles H. Gabriel, 1856~1932"
composer = "Charles H. Gabriel, 1856~1932"
bibleInfo = "요일 4:7-10"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <c ef>4 |
   q c <c ef> <c af>8. <df bf>16 |
   <ef c'>2 <c af>4 \breathe <ef af> |
   <ef g>4 q8. q16 <ef af>4 <ef bf> |
   <ef af>2. \breathe %\break
   
   <c ef>4 |
   <df f> q <f af> <ef g>8. <df f>16 |
   <c ef>2 <ef af>4 \breathe <f bf> |
   <ef c'> q8. q16 <df bf>4 q |
   <c af>2. b4\rest \bar "||" |
   
   c'2^\markup "(후렴)" 8. bf16 af4 |
   ef'2 8. df'16 c'4 \breathe |
   <ef bf>4 q q4. <ef c'>8 |
   <ef df'>4 <ef c'> <ef bf>2 \breathe |
   
   c'2 8. bf16 af4 |
   ef'2 8. df'16 c'4 \breathe |
   <f bf>4 c'8[ df'] <ef c'>4. <ef bf>8 |
   <ef af>4 <df g> <c af>\fermata \bar "|."
}

aligner = \fixed c' {
  \global
  <c ef>4 |
   q c <c ef> <c af>8. <df bf>16 |
   <ef c'>2 <c af>4 <ef af> |
   <ef g>4 q8. q16 <ef af>4 <ef bf> |
   <ef af>2.  
   
   <c ef>4 |
   <df f> q <f af> <ef g>8. <df f>16 |
   <c ef>2 <ef af>4 <f bf> |
   <ef c'> q8. q16 <df bf>4 q |
   <c af>2. b4\rest |
   
   c'2 8. bf16 af4 |
   ef'2 8. df'16 c'4 |
   <ef bf>4 q q4. q8 |
   <ef df'>4 <ef c'> <ef bf>2 |
   
   c'2 8. bf16 af4 |
   ef'2 8. df'16 c'4 |
   <f bf>4 c'8 df' <ef c'>4. <ef bf>8 |
   <ef af>4 <df g> <c af>
}

alignerb = \fixed c' {
  \global
  s4 | s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 |
  ef4 4 8. df16 c4  | af4 4 8. ef16 4 | s1 | s1  |
  ef4 4 8. df16 c4  | af4 4 8. ef16 4 | s4 f4 s2 | s2.
}

alto = \fixed c' {
  \global
  s4 | s4 c s2 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 |
  ef4 4 8. df16 c4 | af4 4 8. ef16 4 | s1 | s1 |
  ef4 4 8. df16 c4 | af4 4 8. ef16 4 | s4 f4 s2 | s2.
}

tenor = \fixed c {
  \global
  s4 | s4 <af, ef>4 s2 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 |
  s2 s8. <af, ef>16 q4 | s2 s8. bf16 s4 | s2 s4. af8 | s4 af s2  |
  s2 s8. <af, ef>16 q4 | s2 s8. bf16 s4 | s1 | s2.
}

bass = \fixed c {
  \global
  <af, af>4 |
  q s4 q q8. q16 | q2 q4\breathe <c af> |
  <ef bf>4 q8. q16 <ef c'>4 <ef df'> |
  <af, c'>2. \breathe
  
  <af, af>4 |
  <df af> q q q8. q16 |
  <af, af>2 q4 \breathe <df af> |
  <ef af>4 q8. q16 <ef g>4 q |
  <af, af>2. d4\rest |
  
  <af, af>4 q q8. s16 s4 |
  <af c'>4 q q8. af16 4 \breathe |
  <ef g>4 q q4. af8 |
  <g bf>4 af <ef g>2 \breathe |
  
  <af, af>4 q q8. s16 s4 |
  <af c'>4 q q8. af16 4 \breathe |
  <df af>4 q <ef af>4. <ef df'>8 |
  <ef c'>4 <ef bf> <af, af>\fermata \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 예 수 님 크 신 사 랑
  나 감 당 할 수 없 네
  나 같 은 큰 죄 인 위 해
  주 보 혈 흘 리 셨 네
  
  신 기 하 고 놀 랍 도 다
  영 원 찬 미 하 겠 네
  신 기 하 고 놀 랍 도 다
  주 님 의 사 랑 크 도 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  동 산 에 서 기 도 할 때
  주 큰 사 랑 보 였 네
  그 흘 리 신 물 과 피 는
  다 날 위 한 것 일 세
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 내 모 든 죄 와 슬 픔
  친 히 담 당 키 위 해
  갈 보 리 십 자 가 지 사
  홀 로 고 통 당 했 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  내 죄 사 함 얻 었 으 니
  종 내 주 님 만 나 리
  그 사 랑 내 노 래 되 어
  늘 찬 미 로 부 르 리
}

verseExtra = \lyricmode {
  신 기 하 구 나
  참 놀 랍 구 나
  신 기 하 구 나
  참 놀 랍 구 나
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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

