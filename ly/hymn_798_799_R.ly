\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "내 소망 주께 있네"
engTitle = "My Home Is in Thee"
hymnNumber = "798"
poet = "Avis M. Christiansen, 1895~"
composer = "Geopge S. Schuler"
bibleInfo = "계 22:19-20"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <c ef>4 |
  q <c f> <c g> <ef af> <ef bf> <ef c'> |
  <f ef'> <f df'> <f bf> <df f>2 \breathe q4 |
  <df g> <df af> <df bf> %\break
  
  <df bf>4 <df g> ef |
  <df f> <c ef> <b, d> <c ef>2 \breathe q4 |
  q4 <c f> <c g> <ef af> <ef bf> <ef c'> |
  <ef ef'> <ef c'> <ef bf> <ef g>2 \breathe %\break
  
  <ef g>4 |
  bf( c') <d bf> bf <af c'> bf |
  ef'2.( ef') \breathe |
  <ef c'>2.^\markup "(후렴)" <ef g>2 <ef af>4 | %\break
  
  <d bf>2. <d f>2 q4 |
  <df g>2. <df f>2 <df g>4 |
  <c ef>2.^(_( q2^)_) q4 |
  <df f>2. af2 bf4 | %\break
  
  <af c'>2. \stemDown <a ef'>2 \stemUp <a c'>4 |
  <af c'>2. bf2 <af c'>4 |
  bf2.( 2) \breathe ef4 |
  <ef c'>2. <ef g>2 af4 | %\break
  
  <f bf>2. <d f>2 q4 |
  <ef g>2 g4 <f af>2 <f bf>4 |
  <g c'>2.^(_( q2^)_) \breathe <e c'>4^\markup "여성" |
  <f bf>2. <f af>2 <c c'>4^\markup "남성" |
  <d bf>2. <d af>2 \breathe %\break
  
  c'4 |
  \stemDown <af ef'>2. <a f'>2 \stemUp <f c'>4 | 
  <f df'>2.^(_( q2^)_) \breathe <f f'>4 |
  <ef g>2. <g c'>2 <ef bf>4 |
  <ef af>2.^(_( q2^)_) \bar "|."
}

alto = \fixed c' {
  \global
  s4 | s1. | s1. | s2.
  s2 df4 | s1. | s1. | s2. s2
  
  s4 | d2 s4 af4 s af | g g af bf2. | 
  
  %후렴
  \tiny b,4\rest <c ef> q b,4\rest q b,4\rest |
  
  a,4\rest <d f> q s2. |
  a,4\rest df df s2. |
  s1. | 
  a,4\rest df df c4\rest <df f> \normalsize af |
  
  \tiny b,4\rest ef4 ef s <f a> s |
  b,4\rest <d af> q \normalsize af2 s4 |
  g f ff ef2 4 |
  \tiny b,4\rest <c ef> q b,4\rest <c ef> \normalsize af4 |
  
  \tiny b,4\rest f f s2. |
  b,4\rest df ef s2. |
  c4\rest e e e2 s4 |
  s1. |
  s2. s2 \normalsize
  
  c'4 |
  s1. |
  \tiny b,4\rest <f bf> q s2. |
  \stemUp ef'2 4 4 4 df' |
  c'2.^( 2) \normalsize
}

aligneraa = \soprano

alignerab = \fixed c' {
  \global
  s4  | s1. | s1. | s2.
  s2. | s1. | s1. | s2. s2  
  s4  | s1. | s1. | s1. |
  
  s1. | s1. | s1. | s1. |
  s1. | s1. | s1. | s1. |
  s1. | s1. | s1. | s1. | s2. s2
  s4  | s1. | s2. s2 af4 | g2 4 4 4 4 | ef2. s2
}

alignerac = \fixed c {
  \global
  s4  | s1. | s1. | s2.
  s2. | s1. | s1. | s2. s2
  
  s4  | s1. | ef'4 bf c' df'2. | s1. |
  
  f4 c' bf af af s |
  s1. |
  s4 ef f g f ef |
  s1. |
  
  s1. | s1. | ef4 f fs g2 s4 | s1. |
  s1. | s1. | s1. | s1. | s2. s2
  s4  | s1. | s1. | s1. | s2. s2
}

