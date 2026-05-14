\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 다시 오시네"
engTitle = "Jesus is Coming Again"
hymnNumber = "708"
poet = "J. W. Peterson, 1921~"
composer = "J. W. Peterson, 1921~"
bibleInfo = "행 8:11"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

aligner = \fixed c' {
  \global
  <d bf>4 <f a> <ef g> <d f> <cs e> <d f> |
  <ef g>2. <f g> |
  <e c'>4 <e bf> <e a> <e g> <ds fs> <e g> |
  <f a>2. <g a> |
  
  <fs d'>4 <fs c'> <fs bf> <fs a> <es gs> <fs a> |
  <d bf>2.^(_( <ef bf>^)_) \breathe |
  <f d'>4 q q <ef c'>^(_( q^)_) q |
  d4( f) ef d2. |
}

soprano = \fixed c' {
  \global
  <d bf>4 <f a> <ef g> <d f> <cs e> <d f> |
  <ef g>2.^(_( <f g>^)_) \breathe |
  <e c'>4 <e bf> <e a> <e g> <ds fs> <e g> |
  <f a>2.^(_( <g a>^)_) \breathe | \break
  
  <fs d'>4 <fs c'> <fs bf> <fs a> <es gs> <fs a> |
  <d bf>2.^(_( <ef bf>^)_) \breathe |
  <f d'>4 q q <ef c'>^(_( q^)_) q |
  bf2.( 2.) |
}

alto = \fixed c' {
  \global
  s1. | s1. | s1. | s1. |
  s1. | s1. | s1. | d4( f) ef d2. | 
}

tenor = \fixed c {
  \global
  s1. | s1. | s1. | s1. |
  s1. | s1. | s1. | bf4( a) g f2. | 
}

bass = \fixed c {
  \global
  <bf, f>4 <bf, g> <bf, a> <bf, bf> q q |
  q2.^(_( <d b>2.^)_) \breathe |
  <c c'>4 q q <c bf> <c a> <c bf> |
  <f c'>2.^(_( <e c'>2.^)_)  \breathe |
  
  <d a>4 q <d d'> <d c'> <d b> <d c'> |
  <g bf>2.^(_( <gf c'>^)_) \breathe |
  <f bf>4 q q <f a>^(_( q^)_) q |
  bf,2.( 2.) |
}

verseOne = \lyricmode {
  \set stanza = "1."
  영 광 의 찬 송 불 러 "" 그 크 신 소 식 전 하 라
  놀 라 운 우 리 의 왕    주 다 시 오 시 네 (다 시)
}

verseTwo = \lyricmode {
  \set stanza = "2."
  숲 과 꽂 들 외 치 고 " " 산 과 들 함 께 노 래 해
  천 지 가 소 리 높 여     주 다 시 오 시 네 (다 시)
}

verseThree = \lyricmode {
  \set stanza = "3."
  심 판 날 주 앞 에 설 때 시 험 과 고 통 끝 나 네
  면 류 관 벗 어 들 고   주 다 시 오 시 네 (다 시)
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
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
      }
    }
    \midi {
      \tempo 4 = 90
    }
  }
}

