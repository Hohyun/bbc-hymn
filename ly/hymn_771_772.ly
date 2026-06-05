\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "주님이 아시고 칭찬하리"
engTitle = "He'll Understand and Say \"Well Done\""
hymnNumber = "771"
poet = "Lucy E. Campbell, 1777~1843"
composer = "Lucy E. Campbell, 1777~1843"
bibleInfo = "마 25:21"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8 
}

soprano = \fixed c' {
  \global
  <g bf>4. <fs a>8 <g bf>4 |
  <ef g>2 <g bf>4 \breathe |
  s2. |
  <g bf>8 <ef g>2^(_( q8^)_) \breathe |
  <f af>4. <e g>8 <f af>4 | \break
  
  <d f>2 s4 |
  s8 <g bf>4. <f af>4 |
  <ef g>2. \breathe |
  <g bf>4. <fs a>8 <g bf>4 |
  s2. \breathe |
  s2. | \break
  
  <g bf>8 <ef g>2^(_( q8^)_) |
  s2. |
  <g bf>4 <ef g> <e g> \breathe |
  <ef g>16[^(_( <d f>] <c ef>4.^)_) <d f>4 |
  <bf, ef>2. \bar "||" | \break
  
  <f af>4.^\markup "(후렴)" <e g>8 <f af>4 |
  <d f>2 s4 |
  s8 <g bf>4. <f af>4 |
  <ef g>8 <g bf>2^(_( q8^)_) \breathe |
  <f af>4. <e g>8 <f af>4 | \break
  
  <d f>2 s4 |
  s8 <g bf>4. <f af>4 |
  <ef g>2. \breathe |
  <g bf>4. <fs a>8 <g bf>4 |
  s2. | \break
  
  s2. |
  <g bf>8 <ef g>2^(_( q8^)_) \breathe |
  s2. |
  <g bf>4 <ef g> <e g> |
  <ef g>16[^(_( <d f>] <c ef>4.^)_) <d f>4 |
  <bf, ef>2. \bar "|."
}

alto = \fixed c' {
  \global
  s2. | s2. | <c' ef'>2 <bf d'>8 <af c'> | s2. | s2. |
  
  s2 <af c'>8 q | q s4. s4 | s2. | s2. | 
  <g ef'>2 <bf ef'>4 | <c' ef'>2 <bf d'>8 <af c'> |
  
  s2. | <af c'>2 <af d'>8 <af ef'> | s2. | s2. |s2. |
  
  s2. | s2 <af c'>8 q | q s2 s8 | s2. | s2. |
  
  s2 <af c'>8 q | q s4. s4 | s2. | s2. | 
  <g ef'>2 q8 q |
  
  <c' ef'>2 <bf d'>8 <af c'> | s2. | <af c'>2 <af d'>8 <af ef'> |
   s2. | s2. |s2. |
}

aligner = \fixed c' {
  \global
  <g bf>4. <fs a>8 <g bf>4 |
  <ef g>2 <g bf>4 |
  <c' ef'>2 <bf d'>8 <af c'> |
  <g bf>8 <ef g>2^(_( q8^)_) |
  <f af>4. <e g>8 <f af>4 | 
  
  <d f>2 <af c'>8 q |
  q <g bf>4. <f af>4 |
  <ef g>2. |
  <g bf>4. <fs a>8 <g bf>4 |
  <g ef'>2 <bf ef'>4 |
  <c' ef'>2 <bf d'>8 <af c'> | 
  
  <g bf>8 <ef g>2^(_( q8^)_) |
  <af c'>2 <af d'>8 <af ef'> |
  <g bf>4 <ef g> <e g> |
  <ef g>8 <c ef>4. <d f>4 |
  <bf, ef>2. 
  
  <f af>4. <e g>8 <f af>4 |
  <d f>2 <af c'>8 q |
  q <g bf>4. <f af>4 |
  <ef g>8 <g bf>2^(_( q8^)_) |
  <f af>4. <e a>8 <f af>4 |
  
  <d f>2 q8 q |
  q <g bf>4. <f af>4 |
  <ef g>2. |
  <g bf>4. <fs a>8 <g bf>4 |
  q2 q8 q |
  
  q2 q8 q |
  <g bf>8 <ef g>2^(_( q8^)_) |
  q2 q8 q |
  <g bf>4 <ef g> <e g> |
  <ef g>16[ <d f>] <c ef>4. <d f>4 |
  <bf, ef>2. 
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
  <ef ef'>4. <ef c'>8 <ef ef'>4 |
  <ef bf>2 <ef ef'>4 \breathe |
  <af, af c'>2 <af, af d'>8 <af, af ef'> |
  <ef ef'>8 <ef bf>2^(_( q8^)_) \breathe |
  <bf, d'>4. <bf, cs'>8 <bf, d'>4 |
  
  <bf, bf>2 \breathe <bf, d'>8 q |
  q q4. <bf, bf>4 |
  <ef bf>2. \breathe |
  <ef ef'>4. <ef c'>8 <ef ef'>4 |
  <ef bf>2 <g, g bf>4 \breathe |
  <af, af c'>2 <af, af d'>8 <af, af ef'> |
  
  <ef ef'>8 <ef bf>2^(_( q8^)_) \breathe |
  <af, af ef>2 <af, af d'>8 <af, af c'> |
  <ef ef'>4 <ef bf> <c bf> \breathe |
  <f a>2 <bf, af>4 |
  <ef g>2. |
  
  <bf, d'>4. <bf, cs'>8 <bf, d'>4 |
  <bf, bf>2 <bf, d'>8 q |
  q q4. <bf, bf>4 |
  <ef bf>8 <ef ef'>2^(_( q8^)_) \breathe |
  <bf, d'>4. <bf, cs'>8 <bf, d'>4 |
  
  <bf, bf>2 <bf, d'>8 q |
  q q4. <bf, bf>4 |
  <ef bf>2. \breathe |
  <ef ef'>4. <ef c'>8 <ef ef'>4 |
  <ef bf>2 <g, g bf>8 q |
  
  <af, af c'>2 <af, af d'>8 <af, af ef'> |
  <ef ef'>8 <ef bf>2^(_( q8^)_) \breathe |
  <af, af ef'>2 <af, af d'>8 <af, af c'> |
  <ef ef'>4 <ef bf> <c bf> |
  <f a>2 <bf, af>4 |
  <ef g>2. |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 위 해 우 리 힘 써 일 하 고
  주 오 실 날 임 박 함 전 할 때
  안 믿 는 다 고 실 망 치 마 라
  주 님 이 아 시 고 칭 찬 하 리
  
  내 가 는 길 모 두 다 지 난 후 에
  이 세 상 싸 움 이 다 끝 날 때
  주 님 을 의 지 한 내 믿 음 보 고
  주 님 이 잘 했 다 칭 찬 하 리
}

