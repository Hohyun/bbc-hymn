\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 167.2 mm) (* 247.5 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "내 영혼의 고향"
engTitle = "Home of Soul"
hymnNumber = "777"
poet = "James Rowe, 1865~1933"
composer = "Samuel W. Neazley, 1871"
bibleInfo = "고후 5:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 6/8
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d b>8 q q q <c a> <b, g> |
  <b, d>4. <b, g> \breathe |
  <c a>8 q q q <b, gs> <c a> |
  <d b>4.^(_( q^)_) \breathe | \break
  
  <d b>8 q q q <d a> <d g> |
  <e g>4. < c e> \breathe |
  <b, d>8 <b, g> <d b> <c a>4 q8 |
  <b, g>4.^(_( q^)_) \breathe | \break
  
  b8^\markup "(후렴)" b b b d'8\rest d'8\rest |
  b8 b b b d'8\rest d'8\rest | \break
  c'8 c' c' c' d'8\rest d'8\rest |
  b b b b4. \breathe | %\break
  
  c'8 c' c' c' d'8\rest d'8\rest |
  b b b b d'8\rest d'8\rest | \break
  cs' cs' cs' cs' d'8\rest d'8\rest |
  d' d' d' d'4. | %\break
  
  b8 b b b d'8\rest d'8\rest |
  b b b b d'8\rest d'8\rest |
  c' c' c' c' d'8\rest d'8\rest | \break
  b b b b4. | %\break
  
  <c e>8 <d fs> <e g> <e a> <e g> <c e> |
  <b, d>8 <b, g> <d b> <g d'>4 <g c'>8 \breathe |
  b4. a |
  g4.( g)\fermata \bar "|." |
}

alto = \fixed c' {
  \global
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  
  d4.( 8) d e | 
  g4.( 8) a b |
  e4.( 8) fs g |
  d4.( 4.) |
  
  fs4.( 8) e fs | 
  g4.( 8) a b |
  a4.( 8) g e |
  fs4.( 4.) |
  
  d4.( 8) d e | 
  g4.( 8) a b |
  e4.( 8) fs g |
  d4.( 4.) |
  
  s2. | s2. | g4 g8 fs4 fs8 | g4 e8 d4. |
}

aligner = \fixed c' {
  \global
  <d b>8 q q q <c a> <b, g> |
  <b, d>4. <b, g> |
  <c a>8 q q q <b, gs> <c a> |
  <d b>4.^(_( q^)_) | 
  
  <d b>8 q q q <d a> <d g> |
  <e g>4. < c e>  |
  <b, d>8 <b, g> <d b> <c a>4 q8 |
  <b, g>4.^(_( q^)_) | 
  
  d4.( 8) d e | 
  g4.( 8) a b |
  e4.( 8) fs g |
  d4.( 4.) |
  
  fs4.( 8) e fs | 
  g4.( 8) a b |
  a4.( 8) g e |
  fs4.( 4.) |
  
  d4.( 8) d e | 
  g4.( 8) a b |
  e4.( 8) fs g |
  d4.( 4.) |
  
  <c e>8 <d fs> <e g> <e a> <e g> <c e> |
  <b, d>8 <b, g> <d b> <g d'>4 <g c'>8  |
  b4. a |
  g4.( g)
}

alignerb = \fixed c' {
  \global
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  
  <g, g>8 q q q d8\rest d8\rest |
  <g, g>8 q q q d8\rest d8\rest |
  <c g>8  q q q d8\rest d8\rest |
  <g, g>8 q q q4. |
  
  <d g>8 q q q d8\rest d8\rest |
  <g, g>8 q q q d8\rest d8\rest |
  <a, a>8  q q q d8\rest d8\rest |
  <d a>8 q q q4. |
  
  <g, g>8 q q q d8\rest d8\rest |
  <g, g>8 q q q d8\rest d8\rest |
  <c g>8  q q q d8\rest d8\rest |
  <g, g>8 q q q4. |
  
  s2. | 
  s2. | 
  <d d'>4 q8 <d c'>4 q8 |
  <g, b>4 <g, c'>8 <g, b>4. |
}

tenor = \fixed c {
  \global
  s2. | s2. | s2 es8 s | s2. |
  s2. | s2. | s2.  | s2. |
  
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  
  s2. | 
  <g, g>8 q q s4. | 
  s2. |
  s2. |
}

bass = \fixed c {
  \global
  <g, g>8 q q q q q |
  q4. q \breathe |
  <d fs>8 q q q d d |
  <g, g>4.^(_( q^)_) \breathe |
  
  <g, g>8 q q q <a, fs> <b, g> |
  <c g>4. q \breathe |
  <d g>8 q q <d fs>4 q8 |
  <g, g>4.^(_( q^)_) \breathe |
  
  <g, g>8 q q q d8\rest d8\rest |
  <g, g>8 q q q d8\rest d8\rest |
  <c g>8  q q q d8\rest d8\rest |
  <g, g>8 q q q4. |
  
  <d g>8 q q q d8\rest d8\rest |
  <g, g>8 q q q d8\rest d8\rest |
  <a, a>8  q q q d8\rest d8\rest |
  <d a>8 q q q4. |
  
  <g, g>8 q q q d8\rest d8\rest |
  <g, g>8 q q q d8\rest d8\rest |
  <c g>8  q q q d8\rest d8\rest |
  <g, g>8 q q q4. |
  
  <c g>8 q <c c'> q q <c g> |
  s4. <g b>4 <c e'>8 \breathe |
  <d d'>4 q8 <d c'>4 q8 |
  <g, b>4 <g, c'>8 <g, b>4.\fermata |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 위 해 힘 써 일 하 고
  모 든 수 고 끝 날 때
  우 리 영 혼 편 히 쉴 곳
  주 예 비 하 셨 네

  나 의 본 향 찬 란 한 천 국 에
  걱 정 없 고 어 둔 밤 도 없 네
  주 오 실 날 매 일 고 대 하 네
  속 죄 함 받 은 자
  영 원 히 쉴 곳 저 천 국
}

