\version "2.24.0"

\version "2.24.0"

\include "./hymn_init.ly"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "내 주의 이름이 전보다 더욱 귀하네"
engTitle = "Still Sweeter Every Day"
hymnNumber = "756"
poet = "Willam Martin, 19th century"
composer = "C. Austin Miles, 1868~1946"
bibleInfo = "엡 2:15-18"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bes \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8 
}

soprano = \relative c' {
  \global
  % temporary polyphonic passage
  << 
    { \voiceOne 
      f8 |
    }
    \new Voice {
      \voiceTwo
      f8 |
    }
  >>
  d'8. d16 d8. c16 bes8. bes16 a8. bes16 |
  c8. bes16 g8. bes16 f4. \breathe %\break
  
  f8 |
  d'8. d16 d8. c16 bes8. bes16 a8. bes16 |
  c8. c16 c8. d16 c4. \breathe %\break
  
  << 
    { \voiceOne 
      f,8 |
    }
    \new Voice {
      \voiceTwo
      f8 |
    }
  >>
  ees'8. d16 d8. c16 bes8. bes16 a8. bes16 |
  c8. bes16 g8. bes16 f4. \breathe %\break
  
  f8 |
  g8. g16 a8. a16 bes8. bes16 c8. c16 \bar "||" |
  \time 2/4
  d8. c16 bes8. a16 |
  \time 4/4
  bes2. \breathe \break
  
  f4^\markup{"(후렴)"} |
  bes2~ bes8. f16 bes8. a16 |
  g4 g2 g4 \breathe | %\break
  
  c2~ c8. g16 c8. bes16 |
  a2. \breathe f4 |
  d'2~ \break
  
  d8. c16 bes8. a16 |
  c4 bes a g |
  f8 bes4. bes4 a |
  bes2. s8 \bar "|." 
}

alto = \relative c' {
  \global
  s8 |
  f8. f16 f8. ees16 d8. d16 d8. d16|
  ees8. ees16 ees8. ees16 d4. 
  
  d8 |
  f8. f16 f8. ees16 d8. d16 d8. d16|
  f8. f16 e8. e16 f4. 
  
  s8 |
  f8. f16 f8. ees16 d8. d16 d8. d16|
  ees8. ees16 ees8. ees16 d4. 
  
  d8 |
  ees8. ees16 ees8. ees16 f8. f16 g8. g16 |
  \time 2/4
  f8. ees16 d8. c16 |  % 2/4
  \time 4/4
  d2.   % 4/4
  
  s4 |
  
}

altoRefrain = \relative c' {
  \global
  \skip 8 |
  \skip 1*7
  \time 2/4 \skip 2
  \time 4/4 \skip 2.
  f4 |
  d8. d16 d8. d16 d8. d16 d8. d16 |
  ees8. ees16 ees8. ees16 ees4 ees |
  
  e8. e16 e8. e16 e8. e16 e8. e16 |
  f8. f16 f8. f16 f4 f |
  f8. f16 f8. f16 
  
  f8. ees16 d8. d16 |
  ees8. ees16 ees8. ees16 f4 ees8 ees |
  d8 f4. ees4 ees |
  d2. bes'8\rest
}

tenor = \relative c' {
  \global

   << 
    { \voiceTwo
      g8 |
    }
    \new Voice {
      \voiceOne
      \autoBeamOff
      g8 |
    }
  >>
  bes8. bes16 bes8. bes16 f8. f16 f8. f16 |
  g8. g16 bes8. g16 bes4. \breathe
  
  bes8 |
  bes8. bes16 bes8. bes 16 f8. f16 f8. f16 |
  a8. a16 g8. bes16 a4. \breathe
  
  a8 |
  bes8. bes16 bes8. bes16 f8. f16 f8. f16 |
  g8. g16 bes8. g16 bes4. \breathe
  
  bes8 |
  bes8. bes16 f8. f16 bes8. bes16 bes8. bes16 |
  \time 2/4
  bes8. a16 
  <<
    { \voiceTwo
      f8. f16 |
      
    }
    \new Voice {
      \voiceOne
      \autoBeamOff
      f8. f16 |
    }
  >>
  \time 4/4
  f2. \breathe
  <<
    { \voiceTwo
      f4 |
    }
    \new Voice {
      \voiceOne 
      f4 |
    }
  >>
  
  f8. f16 f8. f16 bes8. bes16 bes8. bes16 |
  bes8. bes16 bes8. bes16 bes4 bes |
  c8. g16 g8. g16 g8. c16 c8. c16 |
  c8. c16 c8. c16 c4 \breathe a |
  bes8. bes16 bes8. bes16
  
  bes8. bes16 f8. f16 |
  g8. g16 g8. g16 a4 bes8 bes |
  bes8 d4. c4 
  
  <<
    { \voiceTwo
      f,4 |
    }
    \new Voice {
      \voiceOne 
      f4 |
    }
  >>
  f2. d8\rest
}