tenor = \fixed c {
  \global
  s4  | s1. | s1. | s4 f s
  s2. | s1. | s1. | s2. s2
  
  s4  | s1. | ef'4 bf c' df'2. | 
  %후렴
  \tiny d'4\rest af af s2. \normalsize |
  
  f4 c' bf af af s |
  \tiny d'4\rest <g bf> q s2. \normalsize |
  s4 ef f g^(_( f^)_) ef |
  \tiny d'4\rest af af s2. \normalsize |
  
  \tiny \once \override NoteColumn.X-offset = #0.8 a4\rest <af c'> q s2. \normalsize |
  s1. | 
  df'2.( 2) s4 | 
  \tiny \once \override NoteColumn.X-offset = #0.8 g4\rest af af s2. |
  
  \once \override NoteColumn.X-offset = #0.8 g4\rest \stemDown <bf d'> q s2.  | 
  s1. | 
  \once \override NoteColumn.X-offset = #0.8 a4\rest c' c' s2. \stemUp \normalsize | 
  s1. | 
  s2. s2
  
  c'4  | 2. 2 s4 | df'2.( 2) s4 | s1. | 
  \tiny f,4\rest \stemDown ef c af,2 \stemUp
}

bass = \fixed c {
  \global
  <af, af>4 |
  q q q <c af> q q |
  <bf, bf> q <bf, df'> <bf, bf>2 \breathe q4 |
  <ef bf> ef <ef g> 
  
  q <ef bf> <ef g> |
  <af, af> q q q2 \breathe q4 |
  q q q <c af> q q |
  <bf, g> q q <bf, bf>2 \breathe
  
  <bf, bf>4 |
  q2 q4 <bf d'> q q |
  ef2.( 2.) |
  <af, af>2. <c g>2 <cf f>4 |
  
  bf,2. 2 4 |
  <ef bf>2. <ef af>2 <ef bf>4 |
  <af, af> ef f g f ef |
  <df af>2. <f df'>2 <ff df'>4 |
  
  <ef ef'>2. <f c'>2 <f ef'>4 |
  <bf d'>2. q2 q4 |
  ef4 f fs g2 \breathe <ef df'>4 |
  <af, c'>2. <c c'>2 <cf ef'>4 |
  
  <bf, d'>2. <bf, bf>2 bf4 |
  <ef bf>2 <ef df'>4 <f c'>2 <df f'>4 |
  <c e'>2.^(_( q2^)_) \breathe d4\rest |
  <df f bf>4 q q q2 d4\rest |
  <d f bf>4 q q q2 \breathe
  
  c'4 |
  af2( f4) <f c'>2 <a ef'>4 |
  bf2 f4 bf,2 \breathe <bf df'>4 |
  <ef ef'>2. <ef ef'>2 <ef df'>4 |
  <af c'>2.^(_( q2^)_)
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 소 망 은 예 수 께 붙 어 있 네
  나 주 님 의 의 로 서 가 려 졌 네
  주 십 자 가 보 혈 로 정 케 됐 네
  내 소 망 주 께 있 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 주 님 은 굳 건 한 반 석 이 니
  큰 폭 풍 이 불 어 도 안 전 하 네
  주 뜨 거 운 사 랑 이 날 지 키 니
  내 소 망 주 께 있 네

  놀 라 운 주 님 내 영 광 일 세
  주 예 수 님 날 구 원 하 셨 으 니
  내 주 이 름 영 원 히 찬 미 하 리 라
  내 구 주 내 구 주
  내 소 망 의 주 내 소 망 의 주
}

verseThree = \lyricmode {
  \set stanza = "3."
  내 영 원 한 소 망 은 주 예 수 요
  저 사 슴 이 시 냇 물 갈 급 하 듯
  내 영 혼 이 천 국 을 사 모 하 네
  내 소 망 주 께 있 네
}

