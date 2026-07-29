\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "날마다 써 줍소서"
engTitle = "Channels Only"
hymnNumber = "766"
poet = "Mary E. Maxwell, 20th Centry"
composer = "Ada Rose Gibbs, 1865~1905"
bibleInfo = "롬 12:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key a \major
  \numericTimeSignature
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  e8 <e a> |
  <a cs'>4 <e a> <d fs>8 <fs a> |
  <d fs>4 <cs e> q8 <cs a> |
  <e gs>4. <e a>8 <gs b> <gs cs'> |
  <gs b>2 \break
  
  e8 <e a> |
  <a cs'>4 <e a> <d fs>8 <fs a> |
  <d fs>4 <cs e> q8 <cs a> |
  <e gs>4. <e a>8 <gs b> <gs cs'> |
  a2 \breathe \break
  
  <a cs'>8 s |
  b4 <gs b> q8 <gs cs'> |
  <e a>4 q \breathe q8 <e gs> |
  <d fs>4 q <fs a>8 <d fs> |
  e2 \breathe \break
  
  <a cs'>8 s |
  b4 <gs b> q8 <gs cs'> |
  <e a>4 q \breathe <gs b>8 <a cs'> |
  <fs d'>4\fermata \breathe <d fs> <e gs>8.\fermata <e a>16 |
  <e a>2 \bar "|."
}

aligner = \fixed c' {
  \global
  e8 <e a> |
  <a cs'>4 <e a> <d fs>8 <fs a> |
  <d fs>4 <cs e> q8 <cs a> |
  <e gs>4. <e a>8 <gs b> <gs cs'> |
  <gs b>2 
  
  e8 <e a> |
  <a cs'>4 <e a> <d fs>8 <fs a> |
  <d fs>4 <cs e> q8 <cs a> |
  <e gs>4. <e a>8 <gs b> <gs cs'> |
  a2  
  
  <a cs'>8 <a d'> |
  b4 <gs b> q8 <gs cs'> |
  <e a>4 q q8 <e gs> |
  <d fs>4 q <fs a>8 <d fs> |
  e2  
  
  <a cs'>8 <a d'> |
  b4 <gs b> q8 <gs cs'> |
  <e a>4 q <gs b>8 <a cs'> |
  <fs d'>4 <d fs> <e gs>8. <e a>16 |
  <e a>2 
}

alto = \fixed c' {
  \global
  e8 s8 | s2. | s2. | s2. | s2
  e8 s8 | s2. | s2. | s2. | a2
  s8 <a d'> | a4 s2 | s2. | s2. | d4( cs) 
  s8 <a d'> | a4 s2 | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  s4 | s2. | s2. | s2. | s2
  s4 | s2. | s2. | s2. | s2
  s4 | s2. | s2. | s2. | a2 
  s4 | s2. | s2. | s2. | s2
}

bass = \fixed c {
  \global
  <a cs'>8 q |
  <a e'>4 <a cs'> <d a>8 q |
  <a, a>4 q q8 q |
  <e b>4. <e cs'>8 <e d'> <e e'> |
  <e d'>2 
  
  <a cs'>8 q |
  <a e'>4 <a cs'> <d a>8 q |
  <a, a>4 q \breathe q8 q |
  <e b>4. <e cs'>8 <e d'> q |
  <a cs'>2 
  
  <a e'>8 <a fs'> |
  <e e'>4 q <e d'>8 q |
  <a d'>4 <a cs'> \breathe q8 q |
  <d d'>4 <d a> <d d'>8 <d a> |
  a2 \breathe
  
  <a e'>8 <a fs'> |
  <e e'>4 q <e d'>8 q |
  <a d'>4 <a cs'> \breathe <e e'>8 <a e'> |
  <d d'>4\fermata q <e d'>8.\fermata q16 |
  <a, cs'>2
}

verseOne = \lyricmode {
  \set stanza = "1."
  우 리 주 의 큰 사 랑 은
  나 를 항 상 붙 드 며
  하 늘 능 력 부 어 주 사
  나 를 불 러 주 셨 네
  
  항 상 인 도 하 신 주 여
  놀 라 운 능 력 채 워
  주 의 영 광 위 하 여 서
  날 마 다 써 줍 소 서 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 의 앞 에 바 친 이 몸
  주 님 손 에 있 으 니
  아 무 능 력 없 아 오 나
  사 용 하 여 줍 소 서
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 의 능 력 전 파 함 이
  내 게 기 쁨 이 되 니
  나 를 구 속 하 신 주 님
  항 상 인 도 합 소 서
}

verseFour = \lyricmode {
  \set stanza = "4."
  성 령 으 로 내 마 음 을
  충 만 하 게 하 시 고
  천 국 복 음 전 파 하 게
  크 신 사 랑 줍 소 서
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

