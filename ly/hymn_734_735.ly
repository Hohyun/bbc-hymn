\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "그 이름 내 것일세"
engTitle = "I Was Once a Sinner"
hymnNumber = "734"
poet = "C. Austin Miles"
composer = "C. Austin Miles"
bibleInfo = "마 11:28"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8 
}

soprano = \fixed c' {
  \global
  <d f>8 q q q <ef g> <d f>4. |
  <d bf>4 <ef c'> <f d'>2 \breathe |
  <ef c'>8 q q q q4 <f d'>8 <ef c'> %\break
  
  bf2( f4) b\rest |
  <d f>8 q q q <ef g> <d f>4. |
  <d bf>4 <ef c'> <f d'>2 \breathe |
  <e g>8 <e a> <e bf> <e a> <e bf>4 <e d'> | %\break 
  
  c'2. \breathe \break 
  f8.^\markup "(후렴)" 16 | 
  <d bf>8 q4. <f d'>8 q q q |
  <ef c'> <d bf>^(_( q2^)_) \breathe %\break
  
  q8 q |
  <ef g>2 b8\rest <g bf>8 q q |
  <d f>2. \break
  q8. q16 |
  <c ef>4 f <ef a>8 f <ef g> <ef a> | %\break 
  
  <d bf> <f d'>^(_( q2^)_) \breathe <d bf>4 |
  <e g> <e c'> q <e d'> |
  <ef c'>2 \breathe b8\rest f f f | %\break
  
  <d bf>8 q4. <f d'>8 q q q |
  <ef c'> <d bf>^(_( q2^)_) \breathe q8 q |
  <ef g>2 b8\rest <g bf> q q |
  <d f>2. \breathe \break
  
  q8. q16 |
  <ef g>4 <ef bf> <ef c'>8 <ef bf> <ef g> <ef bf> \breathe |
  <d f>4 <d bf> <f d'> <g ef'> |
  <f d'>4. <d bf>8 <ef c'>4 <c a> |
  <d bf>2. b4\rest \bar "|." |
}

aligner = \fixed c' {
  \global
  <d f>8 q q q <ef g> <d f>4. |
  <d bf>4 <ef c'> <f d'>2 \breathe |
  <ef c'>8 q q q q4 <f d'>8 <ef c'> %\break
  
  bf2( f4) b\rest |
  <d f>8 q q q <ef g> <d f>4. |
  <d bf>4 <ef c'> <f d'>2 \breathe |
  <e g>8 <e a> <e bf> <e a> <e bf>4 <e d'> | %\break 
  
  c'4 8 8 4 \breathe f8.^\markup "(후렴)" 16 | 
  <d bf>8 q4. <f d'>8 q q q |
  <ef c'> <d bf>^(_( q2^)_) \breathe %\break
  
  q8 q |
  <ef g>2 b8\rest <g bf>8 q q |
  <d f>2. q8. q16 |
  <c ef>4 f <ef a>8 f <ef g> <ef a> | %\break 
  
  <d bf> <f d'>^(_( q2^)_) \breathe <d bf>4 |
  <e g> <e c'> q <e d'> |
  <ef c'>2 \breathe b8\rest f f f | %\break
  
  <d bf>8 q4. <f d'>8 q q q |
  <ef c'> <d bf>^(_( q2^)_) \breathe q8 q |
  <ef g>2 b8\rest <g bf> q q |
  <d f>2. \breathe %\break
  
  q8. q16 |
  <ef g>4 <ef bf> <ef c'>8 <ef bf> <ef g> <ef bf> \breathe |
  <d f>4 <d bf> <f d'> <g ef'> |
  <f d'>4. <d bf>8 <ef c'>4 <c a> |
  <d bf>2. b4\rest \bar "|." |
}

alignerextra = \fixed c' {
  s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s2.
  s4 | s4 ef8 8 8 s4. | s4 ef8 8 8 s4. | s1 |
  s1 | s1 | s4 ef8 8 8 s4. |
  s1 | s1 | s4 ef8 8 8 s4.  | s4 ef8 8 4 
  s4 | s1 | s1 | s1 | s1 | 
}

alto = \fixed c' {
  \global
  s1 | s1 | s1 |
  d2. s4 | s1 | s1 | s1 |
  ef4 a8 g f4 ef8. 16 | s1 | s2.
  s4 | s1 | s1 | s4 ef s8 ef8 s4 |
  s1 | s1 | s2 s8 ef ef ef |
  s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s1 | s1 |
  
}

tenor = \fixed c {
  \global
  s1 | f4 s2. | s1 |
  f2( bf4) s4 | s1 | s1 | s1 |
  a4 c'8 bf a4 s4 | s1 | s2.
  s4 | s1 | s1 | s1 |
  s1 | s1 | a2 b8\rest s4. |
  s1 | s1 | s1 | s2.
  s4 | s1 | s1 | s2. f4 | s1 |
}

