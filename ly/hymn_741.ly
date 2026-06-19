\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내 맘속에 아침 햇살 비치네"
engTitle = "It is Morning in My Heart"
hymnNumber = "741"
poet = "Rev. A. H. Ackley, 1887~1960"
composer = "Rev. A. H. Ackley, 1887~1960"
bibleInfo = "엡 5:8-13"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <bf, d>8 <c ef> |
  <d f> <cs e> <ef g> <d f> <d bf> <d a> <d c'> <d bf> |
  <f d'>2. <d bf>8 <d c'> |
  <ef bf>8 <ef a>4. f4 c' |
  <d bf>2. \breathe <bf, d>8 <c ef> | \break
  
  <d f>8 <cs e> <ef g> <d f> <d bf> <d a> <d c'> <d bf> |
  <f d'>2. q8 <f df'> |
  <f c'>8 <f a>4. <e g> 4<e c'> |
  <ef c'>2. \breathe \bar "||" <f d'>8_\fermata^\markup "(후렴)"<ef c'>_\fermata | \break
  
  <d c'>8 <d bf> q <d a> <d c'> <d bf> <d f> <bf, d> |
  ef2^( 4) \breathe <e c'>8 <e bf> |
  <ef bf>8 <ef a> q <ef g> q f <a, c> <a, cs> |
  d2( 4) \breathe <bf, d>8 <c ef> | \break
  
  <d f>8 <d bf> <ef a> <ef c'> <d bf>4 <d f>8 <d fs> |
  <ef g> <ef c'> <f b> <f d'> <ef c'>4 \breathe <cs a>8 <cs g> |
  <d f>8 <d g> <f a> <f bf> <g ef'> <ef g> <ef a> f |
  <d bf>2. \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4 | s1 | s1 | s2 ef4 s4 | \tiny d8[ d ef ef] d4 \normalsize s4 |
  s1 | s1 | s1 | s2. s4 |
  s1 | c4 8 8 4 s4 | s2 s8 ef8 s4 | bf,8 8 8 8 4 s4 |
  s1 | s1 | s2. s8 ef | s2.
}

tenor = \fixed c {
  \global
  s4 | s1 | \tiny g8[ bf a g] f4 \normalsize s4 | s2. f4 | \tiny f8[ f g g] f4 s4 |
  s1 | \tiny \stemDown bf,8[ bf, d f] bf4 \normalsize \stemUp s4 | s1 | s2. s8 f |
  s1 | s1 | s2. f8 f | s1 |
  s1 | s1 | s1 | s2. 
}

bass = \fixed c {
  \global
  <bf, f>8 q |
  <bf, bf>8 q q q <bf, f> q q q | 
  <bf, bf>2. <bf, f>8 q |
  <f c'>8 q4. <f a>4 f |
  <bf, f>2. \breathe q8 q |
  
  <bf, bf>8 q q q <bf, f> q q q |
  <bf, bf>2. q8 <b, gs> |
  <c a>8 <c c'>4. q4 <c bf> |
  <f a>2. \breathe \bar "||" <f a>8\fermata f\fermata |
  
  <bf f>8 q q q q q <bf, bf> <bf, f> |
  <f a>4 q8^"내맘에" q q4 \breathe <c a>8 <c c'> |
  <f c'>8 q q <f bf> <f a> q f f |
  <bf, f> <bf, bf>^\markup "쫒아냈네" <bf, a> <bf, g> <bf, f>4 \breathe q8 q |
  
  <bf, bf>8 q <f c'> <f a> <bf, bf>4 q8 q |
  <ef bf>8 <ef g> <d g> <g, g> <c g>4 \breathe <e g>8 <e bf> |
  <f bf> <ff bf> <ef c'> <d bf> <c c'> q <f c'> <f a> |
  <bf, f bf>2. \bar "|."
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 맘 속 에 모 든 어 둠 걷 히 고
  밝 은 아 침 되 었 네
  주 의 햇 빛 속 에 내 영 눈 뜨 니
  밝 은 아 침 되 었 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  아 름 다 운 산 새 노 래 들 리 니
  밝 은 아 침 되 었 네
  나 의 생 명 다 시 태 어 났 으 니
  밝 은 아 침 되 었 네
  
  내 맘 속 에 아 침 햇 살 비 치 니
  주 의 빛 이 어 둠 쫓 아 내 었 네
  주 님 내 게 오 신 후 
  기 쁨 회 복 되 었 네
  내 맘 속 에 아 침 햇 살 비 치 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 님 내 맘 속 에 자 리 잡 은 후 
  밝 은 아 침 되 었 네
  주 의 사 랑 어 둔 밤 을 밝 히 니
  밝 은 아 침 되 었 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  내 맘 속 에 항 상 기 쁨 넘 치 니
  밝 은 아 침 되 었 네
  천 국 에 서 주 께 찬 미 하 겠 네
  밝 은 아 침 되 었 네
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
    ragged-last-bottom = ##t
    last-bottom-spacing.padding = #0
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