verseExtraAA = \lyricmode {   
  내 소 망 주 께 있 네
}

verseExtraAB = \lyricmode {
  주 께 있 네
  놀 라 운 주 님
  내 영 광 일 세
  구 원 했 네
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "내 어디갈까"
engTitleB = "Where Could I Go"
hymnNumberB = "799"
poetB = "J. B. Coats"
composerB = "J. B. Coats"
bibleInfoB = "마 11:28-29"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \fixed c' {
  \globalB
  \repeat segno 2 {
    <g b>4 q8 q <f b>4. g8 |
    <e c'>8 <e g> q <ef a> <d g>2 \breathe |
    <d g>4 q8 <d a> <g b> q <a c'> <g b> |
    <fs a>2. b4\rest \breathe | %\break
    
    <g b>4 q8 q <f b>4. g8 |
    <e a>8 <e g> q <ef a> <d g>2 \breathe |
    <g b>4 \stemDown <b d'>16 \stemUp <a c'>8. <g b>8 <e g> <fs a>16 q8. |
    <d g>2. b4\rest \bar "|." |
  }
  \fine
}

alignerBA = \sopranoB

altoB = \fixed c' {
  \globalB
  s2 s4. f8 | s1 | s1 | s1 |
  s2 s4. f8 | s1 | s1 | s1 |
}

tenorB = \fixed c {
  \globalB
}

bassB = \fixed c {
  \globalB
  \repeat segno 2 {
  <g d'>4 q8 q q4. <b, d'>8 |
  <c c'>8 q q q <g, b>2 \breathe |
  <g b>4 q8 <g c'> <g d'> q <fs d'> <g d'> |
  <d d'>2. d4\rest \breathe |
  
  <g d'>4 q8 q q4. <b, d'>8 |
  <c c'>8 q q q <g, b>2 \breathe |
  <g d'>4 <b, f'>16 <c e'>8. <d d'>8 <e b> <d c'>16 q8. |
  <g, b>2. d4\rest |
  } 
  \fine
}

alignerBB = \bassB

verseOneB = \lyricmode {
  \set stanza = "1."
  죄 악 에 물 든 세 상 살 동 안
  어 디 서 위 로 받 을 까
  큰 유 혹 환 란 괴 롭 힐 때 에
  주 밖 에 갈 곳 있 으 랴
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  수 많 은 사 람 함 께 어 울 려
  갈 곳 을 몰 라 헤 매 나
  내 영 이 주 와 만 남 원 하 니
  주 밖 에 갈 곳 있 으 랴
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  이 땅 에 주 의 일 하 는 동 안
  말 씀 의 위 로 받 으 며
  내 영 혼 육 신 장 막 벗 을 때
  주 밖 에 갈 곳 있 으 랴
}

verseExtraB = \lyricmode {
  \once \override LyricText.self-alignment-X = #RIGHT "D.C. 내" 어 디 갈 까 내 어 디 갈 까
  내 영 혼 쉴 곳 어 딘 가
  끝 까 지 나 를 지 키 시 는 분
  주 예 수 밖 에 없 도 다
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
        \new Lyrics = "LyrExtraAA" \with { alignAboveContext = "upper" } \lyricsto "alignerab" { \verseExtraAA }
    
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
              \context NullVoice = alignerac {
                \alignerac
              }
          >>       
        }

        \new Lyrics = "LyrExtraAB" \lyricsto "alignerac" { \verseExtraAB }
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
            \context NullVoice = alignerba {
              \alignerBA
            }
          >>
        }
           
        \context Lyrics = "LyrOneB" \lyricsto "alignerba" { \verseOneB }
        \context Lyrics = "LyrTwoB" \lyricsto "alignerba" { \verseTwoB }
        \context Lyrics = "LyrThreeB" \lyricsto "alignerba" { \verseThreeB }
    
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
              \context NullVoice = alignerbb {
                \alignerBB
              }
          >>       
        }
       \context Lyrics = "LyrExtraB" \lyricsto "alignerbb" { \verseExtraB }
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