bass = \relative c {
  \global
  s8 |
  bes8. bes16 bes8. bes16 bes8. bes16 bes8. bes16 |
  ees8. ees16 ees8. ees16 bes4. 
  
  bes8 |
  bes8. bes16 bes8. bes16 bes8. bes16 bes8. bes16 |
  f'8. f16 c8. c16 f4.
  
  f8 |
  bes,8. bes16 bes8. bes16 bes8. bes16 bes8. bes16 |
  ees8. ees16 ees8. ees16 bes4.
  
  bes8 |
  ees8. ees16 c8. c16 d8. d16 ees8. ees16 |
  
  \time 2/4
  f8. f16 s4 |
  \time 4/4
  bes,2.
  
  s4 |
  bes8. bes16 bes8. bes16 bes8. bes16 bes8. bes16 |
  ees8. ees16 ees8. ees16 ees4 ees |
  
  c8. c16 c8. c16 c8. c16 c8. c16 |
  f8. f16 f8. f16 f4 f |
  bes,8. bes16 bes8. bes 16
  
  bes8. bes16 bes8. bes 16 |
  ees8. ees16 ees8. ees16 ees4 ees8 ees |
  f8 f4. f4 s |
  bes,2. d8\rest
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 주 께 나 의 모 든 맘 이 날 로 끌 리 니
  저 황 금 빛 과 아 침 햇 살 보 다 빛 나 네
  내 모 든 소 원 주 님 안 에 숨 겨 있 으 니
  내 주 의 이 름 이 전 보 다 더 욱 귀 하 네
  저 황 금 길 에 주 님 과 함 께 걸 을 때 
  주 님 이 주 실 평 안 속 에 길 이 살 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 주 를 떠 나 멀 리 서 서 방 황 할 때 에
  주 크 신 사 랑 나 의 맘 을 두 드 리 셨 네
  내 갈 급 하 는 심 령 속 에 친 히 오 시 니
  내 주 의 이 름 이 전 보 다 더 욱 귀 하 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 내 게 온 후 항 상 나 를 위 로 하 시 며
  큰 환 란 시 험 당 할 때 에 피 할 길 주 사
  주 나 의 모 든 죄 의 짐 을 대 신 지 시 니
  내 주 의 이 름 이 전 보 다 더 욱 귀 하 네
}

