\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "시온성에 오르는 그날"
engTitle = "Zion's Hill"
hymnNumber = "807"
poet = "Arr. by K. William"
composer = "James Allen Crutchfield"
bibleInfo = "시 66:10-14"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
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
  찬 란 한 진 주 문 들 어 가
  기 쁘 게 주 님 뵈 올 때
  세 상 의  모 든 슬 픔 잊 고
  나 그 곳 에 서 살 리 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  죽 음 의 저 편 언 덕 에 서
  천 사 의 노 래 울 릴 때
  앞 서 간 성 도 들 과 함 께
  환 희 의 노 래 부 르 리

  그 날 고 대 하 며 기 다 리 네
  그 날 나 기 뻐 주 께 안 기 리
  이 세 상 모 든 고 통 벗 고 서
  찬 란 한 시 온 성 에 살 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  인 생 의 수 고 다 끝 난 후
  천 지 가 다 멸 하 여 도
  나 슬 픔 탄 식 다 시 없 고
  영 원 한 희 락 뿐 일 세
}

verseFour = \lyricmode {
  \set stanza = "4."
  어 둠 과 밤 이 사 라 지 고
  인 생 의 모 든 짐 벗 고
  저 시 온 성 의 영 생 복 락
  나 기 뻐 뛰 며 살 리 라
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

