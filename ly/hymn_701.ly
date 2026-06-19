\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주 예수 밖에 뉘뇨"
engTitle = "Who Could It Be"
hymnNumber = "701"
poet = "Pred P. Morris"
composer = "Robert Harkness"
bibleInfo = "행 4:2"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \time 9/8
  % \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4.
}

soprano = \fixed c' {
  \global
  <df f>8 <ef gf> <e g> |
  <gf bf>4.^(_( <gf bf>4^)_) <f af>8 <gf c'>4 <ef gf>8 |
  <ef gf>2. <c ef>8 <df f> <ef gf> |
  <gf bf>4.^(_( <gf bf>4^)_) <gf c'>8 <f bf>4 <df f>8 |
  <df f>4.^(_( <df f>4^)_) b8\rest f8 g <f a>8 | %\break
  
  <f c'>4.^(_( <f c'>4^)_) f8 <f df'>8 <f df'>8. <ef c'>16 |
  <df bf>4.^(_( <df bf>4^)_) b8\rest <g ef'> <g bf> <g df'> |
  <af c'>4.^(_( <ef c'>4^)_) <c af>8 <df bf>4. |
  <c af>4.^(_( <gf af>4^)_) b8\rest \break af^\markup "(후렴)" bf c' |
  
  df'4.( df'4) ef'8 df' c' bf |
  af4.( af4) b8\rest <c ef> <df f> <ef gf> |
  <gf bf>4.^(_( <gf bf>4^)_) <gf c'>8 <gf bf>4. |
  <f af>4.^(_( <f af>4^)_) b8\rest af bf c' | %\break
  
  <f df'>4.^(_( <f df'>4^)_) d'8 f' ef' df' |
  <gf bf>4.^(_( <gf bf>4^)_) b8\rest <gf df'> <gf bf> <e df'> |
  <f af>4.^(_( <f af>8^)_)\fermata b8\rest df\fermata ef4. |
  df4.( df4) b8\rest \bar "|."
}

alto = \fixed c' {
  \global
  s4. |
  s2 s8 s2 |
  s2. s4.   |
  s4. s4 s2 |
  s4. s4 s8  f8 f s8 |
  
  s4. s4 f8 s4. |
  s4. s4 s8 s4. |
  s4. s4 s8 s4. |
  s4. s4 s8 f4. |
  
  f4.( f4.) gf4. |
  gf4.( gf4) s2 |
  s4. s4 s8 s4. |
  s4. s4 s8 f4. |
  
  s4. s4 f8\rest gf4. |
  s4. s4 s8 s4. |
  s4. s8 s8 df8 df4 c8 |
  df4.( df4) s8 
  
} 

tenor = \fixed c {
  \global
  s4. |
  s2 s8 s2 |
  s2. s4.   |
  s4. s4 s2 |
  s4. s4 s8  s4. |
  
  s4. s4 s8 s4. |
  s4. s4 s8 s4. |
  s4. s4 s8 s4. |
  s4. s4 d8\rest <ef af>4. |
  
  \stemUp af2. \stemDown <ef bf>4.| 
  <af c'>4.^(_( <af c'>4^)_) b8\rest af af af |
  <af c'>4.^(_( <af c'>4^)_) <af ef'>8 <df df'>4. |
  <df df'>4.^(_( <df df'>4^)_) b8\rest <df af> 4. |
  
  <df af>4.^(_( <f af>4^)_) <f bf>8 <ef bf>4. |
  <ef ef'>4.^(_( <ef ef'>4^)_) d8\rest <gf bf> <gf df'> <g bf> |
  <af df'>4.^(_( <af, df'>4^)_)\fermata d8\rest <af, f>\fermata <bf, g> <af, gf> |
  <df f>4.^(_( <df f>4^)_) d8\rest
}

bass = \fixed c {
  \global
  d4\rest d8\rest |
  df4. df'4. af4. |
  af,4. af4. d4\rest d8\rest |
  af,4. af4. df'4. |
  <df af>4. \stemUp df,4. d4\rest d8\rest |
  
  \stemDown <c a>4. \stemUp <f, a> \stemDown <bf, f>8 <bf, f>8. <f a>16 | 
  bf4. \stemUp bf,4. \stemDown <ef bf>8 <ef ef'> <ef bf> | 
  <ef ef'>4.^(_( <ef af>4^)_) <ef af>8 <ef g>4. |
  <af, ef>4.^(_( <af, af>4^)_) s2 |
  
  \stemDown df4._( af,)  s4. |
  s4. s4 s8 af af af |
  s4. s4. s4. |
  s4. s4. s4. |
}

verseOne = \lyricmode {
  \set stanza = "1."
  죄 중 에 빠 져 있 어 서 소 망 이 없 이 지 날 때 그 누 가
  나 를 구 원 했 나 주 예 수 밖 에 뉘 뇨 주 예 수 
  밖 에 누 구 시 뇨 주 예 수 밖 에 뉘 뇨 그 누 가
  나 를 구 원 했 나 주 예 수 밖 에 뉘 뇨
}

verseTwo = \lyricmode {
  \set stanza = "2."
  아 버 지 집 을 떠 나 서 예 수 의 사 랑 모 를 때 그 누 가
  나 를 권 면 했 나 주 예 수 밖 에 뉘 뇨
}

verseThree = \lyricmode {
  \set stanza = "3."
  갈 길 을 몰 라 애 쓸 때 온 유 한 음 성 가 지 고 그 누 가
  나 를 지 시 했 나 주 예 수 밖 에 뉘 뇨
}

verseFour = \lyricmode {
  \set stanza = "4."
  내 맘 에 낙 심 될 때 에 날 마 다 손 을 붙 잡 고 그 누 가
  나 를 위 로 했 나 주 예 수 밖 에 뉘 뇨
}

verseChorusTenorBass = \lyricmode {
  주 _____밖__에 뉘 뇨
  - - - - - - - 누 가 구 했 나
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {  
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    last-bottom-spacing.padding = #0
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
          \override StaffSymbol.staff-space = #(magstep -0.5)
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
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
    
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
        \context Lyrics = "LyrChorusTenorBass" \lyricsto "tenor" { \verseChorusTenorBass }
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