verseTwo = \lyricmode {
  \set stanza = "2."
  하 나 님 자 녀 를 위 해
  참 안 식 할 곳 있 네
  슬 픔 과 탄 식 없 으 며
  모 든 짐 벗 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  이 세 상 권 세 끝 나 고
  주 의 나 라 임 할 때
  주 앞 에 들 림 을 받 아
  영 원 히 쉬 겠 네
}

verseExtra = \lyricmode {
  나 의 본 향 나 의 본 향
  찬 란 한 곳 저 천 국 에
  걱 정 없 고 걱 정 없 고
  어 두 운 밤 밤 도 없 네
  주 오 실 날 주 오 실 날
  고 대 하 네 고 대 하 네
  나 의 본 향 저 천 국
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "해 지는 저편"
engTitleB = "Beyond the Sunset"
hymnNumberB = "778"
poetB = "Virgil P. Brock"
composerB = "Blanche Kerr Brock"
bibleInfoB = "고후 5:1-3"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key ef \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

sopranoB = \fixed c' {
  \globalB
  bf,8 <bf, ef> <ef g> |
  <g c'>4 <ef bf>4. <bf, ef>8 <bf, d> <bf, ef> |
  <ef g>4 <d f>4. \breathe bf,8 <bf, d> <d f> | \break
  
  <d c'>4 <d bf>4. <d c'>8 <ef bf> <f af> |
  <ef g>4^(_( q4.^)_) \breathe bf,8 <bf, ef> <ef g> |
  <g c'>4 <g bf>4. s4. | \break
  
  s4 <af c'>4. \breathe <f c'>8 <fs d'> <fs ef'> |
  s4 <g bf>4. <d af>8 <d g> <d f> |
  <bf, ef>4^(_( q4.^)_) \bar "|."   
}

alignerB = \fixed c' {
  \globalB
  bf,8 <bf, ef> <ef g> |
  <g c'>4 <ef bf>4. <bf, ef>8 <bf, d> <bf, ef> |
  <ef g>4 <d f>4. bf,8 <bf, d> <d f> | 
  
  <d c'>4 <d bf>4. <d c'>8 <ef bf> <f af> |
  <ef g>4^(_( q4.^)_) bf,8 <bf, ef> <ef g> |
  <g c'>4 <g bf>4. <g ef'>8 q <bf d'> | 
  
  <bf d'>4 <af c'>4. <f c'>8 <fs d'> <fs ef'> |
  <g ef'>4 <g bf>4. <d af>8 <d g> <d f> |
  <bf, ef>4^(_( q4.^)_)
}

altoB = \fixed c' {
  \globalB
  bf,8 s4 | s1 | s4 s4. bf,8 s4 |
  s1 | s4 s4. bf,8 s4 | s4 s4. <g ef'>8 q <bf d'> |
  <bf d'>4  s4. s4. | <g ef'>4 s4. s4. | s4 s4.
}

tenorB = \fixed c {
  \globalB
  s4. | s4 s2 f8 s | s4 s4. <bf, d>8 s4 |
  s1 | s1 | s1 |
  s1 | bf4 s2. | s4 s4. 
}

bassB = \fixed c {
  \globalB
  <ef g>8 q <ef bf> |
  <ef bf>4 <ef g>4. q8 ef <ef g> |
  <bf, bf>4 <bf, af>4. \breathe <bf, d>8 <bf, f> <bf, bf> |
  
  <bf, af>4 <bf, f>4. q8 <c f> <d bf> |
  <ef bf>4^(_( q4.^)_) \breathe <ef g>8 q <ef bf> |
  <ef ef'>4 q4. <ef bf>8 q <g ef'> |
  
  <af ef'>4 q4. \breathe <af ef'>8 <a c'> q |
  bf4 <bf, ef'>4. <bf, c'>8 <bf, bf> <bf, af> |
  <ef g>4^(_( q4.^)_)
}

verseOneB = \lyricmode {
  \set stanza = "1."
  해 지 는 저 편 찬 란 한 그 곳
  주 님 이 우 리 기 다 리 네
  이 세 상 수 고 모 두 끝 난 후
  해 지 는 저 편 편 히 쉬 리
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  해 지 는 저 편 구 름 걷 히 고
  괴 롬 과 두 렴 아 주 없 네
  어 두 운 밤 도 다 시 없 으 니
  해 지 는 저 편 기 쁜 그 곳
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  해 지 는 저 편 나 들 림 받 아
  그 리 던 주 께 안 기 리 라
  영 광 의 주 님 날 맞 아 주 사
  영 원 한 기 업 주 시 겠 네
}

verseFourB = \lyricmode {
  \set stanza = "4."
  해 지 는 저 편 나 올 라 갈 때
  앞 서 간 성 도 만 나 리 라
  다 시 는 슬 픈 이 별 없 으 니
  해 지 는 저 편 영 원 한 곳
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:minimal-breaking
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.2) (stretchability . 30))
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
            \context NullVoice = alignerb {
              \alignerb
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
       
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
