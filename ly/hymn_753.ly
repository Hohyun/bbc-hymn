\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% Hymn Info
korTitle = "내 영혼에 기쁨주신 주님"
engTitle = "All That Thrills My Soul"
hymnNumber = "753"
poet = "Thoro Harris, 1874~1955"
composer = "Thoro Harris, 1874~1955"
bibleInfo = "요 15:11-12"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>4. q8 <ef g> <d f> <bf, d> <d f> |
  <ef g>2 <ef bf> \breathe|
  <ef a>4. <ef g>8 f <ef g> <ef a> <ef c'> |
  <d bf>2. b4\rest | \break
  
  <d f>4. q8 <ef g> <d f> <bf, d> <d f> |
  <ef g>2 <ef bf> \breathe |
  <ef a>4. <ef g>8 f <ef g> <ef a> <ef c'> |
  <d bf>2. b4\rest | \break
  
  <f d'>4.^\markup "(후렴)" q8 <fs c'> q <g bf> q |
  <fs a>2 g \breathe |
  <e c'>4. <e d'>8 <e c'> <e bf> <e a> <e g> |
  f2. b4\rest | \break
  
  <d f>4. q8 <d g> <d f> <bf, d> <bf, f> |
  <bf, g>2 <ef bf> \breathe |
  <ef a>4. <ef g>8 f <ef g> <ef a> <ef c'> |
  <d bf>2. b4\rest \bar "|." |
}

aligner = \soprano

alto = \fixed c' {
  \global
  s1 | s1 | s2 ef8 s4. | s1 |
  s1 | s1 | s2 ef8 s4. | s1 |
  s1 | s2 g4( f) | s1 | f4( d ef) s4 |
  s1 | s1 | s2 ef8 s4. | s1 |
}

tenor = \fixed c {
  \global
  s1 | s2 c' | s2 s8 g f s | s1 |
  s1 | s2 c' | s2 s8 g f s | s1 |
  bf4. 8 s2 | s1 | s1 | a4 bf c' s |
  s1 | s2 g4( gf) | f4. g8 s2 | s1 |
}

bass = \fixed c {
  \global
  <bf, bf>4. q8 q q <bf, f> <bf, af> |
  <ef g>2 g4( gf) \breathe |
  <f c'>4. <f bf>8 <f a> f f <f bf> |
  <bf, bf>2. d4\rest |
  
  <bf, bf>4. q8 q q <bf, f> <bf, af> |
  <ef g>2 g4(gf) \breathe |
  <f c'>4. <f bf>8 <f a> f f <f a> |
  <bf, bf>2. d4\rest |
  
  bf4. 8 <a d'> q q q |
  <d c'>2 <ef bf>4^(_( <d b>^)_) \breathe |
  <c bf>4. q8 <c g> <c d'> <c c'> <c bf> |
  f2. d4\rest |
  
  <bf, bf>4. q8 <bf, af> q q <d af> |
  <ef g>2 c \breathe |
  f4. 8 <f a> <f bf> <f c'> <f a> |
  <bf, bf>2. d4\rest \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  능 력 있 는 예 수 처 럼 
  누 가 내 게 힘 주 랴
  진 실 하 고 부 드 럽 고
  맑 고 귀 한 나 의 주
}

verseTwo = \lyricmode {
  \set stanza = "2."
  풍 성 하 신 주 의 사 랑
  측 량 못 할 주 은 혜
  하 늘 보 다 높 은 자 비
  바 다 보 다 더 깊 다
}

verseThree = \lyricmode {
  \set stanza = "3."
  죄 사 하 는 크 신 비 밀 
  누 가 가 히 알 리 요
  주 홍 같 이 붉 은 내 죄
  눈 보 다 희 어 졌 네
  
  내 영 혼 에 기 쁨 주 신
  생 명 보 다 귀 한 주
  만 물 보 다 귀 한 주 님
  하 늘 생 명 주 셨 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  세 상 만 물 모 든 것 이
  주 의 만 드 신 바 니
  내 게 필 요 한 것 알 고
  아 낌 없 이 주 시 네
}

verseFive = \lyricmode {
  \set stanza = "5."
  구 속 받 은 성 도 함 께
  예 비 하 신 처 소 에
  영 원 토 록 찬 양 하 며
  왕 께 영 광 돌 리 리
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
    ragged-last-bottom = ##f
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
        \context Lyrics = "LyrFive" \lyricsto "aligner" { \verseFive }
    
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

