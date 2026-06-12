\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "거기 늙음이 전혀 없네"
engTitle = "Where We Will Never Grow Old"
hymnNumber = "806"
poet = "Jas. C. Moore, 19th Century"
composer = "Jas. C. Moore, 19th Century"
bibleInfo = "계 21:4-5"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
}

aligner = \fixed c' {
  \global
}

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
}

verseOne = \lyricmode {
  \set stanza = "1."
  하 늘 너 머 저 편 머 나 먼 강 변 에
  아 름 다 운 내 고 향 있 네
  주 가 예 비 하 신 고 통 없 는 그 곳
  늙 고 죽 음 이 영 없 다 오
}

verseTwo = \lyricmode {
  \set stanza = "2."
  다 시 방 항 할 일 없 는 그 곳 에 서
  나 의 영 혼 이 편 히 쉴 때
  만 국 왕 주 님 께 영 원 찬 미 하 리
  거 기 죽 음 이 다 시 없 네

  늙 음 없 네 늙 음 없 네
  거 기 늙 음 이 전 혀 없 네
  늙 음 없 네 늙 음 없 네
  거 기 늙 음 이 전 혀 없 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의 달 려 갈 길 모 두 마 친 후 에
  주 가 면 류 관 내 게 줄 때
  모 든 슬 픔 고 통 모 두 사 라 지 고
  앞 서 간 성 도 만 나 리 라
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

