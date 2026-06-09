\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "주안에 있는 승리"
engTitle = "Victory in Jesus"
hymnNumber = "794"
poet = "E. M. Bartlett, 1885~1941"
composer = "E. M. Bartlett, 1885~1941"
bibleInfo = "골 1:13-15"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 4/4
  \tempo 4 = 80
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

aligner = \fixed c' {
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
  주 하 나 님 날 위 해 하 늘 영 광 다 버 리 고
  나 같 은 죄 인 구 원 코 자 십 자 가 지 셨 네
  그 귀 한 피 능 력 이 나 의 모 든 죄 속 했 네
  나 회 개 할 때 주 님 내 게 승 리 주 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 놀 라 운 이 적 은 모 든 죄 사 할 권 세 니
  앉 은 뱅 이 도 일 어 나 고 저 소 경 눈 떴 네
  주 권 능 을 나 믿 고 주 의 이 름 을 부 를 때
  내 죄 하 사 주 가 내 게 승 리 주 셨 네

  오 예 수 는 내 승 리 영 원 한 구 줄 세
  그 귀 한 보 혈 로 날 사 주 셨 다 네
  주 예 수 의 큰 사 랑 내 맘 속 에 넘 치 네
  나 피 아 래 있 으 니 주 승 리 내 걸 세
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 우 리 게 약 속 한 영 광 스 러 운 저 천 국
  수 정 생 물 과 저 황 금 길 또 생 명 나 무 와
  저 천 사 들 노 래 와 모 든 성 도 들 찬 밀 세
  나 거 기 가 서 승 리 노 래 함 께 부 르 리
}

verseFour = \lyricmode {
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "옛 부터 전한 복음"
engTitleB = "The Old Time Religion"
hymnNumberB = "795"
poetB = "Anonymous"
composerB = "Anonymous"
bibleInfoB = "롬 1:16-17"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key bf \major
  \time 2/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

sopranoB = \fixed c' {
  \globalB
}

alignerB = \fixed c' {
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
  앞 서 간 성 도 들 이 이 말 씀 믿 으 므 로
  큰 구 원 받 았 으 니 내 게 만 족 합 니 다
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  믿 음 의 조 상 들 이 말 씀 에 위 로 받 고
  큰 고 난 참 았 으 니 내 게 만 족 합 니 다
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  예 수 의 크 신 사 랑 내 영 혼 구 하 시 고
  영 생 을 주 셨 으 니 내 게 만 족 합 니 다
}

verseFourB = \lyricmode {
  \set stanza = "4."
  이 세 상 떠 날 때 도 주 님 이 날 지 키 사
  천 국 에 인 도 하 니 내 게 만 족 합 니 다
}

verseFiveB = \lyricmode {
  \set stanza = "5."
  주 님 이 예 비 하 신 저 천 국 올 라 가 서
  영 원 히 누 릴 복 락 내 게 만 족 합 니 다
}

verseExtraB = \lyricmode {
  옛 부 터 전 한 복 음
  옛 부 터 전 한 복 음
  옛 부 터 전 한 복 음
  내 게 만 족 합 니 다
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
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
    
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
