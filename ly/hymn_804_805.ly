\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "내게 오라"
engTitle = "Come to Me"
hymnNumber = "804"
poet = "Charles P. Jones"
composer = "Charles P. Jones"
bibleInfo = "마 11:28-29"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key c \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8 
}

soprano = \fixed c' {
  \global
  <c e>8. q16 q8. <d f>16 <e g>4 <c e> |
  <e c'>8. <a c'>16 <g b>8. <f a>16 <e g>2 \breathe |
  <d f>8. q16 <f a>8. q16 <d f>4 d |
  <f b>8. <f a>16 < e g>8. <d f>16 <c e>2 \breathe | \break
  
  <e c'>8. q16 q8. q16 q4 <e g> |
  <f a>8. <a c'>16 <g b>8. <f a>16 <e g>2 \breathe |
  \stemDown <g e'>8. q16 q8. <g d'>16 <a c'>4 \stemUp <f a> |
  <e g>8. <e c'>16 <d b>8. <f d'>16 <e c'>2 \breathe | \break
  
  <e g>2.^\markup "(후렴)" <d f>8. <f a>16  |
  <e g>2. b4\rest |
  <f b>2 ^(_( q8.^)_) g16 <f a>8. <f b>16 |
  c'2. b4\rest | \break
  
  <a c'>2^(_( q8.^)_) q16 <g b>8. <f a>16 |
  <e g>2 <c e> \breathe |
  <fs d'>2^(_( q8.^)_) <a c'>16 <g b>8. <fs a>16 |
  g2( 4) b4\rest | \break
  
  <e g>2^(_( q8.^)_) q16 <f a>8. <e g>16 |
  <c e>2 <e g> \breathe |
  <f a>2^(_( q8.^)_) <a c'>16 <g b>8. <f a>16 |
  \stemDown <g e'>2. \stemUp b4\rest | \break
  
  <e g>2^(_( q8.^)_) <g e'>16 <g d'>8. <g c'>16 |
  <a c'>2 <f a> |
  <e g>2^(_( q8.^)_)^\markup "rit" <e c'>16 <d b>8. <f d'>16\fermata |
  c'2. b4\rest |
  
  
}

alto = \fixed c' {
  \global
  s1 | s1| s2. d4 | s1 |
  s1 | s1 | s1 | s1 |
  
  s1 | s1 | s2 s8. f16 s4 | e8. 16 f8. 16 e4 s4 |
  s1 | s1 | s1 | d8. 16 e8. 16 f4 s4 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | e8. 16 f8. 16 e4 s |
}

aligneraa = \soprano

tenor = \fixed c {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s8. g16 <g, g>8. q16 s2 |
  
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
}

bass = \fixed c {
  \global
  <c g>8. q16 q8. q16 <c c'>4 <e g> |
  <f a>8. <c c'>16 q8. q16 q2 \breathe |
  <g b>8. q16 q8. q16 q4 q |
  <g, b>8. q16 q8. <b, g>16 q2 \breathe |
  
  <c g>8. q16 q8. q16 q4 <c c'> |
  <f c'>8. q16 q8. q16 <c c'>2 \breathe |
  q8. q16 q8. <e c'>16 <f c'>4 q |
  <g c'>8. g16 s4 <c g>2 \breathe |
  
  <c c'>4 q8. q16 q4 d4\rest |
  q4 q8. q16 q4 d4\rest |
  <g d'>8. q16 q8. q16 q8 d8\rest d4\rest |
  <c g>8. q16 <c a>8. q16 <c g>4 d4\rest | 
  
  <f c'>8. q16 q8. q16 q8. q16 d4\rest |
  <c c'>8. q16 q8. q16 <c g>4 q \breathe |
  <d a>8. q16 q8. q16 q4 d4\rest |
  <g b>8. q16 <g c'>8. q16 <g d'>4 d4\rest |
  
  <c c'>8. q16 q8. q16 q4 q |
  <c g>8. q16 q8. q16 <c c'>4 q \breathe |
  <f c'>8. q16 q8. q16 q4 d4\rest |
  <c c'>8. q16 q8. q16 q4 d4\rest |
  
  <c c'>4 q q d4\rest |
  <f c'>8. q16 q8. q16 q4 q |
  <g c'> q q d4\rest |
  <c g>8. q16 q8. q16 <c g>4 d4\rest |
}

