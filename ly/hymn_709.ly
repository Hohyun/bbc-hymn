\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "진귀한 주님의 말씀"
engTitle = "Tell Me the Story of Jesus"
hymnNumber = "709"
poet = "Fanny J. Crosby, 1820~1915"
composer = "John P. Sweney, 1837~1899"
bibleInfo = "딤후 3:16-17"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  \repeat segno 2 {
  <ef g>4 q8. f16 ef4 q8. <f af>16 |
  <g bf>2 <ef g> \breathe |
  <f bf>4 <d f>8. <ef g>16 <f af>4 <ef g>8. <d f>16 |
  <ef g>2. b4\rest |
  
  <ef g>4 q8. q16 <ef af>4 <ef bf>8. <ef c'>16 |
  <ef bf>2 <ef g> \breathe |
  <f bf>4 <d f>8. <ef g>16 <f af>4 <ef g>8. <d f>16 |
  ef2. b4\rest |
  \fine
  
  <ef c'>4 q8. q16 <ef ef'>4 <ef d'>8. <af c'>16 |
  <af c'>2 <g bf> \breathe |
  <f bf>4 <af c'>8. <g bf>16 <f af>4 <d bf>8. <f af>16 |
  <ef g>2. b4\rest |
  
  <ef c'>4 q8. q16 <ef ef'>4 <ef d'>8. <af c'>16 |
  <af c'>2 <g bf> \breathe |
  <f af>4 <d f>8. <f d'>16 <f d'>8_( <ef c'>) <d bf>8. <ef a>16 |
  <d bf>2^(_( <f af>^)_) | \bar "||"
  }
}

alto = \fixed c' {
  \global
  s4 s8. ef16 ef4 s4 | s1 | s1 | s2. \set fontSize = #-3 \tuplet 3/2 {d8[ ef f] } \set fontSize = #0 |
  s1 | s1 | s1 | ef2. s4 |
  s1 | s1 | s1 | s2. \set fontSize = #-3 \tuplet 3/2 {ef8[ g bf] } \set fontSize = #0 |
}

tenor = \fixed c {
  \global
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  af4 8. 16 s2 | s1 | s1 | s1 |
  af4 8. 16 s2 | s1 | s2 bf8[ a] s4 | bf1 |
}

bass = \fixed c {
  \global
  \repeat segno 2 {
  <ef bf>4 q8. <ef af>16 <ef g>4 <ef bf>8. q16 |
  <ef ef'>2 <ef bf> \breathe |
  <bf, d'>4 <bf, bf>8. q16 q4 q8. q16 |
  <ef bf>2. d4\rest |
  
  <ef bf>4 <df bf>8. q16 <c af>4 <bf, g>8. <af, af>16 |
  <ef g>2 <ef bf> \breathe |
  <bf, d'>4 <bf, bf>8. q16 q4 q8. <bf, af>16 |
  <ef g>2. d4\rest
  \fine
  
  af4 8. 16 <af c'>4 q8. <af ef'>16 |
  <ef ef'>2 q \breathe |
  <bf, d'>4 q8. <bf, bf>16 q4 q8. q16 |
  <ef bf>2. d4\rest |
  
  af4 8. 16 <af c'>4 q8. <af ef'>16 |
  <ef ef'>2 q \breathe |
  <f d'>4 <f bf>8. q16 f4 <f bf>8. <f c'>16 | bf,1 |
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  진 귀 한 주 님 의 말 씀 내 맘 에 새 겨 주 오
  듣 던 중 반 가 운 소 식 들 어 도 또 새 롭 네
  주 예 수 탄 생 하 실 때 천 군 의 찬 송 소 리
  높 은 곳 하 나 님 영 광 땅 에 는 평 화 로 다
}

verseTwo = \lyricmode {
  \set stanza = "2."
  외 로 운 광 야 에 서 서 시 험 을 당 하 실 때
  마 귀 의 모 든 유 혹 을 말 씀 으 로 이 겼 네
  우 리 의 허 물 인 하 여 찔 림 을 당 하 시 고
  우 리 의 죄 악 인 하 여 큰 상 처 받 으 셨 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  세 상 죄 담 당 키 위 해 십 자 가 지 셨 으 나
  무 덤 의 권 세 깨 치 고 주 부 활 하 셨 도 다
  한 없 는 주 님 의 사 랑 성 령 이 증 거 하 네
  내 죄 를 대 속 한 은 혜 내 맘 에 사 무 치 네
}

verseFour = \lyricmode {
  \set stanza = "D.C."
  진 귀 한 주 님 의 말 씀 내 맘 에 새 겨 주 오
  듣 던 중 반 가 운 소 식 들 어 도 또 새 롭 네
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
            %\context NullVoice = aligner {
            %  \aligner
            %}
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
          
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
        
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
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
      \tempo 4 = 100
    }
  }
}

