\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 얼굴을 바라보라"
engTitle = "Turn Your Eyes Upon Jesus"
hymnNumber = "720"
poet = "Helen H. Lemmel, 1864"
composer = "Helen H. Lemmel, 1864"
bibleInfo = "골 3:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

aligner = \fixed c' {
  \global
  <f a>4 | 
  q <f gs> <f a> | 
  <f c'> <f b> <ef a> | 
  <d a>2. | 
  <d g>2 d4 | 
  <c f> <c e> <c f> |
  
  <e a> <e g> c |
  <f a>2.^(_( |
  q2^)_) q8 q8 |
  <f a>4 <f gs> <f a> |
  <f d'> <f c'> <f a> |
  q2. |
  g2 <e g>4 |
  
  <f a> <d b> <ds c'> |
  e <c f> <b, d> |
  c2.^( |
  c2) b4\rest |
  <c a>2 q4 |
  <e c'>4. <e a>8 <e g>4 |
  f2. |
  f2 
  
  f4 |
  <d bf> q q |
  <d d'> <d bf> <d a> |
  g2.^( |
  g2) <f a>8 <f bf> |
  <f c'>2 <e c'>4 | 
  
  <f c'> <f a> <e g> |
  f2 4 |
  <d f>2  f8 g |
  <f a>4. <e g>8 <f a>4 |
  <e bf> <e a> <e g> |
  <c f>2.^(_( |
  q2^)_)
}

alignerb = \fixed c' {
  s4  | s2. | s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. | s2. | 
  s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2
  s4  | s2. | s2. | f4 e f | g2 s4  | s2. | 
  s2. | s2. | s2. | s2. | s2. | s2. | s2
}

soprano = \fixed c' {
  \global
  <f a>4 |
  q <f gs> <f a> |
  <f c'> <f bf> <ef a> |
  <d a>2. |
  <d g>2 \breathe d4 |
  <c f> <c e> <c f> | %\break
  
  <e a> <e g> c |
  <f a>2.^(_( |
  q2^)_) \breathe q8 q8 |
  <f a>4 <f gs> <f a> |
  <f d'> <f c'> <f a> |
  q2. |
  g2 \breathe <e g>4 | %\break
  
  <f a> <d b> <ds c'> |
  e <c f> <b, d> |
  c2.^( |
  c2) b4\rest |
  <c a>2^\markup "(후렴)" q4 |
  <e c'>4. <e a>8 <e g>4 |
  f2. |
  f2 \breathe %\break
  
  f4 |
  <d bf> q q |
  <d d'> <d bf> <d a> |
  g2.^( |
  g2) \breathe <f a>8 <f bf> |
  <f c'>2 <e c'>4 | %\break
  
  <f c'> <f a> <e g> |
  f2 4 |
  <d f>2 \breathe f8 g |
  <f a>4. <e g>8 <f a>4 |
  <e bf> <e a> <e g> |
  <c f>2.^(_( |
  q2^)_) \bar "|."
}

alto = \fixed c' {
  \global
  s4 | s2. | s2. | s2. | s2 d4 | s2. |
  s2 c4 | s2. | s2. | s2. | s2. | s2. | g2 s4 |
  s2. | e4 s2 | c2._( | c2) s4 | s2. | s2. | f2. | ef2
  ef4 | s2. | s2. | d4 c d | s2. | s2. |
  s2. | f2 ef4 | s2 f8 8 | s2. | s2. | s2. | s2
}

tenor = \fixed c {
  \global
  s4  | s2. | s2. | f2^( fs4) | s2. | s2. |
  s2. | s2. | s2. | s2. | s2. | s2. | s2. | 
  s4 g4 s4  | s2 <g, f>4 | s2. | s2. | f2 f4 | s2. | s2. | s2
  s4  | s2. | s2. | f4 e f | g2 f8 g | s2. | 
  s2. | s2. | s2. | s2. | s2. | s2. | s2
}

bass = \fixed c {
  \global
  <f c'>4 |
  q <f b> <f c'> |
  <f a> <d f> <c f> |
  bf,2. |
  <bf, g>2 \breathe <bf, bf>4 | 
  <c a>4 <c g> <c a> |
  
  <c c'> <c bf> <e g> |
  <f c'>2.^(_( |
  q2^)_) \breathe q8 q8 |
  q4 <f b> <f c'> |
  <f bf> <f a> <f c'> |
  <d b>2. |
  <e c'>2 \breathe <c c'>4 |
  
  <f c'> f <fs a> |
  <f c'> <d a> s4 |
  <c e>2 ^(_( <d f>4 |
  <e g>2^)_) d4\rest |
  f2 4 |
  <c g>4. <c c'>8 <c bf>4 |
  <d a>2. |
  <c a>2 \breathe
  
  <f a>4 |
  <bf, bf> <bf, a> <bf, g> |
  <bf, f> <bf, g> <b, f> |
  c2._( |
  c2_) \breathe f8 8 |
  <f a>2 <g bf>4 |
  
  <a c'> <f c'> <cs bf> |
  <d a>2 <c a>4 |
  <bf, bf>2 \breathe <d a>8 <df bf> |
  <c c'>4. q8 q4 |
  <c d'> <c c'> <c bf> |
  <f a>2.^(_( |
  q2^)_) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  너 어 둠 에 헤 매 는 이 여 
  큰 실 망 과 곤 함 있 나
  구 주 예 수 가 너 를 부 르 니
  곧 영 원 한 쉼 얻 으 라 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  사 망 에 서 부 활 한 주 님
  우 리 의 첫 열 매 되 사
  죄 의 속 박 을 풀 어 주 시 고
  늘 이 김 이 되 시 도 다
  
  너 의 눈 을 들 어 서 
  주 얼 굴 을 바 라 보 라
  주 의 영 광 은 혜 의 빛 속 에
  모 든 근 심 이 사 라 지 리
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 언 약 은 불 변 하 시 니
  믿 는 자 를 지 키 시 네
  멸 망 세 상 에 널 리 나 가 서
  큰 구 원 을 고 하 여 라
}

verseExtra = \lyricmode {
  (바 라 보 라)
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
            \context NullVoice = alignerb {
             \alignerb
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrExtra" \lyricsto "alignerb" { \verseExtra }
    
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