alignerab = \fixed c' {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  
  <c c'>4 q8. q16 q4 d4\rest |
  q4 q8. q16 q4 d4\rest |
  <g d'>8. q16 q8. q16 q8 d8\rest d4\rest |
  <c g>8. q16 <c a>8. q16 <c g>4 d4\rest | 
  
  <f c'>8. q16 q8. q16 q8. q16 d4\rest |
  <c c'>8. q16 q8. q16 <c g>4 q \breathe |
  <d a>8. q16 q8. q16 q4 d4\rest |
  <g b>8. q16 <g c'>8. q16 <g d'>4 d4\rest |
  
  <c c'>8. q16 q8. q16 q4 q |
  <c g>8. q16 q8. q16 <c c'>4 q \breathe |
  <f c'>8. q16 q8. q16 q4 d4\rest |
  <c c'>8. q16 q8. q16 q4 d4\rest |
  
  <c c'>4 q q d4\rest |
  <f c'>8. q16 q8. q16 q4 q |
  <g c'> q q d4\rest |
  <c g>8. q16 q8. q16 <c g>4 d4\rest |
}

verseOne = \lyricmode {
  \set stanza = "1."
  자 비 하 신 주 가 부 르 는 음 성
  수 고 하 고 무 건 짐 진 자 들 아
  내 게 와 서 편 히 쉼 을 얻 으 라
  세 상 근 심 염 려 가 지 고 오 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  죄 의 골 짝 에 서 길 잃 었 느 뇨
  지 옥 불 을 향 해 달 려 가 느 뇨
  죄 의 권 세 아 래 갇 혀 있 느 뇨
  선 한 목 자 예 수 음 성 들 으 라

  내 게 오 라 쉬 게 하 리 라
  네 무 거 운 죄 짐 내 게 맡 기 라
  나 는 온 유 하 니 내 게 배 우 라
  내 멍 에 는 쉽 고 가 벼 우 니 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  너 의 마 음 속 에 실 망 있 느 뇨
  주 의 말 씀 듣 기 주 저 하 느 뇨
  주 를 멀 리 떠 나 방 황 하 느 뇨
  주 께 나 아 오 면 쉼 을 주 리 라
}

verseFour = \lyricmode {
  자 주 시 험 만 나 굴 복 하 느 뇨
  연 약 함 을 인 해 맘 상 하 느 뇨
  주 님 앞 에 나 와 도 움 구 하 면
  성 령 께 서 네 게 쉼 을 주 리 라
}

verseExtra = \lyricmode {
  내 게 오 라 
  내 게 오 라
  쉬 게 하 리 라 
  쉬 게 하 리 라
  너 의 모 든 죄 를 
  너 의 모 든 죄 를
  내 게 맡 겨 라 
  내 게 맡 겨 라
  나 는 온 유 하 니
  나 는 온 유 하 니
  내 게 배 우 라
  내 게 배 우 라
  내 멍 에 내 멍 에 는 쉽 고
  내 멍 에 가 벼 우 니 라
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "주께서 내길 인도하시네"
engTitleB = "I Know the Lord Has Made a Way"
hymnNumberB = "805"
poetB = "arr. by K. William, 1939"
composerB = "arr. by Hohn W. Peterson"
bibleInfoB = "요 10:3-4"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key f \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

sopranoB = \fixed c' {
  \globalB
  <a, c>8 <a, f> <bf, e g> |
  <c f a>4. <b, fs g>8 <c fs a> <d fs bf> |
  <bf, e g>2 <c e a>4 |
  f2.( |
  4.) <a, c>8 <a, f> <c f a> | \break
  
  <a c'>4. <gs b>8 <a c'> <bf d'> |
  <e g bf>2 <e a c'>4 |
  a2.( |
  2) c'8 8 |
  <bf d'>4. \stemDown <a cs'>8 <bf d'> \stemUp <f c'> |
  <d bf>2 d'8 8 | \break
  
  c'4. b8 c' bf |
  <c f a>4. c8 <a, d a> <bf, e g> |
  <c f a>4. <b, fs g>8 <c fs a> <d fs bf> |
  <bf, e g>2 <c e a>4 |
  f2.( | <a, f>4.) \bar "|."
}

