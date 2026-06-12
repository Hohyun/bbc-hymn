\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = ""
engTitle = "I Lift up Zion"
hymnNumber = "808"
poet = "Anonymous"
composer = "Negro Spiritual"
bibleInfo = "시 66:10-15"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
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
  나 는 시 온 성 을 향 해 가 겠 네
  높 은 그 성 영 광 이 로 다
  내 가 그 성 에 도 달 한 그 아 침 에
  시 온 성 의 영 광 보 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 는 시 온 성 을 향 해 가 겠 네
  높 은 그 성 영 광 이 로 다 (영 광)
  그 곳 에 나 를 구 속 한 구 주 께 서
  나 를 기 다 리 고 있 도 다 (영 광)
 
  아 름 다 운 시 온 성__ 에 
  기 뻐 뛰 며 올 라 가 겠 네
  아 름 다 운 시 온 성__ 에
  기 뻐 나 는 올 라 가 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 는 시 온 성 을 향 해 가 겠 네
  높 은 그 성 영 광 이 로 다
  나 는 그 성 을 떠 나 지 않 으 리 라 
  괴 롬 없 는 안 식 처 로 다
}

verseExtra = \lyricmode {
  (아 름 다 운) (시 온 성 에) 가 겠 네
  (아 름 다 운) (시 온 성 에) 올 라 가 겠 네
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