verseTwo = \lyricmode {
  \set stanza = "2."
  죄 악 에 눈 먼 무 지 한 사 람
  구 주 를 십 자 가 못 박 았 네
  지 금 도 주 님 구 하 는 소 리
  저 들 의 죄 "-" 를 사 하 소 서
}

verseThree = \lyricmode {
  \set stanza = "3."
  수 고 한 일 생 다 지 난 후 에
  달 려 갈 길 모 두 마 친 후 에
  우 리 를 위 해 예 비 한 곳 에
  주 우 리 반 "-" 겨 맞 으 시 리
}

verseFour = \lyricmode {
  주 위 해 우 리 시 달 림 받 고
  온 몸 이 상 처 로 아 파 올 때
  십 자 가 달 린 주 님 을 보 라
  주 님 이 아 시 고 칭 찬 하 리
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "신랑 신부 위하여"
engTitleB = "A Little Child May Know"
hymnNumberB = "772"
poetB = "Parish Choir"
composerB = "G. B. Pergolezi"
bibleInfoB = "마 19:6"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key d \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 2
}

sopranoB = \fixed c' {
  \globalB
  <d fs>4. <d g>8 |
  <d a>4 <fs d'> <e cs'> b |
  <fs a>2 \breathe <a, d>4. <cs e>8 |
  <d fs>4 <e a> <d g> <d fs> |
  <cs e>2 \breathe \break
  
  <d fs>4. <d g>8 |
  <d a>4 <fs d'> cs' b |
  <cs a>2 \breathe d4. <cs e>8 |
  <d fs>4 <d g> <d fs> <cs e> |
  d2 \bar "|."
}

alignerB = \sopranoB

altoB = \fixed c' {
  \globalB
  s2 | s2. d8[ e] | s1 | s1 | s2
  s2 | s2 e4. d8 | s2 d4. s8 | s1 | d2
}

tenorB = \fixed c {
  \globalB
  s2 | s2. b8[ cs'] | s2 fs4. s8 | s1 | s2
  s2 | fs4 s a s | a2 s | s1 | s2
}

bassB = \fixed c {
  \globalB
  <d a>4. <e a>8 |
  <fs a>4 <d a> <e g>8[ <fs a>] g4 |
  <d d'>2 \breathe fs4. <e g>8 |
  <d a>4 <a, cs'> <b, b> <d a> |
  <a, a>2 \breathe
  
  <d a>4. <e g>8 |
  fs4 <b, fs> cs8[ d] <e gs>4 |
  a4( g) \breathe <fs a>4. <e a>8 |
  <d a>4 <g, b> <a, a> <a, g> |
  <d fs>2 
}

verseOneB = \lyricmode {
  \set stanza = "1."
  하 나 님 께 빕 니 다
  신 랑 신 부 위 하 여
  모 든 복 을 내 리 사
  영 원 토 록 줍 소 서
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  하 나 님 께 빕 니 다
  이 두 사 람 도 우 사
  두 몸 이 하 나 되 어
  한 길 가 게 합 소 서
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  하 나 님 께 빕 니 다
  모 든 권 능 베 푸 사
  몸 된 교 회 지 체 로
  헌 신 하 게 합 소 서
}

verseFourB = \lyricmode {
  \set stanza = "4."
  세 상 에 서 살 동 안
  행 복 하 게 합 시 고
  천 국 복 락 누 릴 때
  함 께 하 게 합 소 서
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