alignerB = \sopranoB

altoB = \fixed c' {
  \globalB
  s4. | s2. | s2. a,4. c8[ bf, c] | a,4. s |
  f2 4 | s2. f4. e8[ d e] | <c f>2 f4 | f2 s4 | s2 <f bf>4 |
  f2 4 | s2. | s2. | s2. | a,4. c8 bf,4 | s4.
}

tenorB = \fixed c {
  \globalB
  d8\rest d4\rest |
  f,8[ c f d] c4 |
  c,8[ g, e d] c4 |
  f8\rest c e4 d |
  c2 4 |
  
  f,8[ c] s4 c |
  c,8[ g, e g] s4 |
  f,8[ c] s2 |
  a4 c f, |
  bf,,8[ f, d f] s4 |
  s2 bf,4
  
  a,8[ f] s2 |
  s2. |
  c4 c, c |
  c,8[ g, e d ] c4 |
  f8\rest c8 e4 d8[ df] |
  c4.
}

bassB = \fixed c {
  \globalB
  s4. | s2. | s2. | f,2.( | 4) c, s4 |
  
  s4 a4 s |
  s2 <c bf>4 |
  s4 a <f bf>4( |
  f4) s2 |
  s2 bf4 |
  bf,8[ f g f] s4 |
  
  s4 c'4 a8[ f] |
  f4 e d8[ df] |
  s2. |
  s2.
  f,2.( |
  4.)
}

verseOneB = \lyricmode {
  \set stanza = "1."
  주 께 서 내 길 인 도 하 시 네 __
  주 께 서 내 길 인 도 하 시 네 __
  내 가 악 을 버 리 고 
  참 된 생 활 할 때 에
  주 께 서 내 길 인 도 하 시 네 __
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  주 께 서 나 를 항 상 보 시 네 __
  주 께 서 나 를 보 호 하 시 네 __
  복 음 전 파 하 면 서
  잃 은 영 혼 구 하 세
  주 님 을 사 랑 하 며 따 르 네 __
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  나 이 제 주 를 따 라 가 겠 네 __
  나 이 제 주 를 따 라 가 겠 네 __
  내 가 하 루 하 루 를 
  주 를 위 해 살 리 라
  사 랑 의 주 님 뒤 를 따 르 리 __
}

verseFourB = \lyricmode {
  \set stanza = "4."
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 7\mm        
    %page-count = #2
    %page-breaking = #ly:minimal-breaking
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0) (stretchability . 30))
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
            \context Voice = sop {
              \voiceOne
                \soprano
            }
            \context Voice = alto {
              \voiceTwo
                \alto
            }
            \context NullVoice = aligneraa {
              \aligneraa
            }
            \context NullVoice = alignerab {
              \alignerab
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligneraa" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligneraa" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligneraa" { \verseThree }
        \new Lyrics = "LyrFour" \lyricsto "aligneraa" { \verseFour }
        \new Lyrics = "LyrExtra" \lyricsto "alignerab" { \verseExtra }
    
        \new Staff = down \with {
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
          <<
            \context Voice = sop {
              \voiceOne
                \sopranoB
            }
            \context Voice = alto {
              \voiceTwo
                \altoB
            }
            \context NullVoice = alignerb {
             \alignerB
            }
          >>
        }
           
        \context Lyrics = "LyrOneB" \lyricsto "alignerb" { \verseOneB }
        \context Lyrics = "LyrTwoB" \lyricsto "alignerb" { \verseTwoB }
        \context Lyrics = "LyrThreeB" \lyricsto "alignerb" { \verseThreeB }
        \context Lyrics = "LyrFourB" \lyricsto "alignerb" { \verseFourB }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \clef bass
            <<      
              \context Voice = tenor {
                \voiceOne
                \tenorB
              }
              \context Voice = bass {
                \voiceTwo
                \bassB
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
