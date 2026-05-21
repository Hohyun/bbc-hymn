\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "우리들을 지키는 주 있네"
engTitle = "Will Your Anchor Hold"
hymnNumber = "727"
poet = "Priscila J. Owen, 1829~1899"
composer = "Wm. J. Kirkpatrick, 1838~1921"
bibleInfo = "히 6:19"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <c f>8. <c g>16 |
  <f a>4 <c f> d <d g>8. q16 |
  <c f>4 < c e> <c f>\fermata \breathe <f a>8. q16 | %\break
  
  <e g>4 q <e c'> <c e>8 <d f> |
  <c e>4 <b, d> c\fermata \breathe \break c8. 16 |
  <c f>4 <f a> <e g> c8. 16 | %\break
  
  <e g>4 <g bf> <f a> \breathe <c f>8. <f a>16 |
  <f c'>4 <ef c'> c'8[ bf] f[ g] |
  <f a>4 <e g> <c f>2 \breathe | \break
  
  <f c'>4^\markup "(후렴)" q8. q16 q8 q4 q8 |
  <f d'>4 <f c'> q2 \breathe |
  <f a>4 q8 8 <f c'>4 q8. <f a>16 |
  f4 <f a> <e g>2 \breathe | %\break
  
  <f c'>8 q q8. q16 q4 <f a> |
  <f bf> <f c'> <f d'>2 \breathe |
  <c c'>8 q a f c4 <f bf>8. q16 |
  <f a>4 <e g> <c f>\fermata \bar "|."
}

aligner = \soprano

alto = \fixed c' {
  \global
  s4 | s2 d4 s4 | s1 |
  s1 | s2 c4 8. 16 | s2. c8. 16 |
  s1 | s2 d4 f | s1 |
  s1 | s1 | s1 | f4 s2. |
  s1 | s1 | s4 a8 f c4 s4 | s2. 
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 |
  s1 | g4 <g, f> <c e>\fermata \breathe s4 | s1 | 
  s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | c'8 8 a f c4 s4 | s2 <f, f a>4\fermata 
}

bass = \fixed c {
  \global
  <f a>8. <f bf>16 |
  <f c'>4 <f a> <bf, f> <bf, bf>8. q16 |
  <c a>4 <c g> <f a>\fermata \breathe <f c'>8. q16 |
  
  <c c'>4 q <c g> q8 <f a> |
  g4 s2 <e bf>8. q16 |
  <f a>4 <f c'> <c c'> q8. q16 |
  
  <c c'>4 q <f c'> \breathe <f a>8. <f c'>16 |
  <f a>4 q < bf, f> <bf, d'> |
  <c c'> <c bf> <f a>2 \breathe |
  
  <f a>4 q8. q16 q8 q4 q8 |
  <f bf>4 <f a> q2 \breathe |
  <f c'>4 q8 q <f a>4 q8. q16 |
  <a c'>4 <f c'> <c c'>2 \breathe |
  
  <f a>8 q8 q8. q16 q4 <ef c'> |
  <d bf> <c a> <bf, bf>2 \breathe |
  c'8 8 a f c4 <bf, d'>8. q16 |
  <c c'>4 <c bf> s4 \bar "|." 
}

bassb = \fixed c {
  \global
  s4 | s1 | s1 |
  s1 | s1 | s1 | 
  s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | 
  \override NoteHead.font-size = #-3
   c8 8 a,8 f,  
  \revert NoteHead.font-size
  s2 | s2. 
}

verseOne = \lyricmode {
  \set stanza = "1."
  풍 랑 이 일 고 바 람 이 불 때
  그 대 는 닻 을 쥐 고 섰 는 가
  거 센 조 수 가 몰 려 올 때 도 
  요 동 함 이 없 이 서 있 나
}

verseTwo = \lyricmode {
  \set stanza = "2."
  모 진 비 바 람 부 닥 쳐 와 도
  주 님 손 안 에 붙 들 려 있 네
  노 도 광 풍 이 일 어 날 때 도
  우 리 탄 배 요 동 챦 겠 네
  
  큰 물 결 일 때 도 우 리 의
  영 혼 을 지 키 는 주 있 네
  변 함 없 는 주 의 사 랑 이
  우 리 들 을 늘 지 키 고 있 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  우 리 의 눈 이 어 둠 을 뜷 고
  빛 나 는 천 성 항 구 찾 아 서
  우 리 가 거 할 천 국 해 안 에
  닻 줄 영 원 토 록 매 겠 네 
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
            \context NullVoice = aligner {
             \aligner
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
    
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
              \context Voice = bassb {
                \voiceTwo
                \bassb
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
      \tempo 4 = 90
    }
  }
}

