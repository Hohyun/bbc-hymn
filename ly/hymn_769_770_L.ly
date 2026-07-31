\version "2.24.0"

\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "진리로 승리하리라"
engTitle = "The Fight is On"
hymnNumber = "769"
poet = "Lelia N. Morris, 1862~1929"
composer = "Lelia N. Morris, 1862~1929"
bibleInfo = "엡 6:10-17"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 16 
}

soprano = \fixed c' {
  \global
  <d f>16 |
  <d bf>4 <cs bf> <d bf>4.. <d f>16 |
  <d g>8. <d f>16 q8.q16 <d g>8. <d f>16 f8. 16 |
  <f c'>4 <e c'> %\break
  
  <f c'>4. <f d'>8 |
  <e c'>8. <e bf>16 <e a>8. <e g>16 f4.. \breathe \break 16 |
  <f d'>4 <fs d'> s2 |
  s8. <g c'>16 %\break
  
  s4 <g c'>8. <g bf>16 <f a>8. <ef g>16 \breathe |
  <d f>4 <cs bf> <d bf>4.. <d f>16 |
  <f d'>8. <ef c'>16 <d bf>8. <d a>16 <d bf>8.\fermata \bar "||"  \break
  
  f16^\markup "(후렴)" g8. a16 |
  <d bf>4 <d a> <d g> <bf, d> |
  <d f> q^(_( q8.^)_)  f16 <ef g>8. <ef a>16 |
  <d bf>4 <d a> <d g> <bf, d> |
  <a, ef>2^(_( q8.^)_) %\break
  
  <a, c>16 <c ef>8. <d f>16 |
  <ef a>4 q b8.\rest f16 <ef a>8. <ef bf>16 |
  <ef c'>4 q b8.\rest c16 d8. <c ef>16 |
  <ef a>4 <ef g> <c ef> <ef g> |
  <d f>2 b8.\rest %\break
  
  f16 g8. <ef a>16 |
  <d bf>4 <d a> <d g> <bf, d> |
  <d f> q4^(_( q8.^)_) f16 <ef g>8. <ef a>16 |
  <d bf>4 <f d'> <g ef'> <f d'> |
  <ef g>2^(_( q8.^)_) %\break
  
  fs16 g8. a16 |
  bf4 4 b8.\rest c'16 d'8. ef'16 |
  d'4 4 b8.\rest f16 8. 16 |
  g4 s <f d'> <ef c'> |
  <d bf>2. b8.\rest \bar "|."
}

alto = \fixed c' {
  \global
  s16 | s1 | s2. f8. 16 | s2
  s2 | s2 f4.. 16 | s2 <g d'>4.. <af d'>16 | <g d'>8. s16
  <g ef'>8. <g d'>16 s2 | s1 | s2 s8.
  
  f16 g8. a16 | s1 | s2 s8. ef16 s4 | s1 | s2 s8.
  s16 s4 | s2 s8. ef16 s4 | s2 s8. c16 c8. s16 | s1 | s2 s8.
  f16 f8. s16 | s1 | s2 s8. ef16 s4 | s1 | s2 s8.
  s16 s4 |
  cs4 4 s8. c'16 d'8. ef'16 | f4 4 s8. f16 8. 16 | ef4 <g ef'>4 s2 | s2. s8.
}

