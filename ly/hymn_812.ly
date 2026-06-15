\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "오! 주 없인 살수 없네"
engTitle = "Oh, I Could Not Live Without Him"
hymnNumber = "812"
poet = "Mrs. Ruth Caye Jones"
composer = "Mrs. Ruth Caye Jones"
bibleInfo = "요 15:1-6"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \numericTimeSignature
  \time 6/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <c f>8 <c g> |
  <f a>4. q8 q4 q2 <c g>8 <c f> |
  <c f>4 <c e> <c f> <e g>2 \breathe <e g>8 <e a> | %\break
  
  <e bf>4. q8 q4 q <e a> <e g> |
  <f a>2.^(_( q2^)_) \breathe q8 <e bf> |
  <f c'>4. q8 q4 q2 <f a>8 <c f> | %\break
  
  <f d'>4.^(_( q8^)_) q4 <f bf>2 \breathe q8^(_( q^)_) |
  <f a>4. q8 q4 <c g> <c f> <c g> |
  <c f>2.^(_( q2^)_) \bar "||" \break
  
  <f a>8[^\markup "(후렴)" <e bf>] |
  <f c'>4. q8 q4 q4. <f a>8 <c f>4 |
  <e g>2.^(_( q2^)_) \breathe q8 <f a> |
  <e bf>2 q4 <e d'> <e c'> <e bf> |
  <f a>2.^(_( q2^)_) \breathe %\break
  
  <f a>8 <e bf> |
  <f c'>4. q8 q4 q <f a> <c f> |
  <f d'>2. <f bf>2 \breathe q4 |
  <f a>4. q8 q4 <c g> <c f> <c g> |
  <c f>2.^(_( q2^)_) \bar "|."
}

aligner = \fixed c' {
  \global
  <c f>8 <c g> |
  <f a>4. q8 q4 q2 <c g>8 <c f> |
  <c f>4 <c e> <c f> <e g>2 <e g>8 <e a> | 
  
  <e bf>4. q8 q4 q <e a> <e g> |
  <f a>2.^(_( q2^)_) q8 <e bf> |
  <f c'>4. q8 q4 q2 <f a>8 <c f> | 
  
  <f d'>4. q8 q4 <f bf>2 q8 q |
  <f a>4. q8 q4 <c g> <c f> <c g> |
  <c f>2.^(_( q2^)_)
  
  <f a>8[ <e bf>] |
  <f c'>4. q8 q4 q4. <f a>8 <c f>4 |
  <e g>2.^(_( q2^)_) q8 <f a> |
  <e bf>2 q4 <e d'> <e c'> <e bf> |
  <f a>2.^(_( q2^)_) 
  
  <f a>8 <e bf> |
  <f c'>4. q8 q4 q <f a> <c f> |
  <f d'>2. <f bf>2 q4 |
  <f a>4. q8 q4 <c g> <c f> <c g> |
  <c f>2.^(_( q2^)_)
}

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
  <f a>8 <f bf> |
  <f c'>4. q8 q4 q2 <f bf>8 <f a> |
  <c a>4 <c g> <c a> <c bf>2 \breathe q8 <c a> |
  
  <c g>4. q8 q4 q <c c'> q |
  <f c'>2.^(_( q2^)_) \breathe q8 <g c'> |
  <a c'>4. q8 q4 <f a>2 <f c'>8 <f a> |
  
  <bf, bf>4.^(_( q8^)_) q4 <bf, d'>2 \breathe q8^(_( q^)_) |
  <c c'>4. q8 q4 <c bf> <c a> <c bf> |
  <f a>2.^(_( q2^)_)
  
  << { c'4 } \\ { f8[ g] } >> |
  <a c'>4. q8 q4 <f a>4. <f c'>8 <f a>4 |
  <c c'>2.^(_( q2^)_) \breathe q8 q |
  <c g>2 q4 <c bf> <c a> << { g8[ c'] } \\ { c4 } >> |
  <f c'>2.^(_( q2^)_) \breathe 
  
  <f c'>8 <g c'> |
  <a c'>4. q8 q4 <f a> <f c'> <f a> |
  <bf, bf>2. <bf, d'>2 \breathe q4 |
  <c c'>4. q8 q4 <c bf> <c a> <c bf> |
  <f a>2.^(_( q2^)_)
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 맘 속 에 있 는 참 된 이 평 화 는
  누 구 도 앗 아 갈 수 없 네 __
  주 님 은 내 맘 에 구 주 되 "-" 셨 네
  오 "-" 주 없 인 살 수 없 네 __

  오__ 주 없 인 살 수 없 네 __
  주 님 만 구 원 하 시 네 __
  주 님 없 는 세 상 평 화 없 네
  오 주 없 인 살 수 없 네 __
}

verseTwo = \lyricmode {
  \set stanza = "2."
  평 화 없 는 세 상 고 통 과 싸 움 뿐
  사 람 들 은 무 서 워 떠 네 __
  평 화 의 왕 "-" 이 다 시 올 때 까 지
  죄 와 전 쟁 은 끝 이 없 네 __
}

verseThree = \lyricmode {
  \set stanza = "3."
}

verseFour = \lyricmode {
  \set stanza = "4."
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

