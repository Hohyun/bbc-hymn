\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "하늘의 영광 내맘에 넘치네"
engTitle = "Heaven Came Down and Glory Filled"
hymnNumber = "781"
poet = "K. William, 1939~"
composer = "John W. Peterson, 1921~"
bibleInfo = "계 21:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 6/8
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
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
  놀 라 운 놀 라 운 날 이 었 네
  영 원 히 못 잊 을 날
  어 둠 에 길 잃 고 헤 매 던 나
  주 님 찾 아 주 셨 네
  고 마 운 고 마 운 친 구 였 네
  내 마 음 채 웠 으 니
  괴 로 움 걷 히 고
  기 쁨 이 넘 치 네
  주 나 를 건 지 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 제 는 확 실 한 소 망 있 네
  세 월 이 지 나 간 후
  영 원 히 천 국 에 길 이 살 리
  웅 장 한 그 곳 에 서
  예 수 님 사 랑 을 깨 달 은 날
  놀 라 운 날 이 었 네
  영 원 한 사 랑 과
  놀 라 운 은 혜 로
  나 구 원 얻 었 다 네

  하 늘 의 영 광 내 맘 넘 치 네
  십 자 가 달 리 구 원 하 셨 네
  (구 했 네)
  내 죄 를 씻 었 네
  어 두 운 맘 밝 았 네
  하 늘 의 영 광 내 맘 넘 치 네
  (넘 치 네)
}

verseThree = \lyricmode {
  \set stanza = "3."
  성 령 의 역 사 로 구 원 받 아
  하 나 님 권 속 됐 네
  날 구 속 하 신 주 예 수 님 과
  반 가 히 만 나 는 날
  얼 마 나 얼 마 나 행 복 할 까
  오 그 날 고 대 하 네
  영 광 과 축 복 이
  넘 치 는 그 날 에
  나 주 님 을 뵙 겠 네
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "천국은 참 좋은 곳"
engTitleB = "Heaven is a Happy Place"
hymnNumberB = "782"
poetB = "Florence Elliott"
composerB = "Ananymous"
bibleInfoB = "계 21:22"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key f \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
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

verseOneB = \lyricmode {
  \set stanza = "1."
  천 국 은 참 좋 은 곳
  좋 은 곳 좋 은 곳
  천 국 은 참 좋 은 곳
  할 렐 루 야
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  어 둠 일 랑 없 는 곳
  없 는 곳 없 는 곳
  어 둠 일 랑 없 는 곳
  할 렐 루 야
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  길 은 온 통 황 금 길
  황 금 길 황 금 길
  길 은 온 통 황 금 길
  할 렐 루 야
}

verseFourB = \lyricmode {
  \set stanza = "4."
  우 리 들 은 즐 겁 다
  즐 겁 다 즐 겁 다
  우 리 들 은 즐 겁 다
  할 렐 루 야
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