aligner = \fixed c {
  \global
  <d f>16 |
  <d bf>4 <cs bf> <d bf>4.. <d f>16 |
  <d g>8. <d f>16 q8.q16 <d g>8. <d f>16 f8. 16 |
  <f c'>4 <e c'> 
  
  <f c'>4. <f d'>8 |
  <e c'>8. <e bf>16 <e a>8. <e g>16 f4.. 16 |
  <f d'>4 <fs d'> <g d'>4.. <af d'>16  |
  <g d'>8. <g c'>16 
  
  <g ef'>8. <g d'>16 <g c'>8. <g bf>16 <f a>8. <ef g>16 |
  <d f>4 <cs bf> <d bf>4.. <d f>16 |
  <f d'>8. <ef c'>16 <d bf>8. <d a>16 <d bf>8.
  
  f16 g8. a16 |
  <d bf>4 <d a> <d g> <bf, d> |
  <d f> q^(_( q8.^)_) f16 <ef g>8. <ef a>16 |
  <d bf>4 <d a> <d g> <bf, d> |
  <a, ef>2^(_( q8.^)_) 
  
  <a, c>16 <c ef>8. <d f>16 |
  <ef a>4 q b8.\rest f16 <ef a>8. <ef bf>16 |
  <ef c'>4 q b8.\rest c16 d8. <c ef>16 |
  <ef a>4 <ef g> <c ef> <ef g> |
  <d f>2 b8.\rest
  
  f16 g8. <ef a>16 |
  <d bf>4 <d a> <d g> <bf, d> |
  <d f> q4^(_( q8.^)_) f16 <ef g>8. <ef a>16 |
  <d bf>4 <f d'> <g ef'> <f d'> |
  <ef g>2^(_( q8.^)_)
  
  fs16 g8. a16 |
  bf4 4 b8.\rest c'16 d'8. ef'16 |
  d'4 4 b8.\rest f16 8. 16 |
  g4 4 <f d'> <ef c'> |
  <d bf>2. b8.\rest
}

tenor = \fixed c {
  \global
  s16 | s4 <bf, e> s2 | s1 | s2
  s2 | s2 a4.. s16 | s1 | s4 
  s2. | s1 | s2 s8.
  
  f16 8. 16 | s1 | s2. s8. f16 | s1 | s2 s8.
  f16 s4 | s1 | s1 | s1 | s2 s8.
  f16 8. 16 | s1 | s2. s8. f16 | s1 | s2 s8.
  s16 s4 | s1 | s1 | s1 | s2. s8.
}

bass = \fixed c {
  \global
  <bf, bf>16 |
  <bf, f>4 s q4.. <bf, bf>16 |
  q8. q16 q8. q16 q8. q16 <d bf>8. \breathe q16 |
  <f a>4 q 
  
  <a c'>4. <f a>8 |
  <c g>8. q16 <c c'>8. <c bf>16 f8.[ ef16 d8.] \breathe <c a>16 |
  <bf, bf>4 <d a> <g bf>4.. <f bf>16 |
  <ef bf>8. q16
  
  q8. q16 q8. q16 q8. q16 \breathe |
  <f bf>4 <gf bf> <f bf>4.. <f bf>16 |
  q8. <f a>16 <f bf>8. <f c'>16 <bf, bf>8.
  
  f16 8. 16 |
  <bf, f>4 q <bf, bf> <bf, f> |
  <bf, bf> q^(_( q8.^)_) <f a>16 q8. f16 |
  <bf, f>4 <bf, bf> q <d f> |
  <c ef>2^(_( q8.^)_)
  
  f16 <f a>8. <f bf>16 |
  <f c'>4 q d8.\rest <f a>16 <f c'>8. <f bf>16 |
  <f a>4 q d8.\rest q16 q8. q16 |
  <f c'>4 <f bf> <f a> q |
  <bf, bf>2 d8.\rest
  
  f16 8. 16 |
  <bf, f>4 q <bf, bf> <bf, f> |
  <bf, bf>4 q^(_( q8.^)_) <f a>16 q8. f16 |
  <bf, f>4 <bf, bf> q q | 
  <ef bf>2^(_( q8.^)_)
  
  d16\rest d4\rest | 
  <e g>4 q d2\rest |
  <f bf>4 q d8.\rest <d bf>16 q8. q16 |
  <ef bf>4 <c bf> <f bf> <f a> |
  <bf, f>2. d8.\rest
}

