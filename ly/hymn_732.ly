\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주같이 겸손한 친구"
engTitle = "No, Not One"
hymnNumber = "732"
poet = "Johnson Otman, 1928"
composer = "George C. Hugg, 1848~1907"
bibleInfo = "히 13:5-6"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <f a>4 q8. g16 <c f>4 q8. <c e>16 |
  <bf,d>4 <bf, f> <bf d>8 <a, c>4 b8\rest \breathe |
  <f a>4 q <e g> b4\rest |
  <f a> <e g> <c f> b4\rest | \break
  
  \repeat segno 2 {
      <f a>4 q8. g16 <c f>4 q8. <c e>16 |
      <bf, d>4 <bf, f> <bf, d>8 <c e>4 b8\rest \breathe |
      <f a>4 q <e g> b4\rest |
      <f a> <e g> <c f> b4\rest | \break
    \volta 2 \fine
    \volta 1 
      <f a>4 <f c'> q <f d'>8. <f c'>16 |
      <f a>4 q <e g>8 f4 b8\rest \breathe |
      <f a>4 <f c'> q <f d'>8. <f c'>16 |
      <f a>4 q <e g>4. b8\rest \bar "||" |
  }
  \section
}

aligner = \fixed c' {
  \global
  s1 | s1 | s1 | s1 |
  
  <f a>4 q8. g16 <c f>4 q8. <c e>16 |
  <bf, d>4 <bf, f> <bf, d>8 <c e>4 b8\rest |
  <f a>4 q <e g> b4\rest |
  <f a> <e g> <c f> b4\rest | 
}

alto = \fixed c' {
  \global
  s4 s8. f16 s2 | s1 | s1 | s1 |
  s4 s8. f16 s2 | s1 | s1 | s1 |
  s1 | s2 s8 f4 s8 | s1 | s1 |
}

tenor = \fixed c {
  \global
  s2. <a, d>8. q16 | s2 f8 4 s8 | s1 | s1 |
  s2. <a, d>8. q16 | s2 f8 4 s8 | s1 | s1 |
  s1 | s1 | s1 | s1
}

bass = \fixed c {
  \global
  <f c'>4 q8. <f bf>16 <f a>4 s4 |
  <bf, f>4 <d f> f8 4 d8\rest \breathe |
  <f c'>4 q <c c'> d4\rest |
  <c c'> <c bf> <f a> d4\rest |
  
  \repeat segno 2 {
      <f c'>4 q8. <f a>16 q4 s4 |
      <bf, f>4 <d f> f8 f4 d8\rest \breathe |
      <f c'>4 q <c c'> d4\rest |
      <c c'>4 <c bf> <f a> d\rest |
    \volta 2 \fine
    \volta 1
      <f c'>4 <f a> q <f bf>8. <f a>16 |
      <f c'>4 q <c bf>8 <f a>4 d8\rest \breathe |
      <f c'>4 <f a> q <f bf>8. <f a>16 |
      <f c'>4 q <c c'>4. d8\rest \bar "||" |
  }
  \section
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 같 이 겸 손 한 친 구 있 나
  아 니 요 없 도 다
  영 혼 을 구 할 분 또 있 을 까
  아 니 요 없 도 다 
  
  우 리 수 고 를 살 피 는 주
  세 상 끝 까 지 지 키 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 같 이 높 고 도 거 룩 한 분
  아 니 요 없 도 다
  그 러 나 순 하 고 겸 손 한 분
  아 니 요 없 도 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 우 리 외 면 해 두 는 순 간
  아 니 요 없 도 다
  주 함 께 거 할 때 실 망 있 나
  아 니 요 없 도 다
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 님 이 저 버 린 성 도 있 나
  아 니 요 없 도 다
  주 님 이 물 리 친 죄 인 있 나
  아 니 요 없 도 다
}

verseFive = \lyricmode {
  \set stanza = "5."
  주 같 이 귀 중 한 선 물 있 나
  아 니 요 없 도 다
  천 국 에 데 려 감 마 다 실 까
  아 니 요 없 도 다
}

verseChorus = \lyricmode {
  \set stanza = ""
  \once \override LyricText.self-alignment-X = 0.8 "D.S. 주" 같 이 겸 손 한 친 구 있 나
  아 니 요 없 도 다
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
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
        \context Lyrics = "LyrFive" \lyricsto "sop" { \verseFive }
    
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
        
       \context Lyrics = "LyrChorus" \lyricsto "aligner" { \verseChorus }
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

