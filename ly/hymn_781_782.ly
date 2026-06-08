\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "하늘의 영광 내맘에 넘치네"
engTitle = "Heaven Came Down and Glory Filled"
hymnNumber = "781"
poet = "K. William, 1939~"
composer = "John W. Peterson, 1921~"
bibleInfo = "계 21:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 6/8
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <f a>8. q16 q8 q <c g> <c f> |
  <f a>8. q16 q8 <c f>4. \breathe |
  <f a>8 q q q <c g> <c f> |
  <c e>4.^(_( q^)_) \breathe | %\break
  
  <e bf>8. q16 q8 q <e a> <e g> |
  <e bf>8. q16 q8 <e g>4. \breathe |
  <e c'>8 q q q q <e bf> |
  <f a>4.^(_( q^)_) \breathe | %\break
  
  <f a>8. q16 q8 q <c g> <c f> |
  <f a>8. q16 q8 <c f>4. \breathe |
  <f a>8 q q q <g bf> <a c'> |
  <f bf>4.^(_( q^)_) \breathe | %\break
  
  <f d'>8. q16 q8 q <f c'> <f bf> |
  <f a>8. q16 q8 q <f bf> <f a> \breathe |
  <g c'> q q <e bf> <e a> <e g> |
  f4.( f) | %\break
  
  <f a>8^\markup "(후렴)" <f c'> q f4 8 |
  <d g>8 <d bf>4 <c e> <c g>8 |
  f4.( 4.)( |
  4.()( 4.) | %\break
  
  <f a>8 <f c'> q f4 8 |
  <d g>8 <g bf>4 <c e> <c g>8 |
  f4.( 4.)( |
  4.)( 4) \breathe 8 | %\break
  
  <d g>4 q8 q4 q8 |
  <d bf>4.^(_( q8^)_) \breathe <d d'> <f df'> |
  <f c'>4 q8 <e a>4 q8 |
  f4.( g) \breathe | %\break
  
  <f a>8 <f c'> q f4 8 |
  <d g>8 <d bf>4 <c e> <c g>8 |
  f4.( 4.)( |
  f4.)( 4.) \bar "|." |
  
}

alto = \fixed c' {
  \global
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | c4( d8 c4.) |
  
  s4. f4 ef8 | s2. | c4. d8[ e] d | 
  << { c4.( 4.) }
     \\
     { s4. \tiny g,16\rest c16[ d e f g] \normalsize }
  >>
  |
  
  s4. f4 ef8 | s2. | c4. d8[ e] d | c4.( d4) ef8 |
  s2. | s2. | s2. | f4.( 4.) |
  s4. f4 ef8 | s2. | c4. d8[ e] d | c4.( 4.) |
}

aligner = \fixed c' {
  \global
  <f a>8. q16 q8 q <c g> <c f> |
  <f a>8. q16 q8 <c f>4. |
  <f a>8 q q q <c g> <c f> |
  <c e>4.^(_( q^)_) | 
  
  <e bf>8. q16 q8 q <e a> <e g> |
  <e bf>8. q16 q8 <e g>4. |
  <e c'>8 q q q q <e bf> |
  <f a>4.^(_( q^)_) | 
  
  <f a>8. q16 q8 q <c g> <c f> |
  <f a>8. q16 q8 <c f>4. |
  <f a>8 q q q <g bf> <a c'> |
  <f bf>4.^(_( q^)_) | 
  
  <f d'>8. q16 q8 q <f c'> <f bf> |
  <f a>8. q16 q8 q <f bf> <f a> |
  <g c'> q q <e bf> <e a> <e g> |
  f4.( f) | 
  
  % 후렴
  <f a>8 <f c'> q f4 8 |
  <d g>8 <d bf>4 <c e> <c g>8 |
  f4.  4 8 |
  4.( 4.) | 
  
  <f a>8 <f c'> q f4 8 |
  <d g>8 <g bf>4 <c e> <c g>8 |
  f4. 4 8 |
  4.( 4) 8 | 
  
  <d f>4 q8 q4 q8 |
  <d bf>4.^(_( q8^)_) <d d'> <f df'> |
  <f c'>4 q8 <e a>4 q8 |
  f4.( g) | 
  
  <f a>8 <f c'> q f4 8 |
  <d g>8 <d bf>4 <c e> <c g>8 |
  f4. 4 8 |
  f4.( 4.) |
}

