\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "최고로 좋은것을 드리세"
engTitle = "Our Best"
hymnNumber = "796"
poet = "S. C. Kirk, 1854~1945"
composer = "Grant Colfax Tullar, 1869~1950"
bibleInfo = "롬 12:1-2"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>2 <cs e>4 <c ef> |
  <bf, d>4 <d f> <d bf>2 |
  <ef bf>2 <f a>4 <ef g> |
  <d f>1 \breathe |
  f2 <ef a>4 <ef g> |
  <d g> <d f> <d bf>2 | %\break
  
  <c a>4 <f a> <e bf> <e g> |
  <ef c'>1 \breathe |
  <d f>2 <cs e>4 <c ef> |
  <bf, d> <d f> <d bf>2 |
  <f d'>2 <f c'>4 <f bf> |
  <ef g>1 \breathe |
  <ef bf>2 <f a>4 <ef g> | %\break
  
  <d f>4 <cs e> <d f> <bf, bf> |
  <ef bf>2 <ef c'> |
  <d bf>1 \breathe | \break
  <ef c'>2^\markup "(후렴)" <d b> |
  <ef d'>4 <ef c'> <ef a> <c f> |
  <bf, bf>2 g |
  <d f>1 | %\break
  
  <ef c'>2 \breathe <d b> |
  <ef d'>4 <ef c'> <ef a> f |
  <d bf>2 <g c'> |
  <fs d'>2. b4\rest |
  <d f>2 <cs e>4 <c ef> |
  <bf, d> <d f> <d bf>2 | %\break
  
  <f d'>2 <f c'>4 <f bf> |
  <ef g>1 \breathe |
  <ef bf>2 <f a>4 <ef g> |
  <d f> <cs e> <d f> <bf, bf> |
  <ef bf>2^> <ef c'>^> |
  <d bf>1^> \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  s1 | s1  | s1 | s1 | ef2 s2 | s1 |
  s1 | s1  | s1 | s1 | s1 | s1 | s1 |
  s1 | s1  | s1 | s1 | s1 | s2 bf,4( c) | s1 |
  s1 | s2. ef4  | s1 | s1 | s1 | s1 | 
  s1 | s1  | s1 | s1 | s1 | s1 | 
}

tenor = \fixed c {
  \global
  bf4( f) s2 | s2 <bf, f>2  | s2 ef8[ f] g[ a] | s1 | s1 | s1 |
  s1 | s1  | s1 | s1 | s1 | s1 | s2 ef8[ f] g[ a] |
  s1 | s1  | s1 | s2 gs2 | s1 | s2 g4( a) | s1 |
  s2 gs2 | s1  | s2 bf4( g) | s1 | bf4( f) s2 | s1 | 
  s1 | s1  | s2 ef8[ f] g[ a] | s1 | s1 | s1 | 
}

bass = \fixed c {
  \global
  bf,2 <bf, g>4 <bf, a> |
  <bf, bf> q s2 |
  <ef g>2 ef4 ef |
  <bf, bf>1 \breathe |
  <f a>2 <f c'>4 <f a> |
  <bf, bf> q <bf, f>2 |
  
  <c f>4 <c a> <c g> <c c'> |
  <f, f a>1 \breathe |
  <bf, f>2 <bf, g>4 <bf, a> |
  <bf, bf>4 q <bf, f>2 |
  <bf, bf>2 <c a>4 <c bf> |
  <ef bf>1 \breathe |
  <ef g>2 ef4 ef |
  
  <bf, bf>4 <bf, g> <bf, f> <d f> |
  <ef g>2 <f, f a> |
  <bf, f bf>1 \breathe |
  <f a>2 f|
  <f a>4 q <f c'> <ef a> |
  <d f>2 ef |
  <bf bf>1 |
  
  <f a>2 \breathe f |
  <f a>4 q <f c'> <f a> |
  <g bf>2 ef |
  <d a>2. d4\rest |
  bf,2 <bf, g>4 <bf, a> |
  <bf, bf> q <bf, f>2 |
  
  <bf, bf>2 <c a>4 <d bf> |
  <ef bf>1 \breathe |
  <ef g>2 ef4 4 |
  <bf, bf> <bf, g> <bf, f> <d f> |
  <c g>2^> <f, f a>^> |
  <bf, f bf>1^>
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 오 늘 우 리 게 물 으 시 되
  진 실 로 네 가 날 사 랑 하 느 냐
  주 님 께 대 소 간 받 은 것 중
  최 고 로 좋 은 것 을 드 리 세
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 오 늘 네 집 에 찾 아 오 면
  반 갑 게 뛰 어 가 영 접 하 려 나
  못 자 국 난 그 손 붙 잡 으 며
  최 고 로 좋 은 자 리 드 리 세

  주 를 위 한 일 이 복 되 나
  주 는 우 리 맘 을 원 하 네
  대 소 간 주 님 께 받 은 것 중
  최 고 로 좋 은 것 을 드 리 세
}

verseThree = \lyricmode {
  \set stanza = "3."
  우 리 의 일 할 날 쉬 지 나 고
  주 앞 에 제 각 기 서 "-" 는 날 에
  주 우 리 외 모 를 안 보 시 고
  최 선 을 드 린 자 를 보 시 네
}

verseFour = \lyricmode {
  \set stanza = "4."
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
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
    
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
      \tempo 4 = 100
    }
  }
}

