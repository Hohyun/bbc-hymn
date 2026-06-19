\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "은혜 한량 없으신 주님"
engTitle = "The Corss Is Not Greater"
hymnNumber = "744"
poet = "Ballington Booth"
composer = "Ballington Booth"
bibleInfo = "엡 2:4-6"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <g bf>4 |
  q <fs a>8 <g bf> <af c'>4 <ef g>8 <g bf> |
  <f af> <d f>4.^(_( q4^)_) q8 <ef g> |
  <f af>4. <g bf>8 <af d'>4. <af c'>8 |
  <g bf>2^(_( <ef g>4.^)_) \break
  
  <g bf>8 |
  s4 <f d'>8 s2 <g bf>8 |
  s8 <af c'>4.^(_( q4^)_) <ef af>8 <ef c'> |
  <ef bf>4^(_( q8^)_) <d f>8 <d af>4. <d f>8 |
  <bf, ef>2. b8\rest \break
  
  <g bf>8^\markup "(후렴)" |
  q4 <fs a>8 <g bf> <af c'> <g bf> <fs a> <g bf> |
  <ef g>2. b8\rest <g bf>8 |
  q4 <fs a>8 <g bf> %\break
  
  <af c'> <g bf> <fs a> <g bf> |
  <ef g>2. <g bf>8 s |
  s4. <d f>8 <f af>4 %\break
  
  <f af>8 < af c'> |
  q8 <g bf> q <bf, ef> <ef g>4 <df g>8 q |
  <c g>4 <c f> <bf, ef> <bf, d> |
  <bf, ef>2. \bar "|."
}

aligner = \fixed c' {
  \global
  <g bf>4 |
  q <fs a>8 <g bf> <af c'>4 <ef g>8 <g bf> |
  <f af> <d f>4.^(_( q4^)_) q8 <ef g> |
  <f af>4. <g bf>8 <af d'>4. <af c'>8 |
  <g bf>2 <ef g>4. 
  
  <g bf>8 |
  <g ef'>4 <f d'>8 <g ef'>8 <af f'>4 <g ef'>8 <g bf>8 |
  bf8 <af c'>4.^(_( q4^)_) <ef af>8 <ef c'> |
  <ef bf>4^(_( q8^)_) <d f>8 <d af>4. <d f>8 |
  <bf, ef>2. b8\rest 
  
  <g bf>8 |
  q4 <fs a>8 <g bf> <af c'> <g bf> <fs a> <g bf> |
  <ef g>2. b8\rest <g bf>8 |
  q4 <fs a>8 <g bf> 
  
  <af c'> <g bf> <fs a> <g bf> |
  <ef g>2. <g bf>8 g |
  <af ef'>8 <af d'> q <d f>8 <f af>4 
  
  <f af>8 < af c'> |
  q8 <g bf> q <bf, ef> <ef g>4 <df g>8 q |
  <c g>4 <c f> <bf, ef> <bf, d> |
  <bf, ef>2. 
}

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s1 | s2 s4. 
  s8 | <g ef'>4 s8 <g ef'>8 <af f'>4 <g ef'>8 s | <bf d'> s4. s4 s4 | s1 |s2. s8
  s8 | s1 | s1 | s2
  s2 | s2. s8 <g ef'>8 | <af ef'> <af d'> q s4. 
  s4 | s1 | s1 | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s1 | ef'2( bf4.)
  s8 | s1 | s1 | s1 | s2. s8
  s8 | s1 | \stemDown \tiny {\tweak extra-offset #'(0.8 . 0) b,8\rest} ef[ g bf] ef4 \normalsize \stemUp s4 | s2
  s2 | \stemDown \tiny {\tweak extra-offset #'(0.8 . 0) b,8\rest} ef[ g bf] ef4 \normalsize \stemUp s4 | bf8 8 8 8 s4 
  s4 | s1 | s1 | s2.
}

bass = \fixed c {
  \global
  <ef bf>4 |
  <ef ef'> q8 q q4 <ef bf>8 q |
  <bf, bf> q4.^(_( q4^)_) q8 q |
  q4. q8 q4. <bf, c'>8 |
  ef2..
  
  <ef bf>8 |
  q4 q8 q <ef c'>4 <ef bf>8 <ef ef'> |
  <af, ef'> q4.^(_( q4^)_) <af, c'>8 <af, af> |
  <bf, g>4^(_( q8^)_) <bf, af> <bf, f>4. <bf, af>8 |
  <ef g>2. d8\rest
  
  <ef ef'>8 |
  q4 q8 q q q q q | 
  <ef bf>2. d8\rest <ef ef'>8 |
  q4 q8 q
  
  q q q q |
  <ef bf>2. q8 <g bf> |
  bf8 8 8 8 <bf d'>4 
  
  <bf, d'>8 q |
  <ef ef'>8 q q <ef g> <ef bf>4  q8 q |
  <af, af>4 q <bf g> <bf f> |
  <ef g>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  은 혜 한 량 없 으 신 주 님
  친 히 십 자 가 지 셨 네
  이 세 상 의 폭 풍 심 하 나
  주 님 안 에 쉼 있 네
  
  주 의 은 혜 생 각 할 때 에
  세 상 걱 정 다 사 라 지 네
  주 님 한 분 만 으 로
  내 게 만 족 넘 치 며
  모 든 시 험 이 기 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 가 주 실 면 류 관 볼 때
  세 상 고 통 견 디 네 "-"
  주 가 마 신 쓴 잔 을 볼 때
  모 든 고 통 참 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 가 흘 리 신 귀 한 피 로
  추 한 내 죄 정 케 됐 네
  기 쁘 게 주 께 순 종 하 여
  주 께 영 광 돌 리 리
}

verseFour = \lyricmode {
  \set stanza = "4."
  명 랑 한 주 의 사 랑 빛 이 
  모 든 두 렴 녹 이 니 "-"
  세 상 수 고 다 지 난 후 에
  천 국 에 서 쉬 겠 네
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
      \tempo 4 = 90
    }
  }
}