verseRefrain = \lyricmode {
  저 황 금 길 에 황 금 길 에 주 와 걸 을 때
  저 황 금 길 에 황 금 길 에 주 와 걸 을 때
  내 주 가 주 실 평 안 속 에 길 이 살 겠 네
  주 와 길 이 살 겠 네
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "주의 깊은 자비를"
engTitleB = "Depth of Mercy"
hymnNumberB = "757"
poetB = "Charles Wesley, 1707~1788"
composerB = "Willam B. Bradbury, 1816~1868"
bibleInfoB = "마 11:28"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key f \major
  \time 3/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \relative c'' {
  \globalB
  % temporary polyphonic passage
  << 
    { \voiceOne 
      a4( c) f, |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  g2 g4 |
  g4( f) g |
  a2. \breathe |
  
  << 
    { \voiceOne 
      a4( c) f, |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  g2 g4 |
  
  << 
    { \voiceOne 
      g4( a) g |
      f2. \breathe | \break
    }
    \new Voice {
      \voiceTwo
      e2 e4 |
      f2. |
    }
  >> 
  
  bes2 bes4 |
  a2 a4 |
  g2 f4 |
  c'2. \breathe |
  << 
    { \voiceOne 
      c4( a) f |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  g2 g4 |
  g4( a) g |
  f2. \bar "|." |
}

altoB = \relative c' {
  \globalB
  s2. |
  e2 e4 |
  s2. |
  f2. |
  s2. |
  e2 e4 |
  s2. |
  s2. |
  
  f2 f4 |
  f2 f4 |
  c2 d4 |
  e2. |
  s2. |
  e2 e4 |
  e2 e4 |
  c2. |
}

tenorB = \relative c' {
  \globalB
  << 
    { \voiceOne
      c4( a) a |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  \stemDown
  c'2 c4 |
  c2 c4 |
  c2. \breathe |
  
  << 
    { \voiceOne
      c4( a) a |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  \stemDown
  c'2 c4 |
  
  << 
    { \voiceOne 
      bes4( c) bes |
      
    }
    \new Voice {
      \voiceTwo
      c,2 c4 |
    }
  >> 
  
  \stemDown
  a'2. \breathe | \break
  
  \stemDown
  d2 d4 |
  c2 c4 |
  c2 b4 |
  c2. \breathe |
  << 
    { \voiceOne
      a4( c) a |
    }
    \new Voice {
      \voiceTwo
      f2 f4 |
    }
  >> 
  
  \stemDown
  c'2 c4 |
  << 
    { \voiceOne
      bes4( c) bes |
    }
    \new Voice {
      \voiceTwo
      c,2 c4 |
    }
  >> 
  
  
  \stemDown
  a'2. \bar "|." |
}

bassB = \relative c {
  \globalB
  s2. |
  c2 c4 |
  c2 c4 |
  f2. |
  s2. |
  c2 c4 |
  s2. |
  f2. |
  
  f2 f4 |
  f2 f4 |
  e2 d4 |
  c2. |
  s2. |
  c2 c4 |
  s2. |
  f2. |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  주 의 깊 은 자 비 를 나 를 위 해 두 셨 나
  죄 인 괴 수 된 나 를 오 래 참 고 계 셨 네
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  주 의 은 혜 배 반 코 주 께 욕 을 돌 렸 네
  주 의 부 름 떠 나 서 주 께 슬 픔 돌 렸 네
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  지 금 주 께 돌 아 와 죄 로 슬 퍼 합 니 다
  주 의 말 씀 따 라 서 믿 고 주 께 옵 니 다
}

verseFourB = \lyricmode {
  \set stanza = "4."
  주 가 응 답 하 시 고 나 를 맞 아 주 셨 네
  주 는 사 랑 이 시 라 죄 인 구 원 하 시 네
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:minimal-breaking
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
      \if \on-last-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfoB
        \smallCaps \smaller \engTitleB
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
        \new Staff = upper \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          <<
            \new Voice = "women" {
              <<
                \soprano
                \alto
              >>
            }
            \new Voice = "refrain" {
              \voiceTwo
              \altoRefrain
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "women" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "women" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "women" { \verseThree }
        \new Lyrics = "LyrRefrain" \lyricsto "refrain" { \verseRefrain }
    
        \new Staff = down \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \new Voice = "men" {
            \clef bass
            <<
              \tenor
              \bass
            >>
          }
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
      }
    }
    \midi {}
  }

  \noPageBreak
  
  \score {
    \header {
      title = \korTitleB
      %subtitle = \engTitle
      opus = \hymnNumberB
      poet = \poetB
      composer = \composerB
    } 
  
    <<
      \new ChoirStaff <<
        \new ChordNames \myChordsB
        \context Staff = upper \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \context Voice = sop {
            <<
              \sopranoB
              \altoB
            >>
          }
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOneB }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwoB }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThreeB }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFourB }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \new Voice {
            \clef bass
            <<
              \tenorB
              \bassB
            >>
          }
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
      }
    }
    \midi {}
  }
}