verseOne = \lyricmode {
  \set stanza = "1."
  큰 싸 움 났 다 나 팔 소 리 들 린 다
  무 기 를 들 라 굳 센 병 사 여
  우 리 의 대 장 예 수 님 이 앞 서 가 니
  최 후 승 리 우 리 것 이 다
  
  싸 워 라 주 의 군 병 들 아 
  힘 차 게 전 진 하 여 라
  번 득 이 는 칼 날 리 는 깃 발
  진 리 로 승 리 하 리 라
  두 려 워 물 러 가 지 말 라
  전 능 한 주 께 붙 어 라
  주 함 께 하 사 도 와 주 시 니
  승 전 가 높 이 부 르 리
}

verseTwo = \lyricmode {
  \set stanza = "2."
  큰 싸 움 났 다 군 병 들 아 일 어 나 라 
  우 리 주 가 승 리 하 셨 다
  사 망 의 권 세 깨 치 시 고 사 셨 으 니
  끝 날 까 지 참 고 견 디 세
}

verseThree = \lyricmode {
  \set stanza = "3."
  동 편 하 늘 에 무 지 개 를 보 아 라
  승 리 의 약 속 증 거 하 도 다
  온 세 상 만 국 주 님 앞 에 무 릎 꿇 고
  주 가 영 영 다 스 리 겠 네
}


myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "전능의 주와 함께 나가라"
engTitleB = "We Are Not Here To Play"
hymnNumberB = "770"
poetB = "Anonymous"
composerB = "Anonymous"
bibleInfoB = "시 46:6-11"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key bf \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \fixed c' {
  \globalB
  bf4 8. 16 8 f d f |
  <d bf>4 <f c'> <f d'>2 \breathe |
  <f c'>4 <f a>8. <f bf>16 <f ef'>8 <f d'> <f c'> <f bf> |
  <f a>4 <e g> f2 \breathe | \break
  
  bf4 8. 16 8 f <f bf> <f c'> |
  <f d'>4 <f bf> <f c'>4. \breathe f8 |
  <d bf>2 <ef g>4. f8 |
  bf1 \bar "|." |
}

alignerB = \sopranoB

altoB = \fixed c' {
  \globalB
  bf4 8. 16 8 f d f |
  s1 |
  s1 |
  s2 f2 |
  
  bf4 8. 16 8 f  s4 |
  s2 s4. f8 |
  s2 s4. ef8 |
  d1 |
}

tenorB = \fixed c {
  \globalB
  bf4 8. 16 8 f d f |
  s1 |
  s1 |
  s1 |
  
  bf4 8. 16 8 f s4 |
  s2 s4. f8 |
  bf2 4. a8 |
  bf1 |
}

bassB = \fixed c {
  \globalB
  bf4 8. 16 8 f d f |
  <g bf>4 <f a> < bf, bf>2 \breathe |
  <f a>4 <f c'>8. <d bf>16 <c a>8 <bf, bf> <a, c'> <bf d'> |
  <c c'>4 <c bf> <f a>2 \breathe |
  
  bf4 8. 16 8 f <d bf> <f a> |
  <bf, bf>4 <d bf> <f a>4. \breathe f8 |
  g8[ a g f] ef[ d c] f |
  bf,1 |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  전 능 의 주 와 함 께 나 가 라
  죽 음 과 괴 롬 겁 내 지 말 고
  주 예 수 구 령 역 사 위 하 여
  힘 써 전 하 라
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  세 상 의 헛 된 것 을 버 리 며
  내 주 의 힘 센 팔 을 붙 잡 고
  영 광 의 십 자 가 를 위 하 여
  굳 세 게 서 라
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  죄 악 의 권 세 더 욱 강 하 고
  큰 싸 움 나 를 엄 습 하 여 도
  승 리 는 우 리 손 에 있 으 니
  잡 아 라 승 리
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
    ragged-last-bottom = ##f
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
            \context NullVoice = aligner {
             \aligner
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
    
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
    \midi {}
  }
}
