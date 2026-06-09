\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "내 소망 주께 있네"
engTitle = "My Home Is in Thee"
hymnNumber = "798"
poet = "Avis M. Christiansen, 1895~"
composer = "Geopge S. Schuler"
bibleInfo = "계 22:19-20"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
}

alto = \fixed c' {
  \global
}

aligneraa = \fixed c' {
  \global
}

alignerab = \fixed c' {
  \global
}

alignerac = \fixed c {
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
  내 소 망 은 예 수 께 붙 어 있 네
  나 주 님 의 의 로 사 가 려 졌 네
  주 십 자 가 보 혈 로 정 케 됐 네
  내 소 망 주 께 있 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 주 님 은 굳 건 한 반 석 이 니
  큰 폭 풍 이 불 어 도 안 전 하 네
  주 뜨 거 운 사 랑 이 날 지 키 니
  내 소 망 주 께 있 네

  놀 라 운 주 님 내 영 광 일 세
  주 예 수 님 날 구 원 하 셨 으 니
  내 주 이 름 영 원 히 찬 미 하 리 라
  내 구 주 내 구 주
  내 소 망 의 주 내 소 망 의 주
}

verseThree = \lyricmode {
  \set stanza = "3."
  내 영 원 한 소 망 은 주 예 수 요
  저 사 슴 이 시 냇 물 갈 급 하 듯
  내 영 혼 이 천 국 을 사 모 하 네
  내 소 망 주 께 있 네
}

verseExtraAA = \lyricmode {
  놀 라 운 주 님
  내 영 광 일 세
}

verseExtraAB = \lyricmode {
  주 께 있 네
  구 원 했 네
  내 소 망 주 께 있 네
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "내 어디갈까"
engTitleB = "Where Could I Go"
hymnNumberB = "799"
poetB = "J. B. Coats"
composerB = "J. B. Coats"
bibleInfoB = "마 11:28-29"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key g \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

sopranoB = \fixed c' {
  \globalB
}

alignerBA = \fixed c' {
  \globalB
}

altoB = \fixed c' {
  \globalB
}

tenorB = \fixed c {
  \globalB
}

bassB = \fixed c {
  \globalB
}

alignerBB = \fixed c {
  \globalB
}

verseOneB = \lyricmode {
  \set stanza = "1."
  죄 악 에 물 든 세 상 살 동 안
  어 디 서 위 로 받 을 까
  큰 유 혹 환 란 괴 롭 힐 때 에
  주 밖 에 갈 곳 있 으 랴
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  수 많 은 사 람 함 께 어 울 려
  갈 곳 을 몰 라 헤 매 나
  내 영 이 주 와 만 남 원 하 니
  주 밖 에 갈 곳 있 으 랴
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  이 땅 에 주 의 일 하 는 동 안
  말 씀 의 위 로 받 으 며
  내 영 혼 육 신 장 막 벗 을 때
  주 밖 에 갈 곳 있 으 랴
}

verseExtraB = \lyricmode {
  "D.C. 내" 어 디 갈 까 내 어 디 갈 까
  내 영 혼 쉴 곳 어 딘 가
  끝 까 지 나 를 지 키 시 는 분
  주 예 수 밖 에 없 도 다
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
            \context NullVoice = alignerba {
              \alignerba
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrExtraAA" \lyricsto "aligneraa" { \verseExtraAA }
    
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
              \context NullVoice = alignerbb {
                \alignerbb
              }
          >>       
        }

        \new Lyrics = "LyrExtraAB" \lyricsto "alignerab" { \verseExtraAB }
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
            \context NullVoice = alignerba {
              \alignerBA
            }
          >>
        }
           
        \context Lyrics = "LyrOneB" \lyricsto "alignerba" { \verseOneB }
        \context Lyrics = "LyrTwoB" \lyricsto "alignerba" { \verseTwoB }
        \context Lyrics = "LyrThreeB" \lyricsto "alignerba" { \verseThreeB }
    
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
              \context NullVoice = alignerbb {
                \alignerBB
              }
          >>       
        }
       \context Lyrics = "LyrExtraB" \lyricsto "alignerbb" { \verseExtraB }
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