bass = \fixed c {
  \global
  <bf, bf>8 q q q q q4. |
  f4 <f a> <bf, bf>2 \breathe |
  <f a>8 q q q q4 <f bf>8 <f a>8 |
  
  bf,2. d4\rest |
  <bf, bf>8 q q q q q4. |
  q4 <f a> <bf, bf>2 \breathe |
  <c bf>8 <c a> <c g> <c fs> <c g>4 <c bf> |
  
  f2. \breathe <f a>8. q16 |
  <bf, f>8 q4. <bf, bf>8 q q q |
  <bf, f>8 <bf, bf>^(_( q2^)_) \breathe
  
  d4\rest |
  d4\rest <ef bf>8 q q d8\rest d4\rest |
  d4\rest <bf, bf>8 q q4 q8. q16 |
  <f a>4 q <f c'>8 <f a> <f bf> <f c'> |
  
  <bf, bf>8 q^(_( q2^)_) \breathe q4 |
  <c bf> <c g> q <c bf> |
  f4 f8 g g <ef a> <d a> <c a> |
  
  <bf, bf>8 q4. q8 q q q | <bf, f> <bf, bf>^(_( q2^)_) d4\rest |
  d4\rest <ef bf>8 q q d8\rest d4\rest |
  d4\rest <bf, bf>8 q q4 \breathe
  
  q8. q16 |
  <ef bf>4 <ef g> q8 q <ef bf> <ef g> \breathe |
  <bf, bf>4 <bf, f> <bf, bf> <ef bf> |
  <f bf>4. q8 <f a>4 f |
  <bf, f>2. e4\rest \bar "|." |
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  죄 중 에 헤 매 던 나 에 게
  크 신 주 의 사 랑 비 쳐 
  값 없 는 은 혜 로 영 생 을
  이 제 내 가 받 았 네 (받 았 네)
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 죄 대 속 하 닌 십 자 가
  그 사 랑 은 혜 감 사 해
  주 님 을 따 르 며 나 항 상
  내 새 이 름 보 도 다 (보 도 다)
  
  하 늘 의 생 명 책 에 기 록 된
  그 이 름 내 것 일 세
  기 쁨 넘 쳐 천 사 노 래 하 네
  나 구 원 함 받 아
  생 명 책 위 에 새 로 이 기 록 된 
  그 이 름 내 것 일 세
  내 가 구 원 받 았 으 니
  내 갈 곳 은 천 국 이 로 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  생 명 책 에 기 록 된 것 은
  은 혜 로 구 원 받 았 네
  그 피 가 온 전 케 함 이 니
  나 의 기 쁨 한 없 네 (한 없 네)
}

verseExtra = \lyricmode {
  그 이 름 내 걸 세
  받 아 서
  그 이 름 내 걸 세
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "주 안에 있는 가정은"
engTitleB = "Happy the Home When God Is There"
hymnNumberB = "735"
poetB = "Henry Ware, 1794~1843"
composerB = "John B. Dykes, 1823~1876"
bibleInfoB = "갈 6:10"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key g \major
  \time 3/4
 % \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \fixed c' {
  \globalB
  <d g>4 <d a> <d b> |
  <g d'>2 <g b>4 |
  g2 <e c'>4 |
  <d b>2. |
  e4 <ds fs> <e g> |
  <cs b>2 <cs a>4 |
  <d a>2. | %\break
  
  <fs a>4 <g d'> <a c'> |
  <g b>2 g4 |
  b2 a4 |
  <e g>2 a4 |
  <g b>2 <es b>4 |
  <fs c'>2 <d fs>4 |
  <d g>2. \bar "|." |
  
}

alignerB = \sopranoB

altoB = \fixed c' {
  \globalB
  s2. | s2. | g2 s4 | s2. | e4 s2 | s2. | s2. |
  s2. | s2 g4 | fs4( e) s4 | s2 g4 | s2. | s2. | s2. |
}

tenorB = \fixed c {
  \globalB
  s2. | s2. | s2. | <g, g>2. | s2. | s2. | s2. |
  s2. | d'2 s4 | b2 s4 | s2. | d'4( b) s4 | s2. | s2. |
}

bassB = \fixed c {
  \globalB
  <g b>4 <g c'> <g d'> |
  <b, d'>2 <g, d'>4 |
  <e c'> < d b> <c g> |
  s2. |
  <g b>4 <fs b> <e b> |
  <a, g>2 <e g>4 |
  <d fs>2. |
  
  <d a>4 <e g> <fs d'> |
  g4( fs) e |
  ds( cs) ds |
  <e b>2 <c e'>4 |
  d2 <d gs>4 |
  <d a>2 <d c'>4 |
  <g b>2. \bar "|." |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  주 안 에 있 는 가 정 은
  사 랑 이 넘 치 고
  소 망 과 기 도 같 으 니
  다 평 안 누 리 네
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  주 안 에 있 는 가 정 은
  감 사 가 넘 치 고
  주 님 의 이 름 높 이 며
  말 씀 에 순 종 해
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  주 안 에 있 는 가 정 은
  찬 양 이 넘 치 고
  거 룩 한 말 씀 받 으 니
  지 혜 가 충 만 해
}

verseFourB = \lyricmode {
  \set stanza = "4."
  구 주 여 우 리 가 정 에
  화 평 을 주 시 고
  우 리 의 맘 을 묶 어 서
  손 종 케 합 소 서
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
            \context NullVoice = alignerextra {
               \alignerextra
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrExtra" \lyricsto "alignerextra" { \verseExtra }
    
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
    \midi {}
  }
}
