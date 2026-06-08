\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "주와 동행하는 것이 영광이로다"
engTitle = "It is Glory Just to Walk With Him"
hymnNumber = "788"
poet = "Avis B.Christiansen, 1895"
composer = "Haldor Lillenas, 1885~1959"
bibleInfo = "히 13:4-5"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key c \major
  \time 4/4
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

aligner = \fixed c' {
  \global
}

alignerb = \fixed c' {
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
  나 를 구 속 하 신 주 와 
  동 행 하 는 이 영 광
  내 영 혼 에 기 쁨 이 로 다
  나 의 발 길 가 는 곳 에
  주 가 함 께 하 시 니
  나 의 평 생 영 광 이 로 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  어 둔 그 늘 가 운 데 도
  주 가 동 행 하 시 니
  주 를 믿 고 의 지 합 니 다
  밝 은 하 늘 밑 에 서 도
  주 가 동 행 하 시 니
  나 의 평 생 영 광 이 로 다

  주 와 동 행 하 는 이 영 광
  주 와 동 행 하 는 이 영 광
  깊 은 골 짝 에 서 나
  험 한 산 길 에 서 도 
  주 는 나 의 영 광 되 도 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 와 함 께 천 국 길 을
  동 행 하 는 이 영 광
  다 시 주 를 떠 남 없 겠 네
  슬 픔 고 통 없 는 곳
  주 와 함 께 사 는 것
  영 원 토 록 영 광 이 로 다
}

verseExtra = \lyricmode {
  영 광 영 광
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "이 몸이 죽을 때"
engTitleB = "Earth's Joy Are But Fleeting"
hymnNumberB = "789"
poetB = "Ananymous"
composerB = "Lowell Mason, 1856"
bibleInfoB = "전 1:1-8"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key g \major
  \time 6/4
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
  이 세 상 소 망 은 구 름 같 고
  부 귀 와 영 화 도 한 꿈 일 세
  이 몸 이 죽 을 때 안 개 같 이 되 나
  주 님 주 신 소 망 영 원 일 세
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  주 예 수 안 믿 는 모 든 영 혼
  영 원 한 고 통 의 지 옥 가 나
  구 원 받 은 영 혼 영 원 한 영 생 복
  주 님 계 신 천 국 나 는 가 네
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  연 약 한 나 의 몸 매 일 매 시
  주 님 의 능 력 에 맡 깁 니 다
  구 주 여 내 몸 을 강 건 케 하 시 고
  주 님 의 뜻 대 로 늘 쓰 소 서
}

verseFourB = \lyricmode {
  \set stanza = "4."
  죄 인 괴 수 라 도 버 리 잖 는
  주 의 크 신 은 혜 한 량 없 네
  십 자 가 의 고 난 너 위 해 받 으 신
  사 랑 의 주 예 수 영 접 하 라
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
            \context NullVoice = alignerb {
              \alignerb
            }
          >>
        }
        
        \new Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \new Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \new Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \new Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
    
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