tenor = \fixed c {
  \global
  \stemDown
  s2. | s2. | s2. | \tiny b,4\rest d8 c4 g,8 \normalsize |
  s2. | s2. | s2. | \tiny b,4\rest d8 c4 a,8 \normalsize |
  s2. | s2. | s2. | \tiny b,4\rest g8 f4 d8 \normalsize |
  \stemUp
  s2. | s2. | s2. | a4( bf8 a4.) |
  
  s2. | s2. | a4. bf8[ c'] bf | a4.( 4.) |
  s2. | s2. | a4. bf8[ c'] bf | a4.( 4) 8 |
  s2. | s2. | s2. | s2. |
  s2. | s2. | a4. bf8[ c'] bf | a4.( 4.) |
}

bass = \fixed c {
  \global
  <f c'>8. q16 q8 q <f bf> <f a> |
  <f c'>8. q16 q8 <f a>4. \breathe |
  <f c'>8 q q q <f bf> <f a> |
  <g bf>4.^(_( q^)_) \breathe |
  
  <c g>8. q16 q8 q <c c'> <c bf> |
  <c g>8. q16 q8 <c bf>4. \breathe |
  <c bf>8 q q q q <c d'> |
  <f c'>4.^(_( q^)_) \breathe |
  
  <f c'>8. q16 q8 q <f bf> <f a> |
  <f c'>8. q16 q8 <f a>4. \breathe |
  <f c'>8 q q <f f'> <f e'> <f ef'> |
  <bf d'>4.^(_( q^)_) \breathe |
  
  <bf, bf>8. q16 q8 q <c a> <d bf> |
  <f c'>8. q16 q8 q <f d'> <f c'> \breathe |
  <c e'> q q <c d'> <c c'> <c bf> |
  f4.( 4.) |
  
  <f c'>8 <f a> q <d a>4 <c a>8 |
  <bf, bf>8 <bf, g>4 <c g> <c bf>8 |
  <<
    \stemDown
   { f4._( 4.)_( | 4.)_( 4.) | } \\
   { s2. | \tiny g,4\rest c8 f,4. \normalsize }
  >>
  
  <f c'>8 <f a> q <e a>4 <c a>8 |
  <bf, bf>8 <bf, g>4 <c g> <c bf>8 |
  f4.( 4.)( | 
  4) ef8 d4 \breathe c8 |
  
  <bf, bf>4 q8 q4 q8 |
  <bf, g>4.^(_( q8^)_) \breathe q <b, gs> |
  <c a>4 q8 <cs a>4 q8 |
  <d a>4.^(_( <df bf>^)_) \breathe |
  
  <c c'>8 <c a> q q4 q8 |
  <bf, bf>8 <bf, g>4 <c g> <c bf>8 |
  <<
    \stemDown
   { f4._( 4.)_( | 4.)_( 4.) | } \\
   { s2. | \tiny g,4\rest c8 f,4. \normalsize }
  >>
}

verseOne = \lyricmode {
  \set stanza = "1."
  놀 라 운 놀 라 운 날 이 었 네
  영 원 히 못 잊 을 날
  어 둠 에 길 잃 고 헤 매 던 나
  주 님 찾 아 주 셨 네
  고 마 운 고 마 운 친 구 였 네
  내 마 음 채 웠 으 니
  괴 로 움 걷 히 고
  기 쁨 이 넘 치 네
  주 나 를 건 지 셨 %네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 제 는 확 실 한 소 망 있 네
  세 월 이 지 나 간 후
  영 원 히 천 국 에 길 이 살 리
  웅 장 한 그 곳 에 서
  예 수 님 사 랑 을 깨 달 은 날
  놀 라 운 날 이 었 네
  영 원 한 사 랑 과
  놀 라 운 은 혜 로
  나 구 원 얻 었 다 네

  하 늘 의 영 광 내 맘 넘 치 네
  (넘 치 네)
  십 자 가 달 려 구 원 하 셨 네
  (구 했 네)
  내 죄 를 씻 었 네
  어 두 운 맘 밝 았 네
  하 늘 의 영 광 내 맘 넘 치 네
  (넘 치 네)
}

verseThree = \lyricmode {
  \set stanza = "3."
  성 령 의 역 사 로 구 원 받 아
  하 나 님 권 속 됐 네
  날 구 속 하 신 주 예 수 님 과
  반 가 히 만 나 는 날
  얼 마 나 얼 마 나 행 복 할 까
  오 그 날 고 대 하 네
  영 광 과 축 복 이
  넘 치 는 그 날 에
  나 주 님 을 뵙 겠 %네
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "천국은 참 좋은 곳"
engTitleB = "Heaven is a Happy Place"
hymnNumberB = "782"
poetB = "Florence Elliott"
composerB = "Ananymous"
bibleInfoB = "계 21:22"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key f \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \fixed c' {
  \globalB
  <a c'>4. s8 q4 <g bf> |
  <f a>4 <g bf> <a c'>2 \breathe |
  <e g>4 <f a> <g bf>2 |
  <f a>4 <g bf> <a c'>2 \breathe | \break
  
  <a c'>4. s8 q4 <g bf> |
  <f a>4 <g bf> <a c'>2 \breathe |
  <e g>2 <e c'> |
  <f a>4 f2. \bar "|." |
}

alignerB = \fixed c' {
  \globalB
  <a c'>4. q8 q4 <g bf> |
  <f a>4 <g bf> <a c'>2 |
  <e g>4 <f a> <g bf>2 |
  <f a>4 <g bf> <a c'>2 | %\break
  
  <a c'>4. q8 q4 <g bf> |
  <f a>4 <g bf> <a c'>2 |
  <e g>2 <e c'> |
  <f a>4 f2.
}

altoB = \fixed c' {
  \globalB
  s4. <bf d'>8 s2 | s1 | s1 | s1 |
  s4. <bf d'>8 s2 | s1 | s1 | s4 f2. |
}

tenorB = \fixed c {
  \globalB
   f,4 c s2 | s2. f,4 | s2. c4 | s2. f,4 |
   f,4 c s2 | s2. f,4 | c4 s2. | s1 |
}

bassB = \fixed c {
  \globalB
  s2 f2 | c'8[ bf a g] f4 s \breathe |
  bf8[ a g f] e4  s |
  c'8[ bf a g] f4 s \breathe |
  
  s2 f2 |
  c'8[bf a g] f4 s \breathe |
  s4 e g c' |
  <f c'>4 <f a>2. |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  천 국 은 참 좋 은 곳
  좋 은 곳 좋 은 곳
  천 국 은 참 좋 은 곳
  할 렐 루 야
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  어 둠 일 랑 없 는 곳
  없 는 곳 없 는 곳
  어 둠 일 랑 없 는 곳
  할 렐 루 야
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  길 은 온 통 황 금 길
  황 금 길 황 금 길
  길 은 온 통 황 금 길
  할 렐 루 야
}

verseFourB = \lyricmode {
  \set stanza = "4."
  우 리 들 은 즐 겁 다
  즐 겁 다 즐 겁 다
  우 리 들 은 즐 겁 다
  할 렐 루 야
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:minimal-breaking
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
