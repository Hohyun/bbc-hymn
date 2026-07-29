\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "내 맘속에 울리는 노래"
engTitle = "In My Heart There Rings a Melody"
hymnNumber = "787"
poet = "Elton M. Roth, 1891~1951"
composer = "Elton M. Roth, 1891~1951"
bibleInfo = "엡 5:19-21"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key af \major
  \numericTimeSignature
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 16*5
}

soprano = \fixed c' {
  \global
  <ef c'>16 <d b>8. <ef c'>16 |
  <f df'>4 < ef g> <ef c'> <df bf> |
  <c af> <c ef>2 \breathe <c ef>8. <c af>16 |
  <df g>4 <df f> %\break
  
  ef4 <f df'> |
  <ef c'>2^(_( q8.^)_) \breathe q16 <d b>8. <ef c'>16 |
  <f df'>4 <ef g> <g c'> <g bf> |
  <f af>8. <f bf>16 <f c'>2 \breathe <af c'>8. q16 | %\break
  
  <g bf>4 q <af c'> <af d'> |
  s2. f'4\rest \bar "||" | \break
  s4^\markup "(후렴)" <f df'> <ef c'> <df bf> |
  <c af>8. <df bf>16 <ef c'>8. <c af>16 <c ef>4 \breathe %\break
  
  <c ef>4 |
  ef8. <df f>16 <df g>8. <df f>16 ef4 4 |
  <c ef>8. <c f>16 <c af>8. <c f>16 <c ef>4 f'4\rest |
  s4 <f df'> %\break
  
  <ef c'>4 <df bf> |
  <c af>8. <df bf>16 <ef c'>8. <c af>16 <c ef>4 \breathe q |
  ef8. f16 <df g>8. <df f>16 ef4 <df bf> |
  <c af>2^(_( q8.^)_) \bar "|."
}

aligner = \fixed c' {
  \global
  <ef c'>16 <d b>8. <ef c'>16 |
  <f df'>4 < ef g> <ef c'> <df bf> |
  <c af> <c ef>2 <c ef>8. <c af>16 |
  <df g>4 <df f> 
  
  ef4 <f df'> |
  <ef c'>2^(_( q8.^)_) q16 <d b>8. <ef c'>16 |
  <f df'>4 <ef g> <g c'> <g bf> |
  <f af>8. <f bf>16 <f c'>2 <af c'>8. q16 | 
  
  <g bf>4 q <af c'> <af d'> |
  q2. f'4\rest  |
  q4 <f df'> <ef c'> <df bf> |
  <c af>8. <df bf>16 <ef c'>8. <c af>16 <c ef>4 
  
  <c ef>4 |
  ef8. <df f>16 <df g>8. <df f>16 ef4 4 |
  <c ef>8. <c f>16 <c af>8. <c f>16 <c ef>4 f'4\rest |
  q4 <f df'> 
  
  <ef c'>4 <df bf> |
  <c af>8. <df bf>16 <ef c'>8. <c af>16 <c ef>4 q |
  ef8. f16 <df g>8. <df f>16 ef4 <df bf> |
  <c af>2^(_( q8.^)_)
}

alto = \fixed c' {
  \global
  s16 s4 | s1 | s1 | s2
  
  df4 s | s1 | s1 | s1 |
  
  s1 | <g ef'>2. \tiny \tuplet 3/2 { ef8[ g bf] } \normalsize |
  
  <g ef'>4 s2. | s2.
  s4 df8. s16 s4 df4 4 |
  s2. \tiny \tuplet 3/2 { af8[ bf c'] } \normalsize |
  <g ef'>4 s 
  
  s2 | s1 | df8. s16 s4 df4 s | s2 s8.
}

tenor = \fixed c {
  \global
  s16 s4 | s1 | s2. s8. <g, ef>16 | <bf, ef>4 q
  
  s2 | s1 | s1 | s1 |
  s1 | s1 | s1 | s2.
  s4 | s1 | s4 <af, ef>8. <af, f>16 s2 | s2
  s2 | s1 | s2. ef4 |
  <af, ef>2^(_( q8.^)_)
}

bass = \fixed c {
  \global
  <af, af>16 q8. q16 |
  <ef g>4 <ef bf> <ef af> <ef g> |
  <af, af>4 q2 \breathe q8. s16 |
  s2
  
  <ef g>4 q |
  <af, af>2^(_( q8.^)_) \breathe q16 q8. q16 |
  <ef g>4 <ef bf> <ef ef'> <e df'> |
  <f c'>8. <g c'>16 <af c'>2 \breathe <f d'>8. q16 |
  
  <g ef'>4 <ef ef'> <bf, d'> <bf, bf> |
  <ef bf>2. d4\rest |
  <ef bf>4 <ef g> <ef af> <ef g> |
  <af, af>8. q16 q8. q16 q4 \breathe
  
  <af, af>4 |
  <ef g>8. <ef af>16 <ef bf>8. <ef af>16 <ef g>4 q |
  <af, af>8. q16 s4 <af, af>4 d4\rest |
  <ef bf>4 <ef g>
  
  <ef af>4 <ef g> |
  <af, af>8. q16 q8. q16 q4 \breathe q |
  <ef g>8. <ef af>16 <ef bf>8. <ef af>16 <ef g>4 ef |
  s2 s8.
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 예 수 내 게 주 신 노 래
  귀 한 천 국 의 보 배
  이 세 상 어 떤 노 래 보 다 도
  더 욱 귀 한 노 랠 세
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 모 든 죄 를 속 하 시 려
  주 님 죽 음 당 했 네
  이 크 신 사 랑 노 래 되 어 서
  나 의 맘 을 감 동 해

  내 맘 속 에 울 리 는 음 성
  이 넘 치 는 기 쁨 
  저 천 국 의 화 음 
  내 맘 속 에 울 리 는 음 성
  저 속 삭 이 는 주 음 성
}

verseThree = \lyricmode {
  \set stanza = "3."
  내 평 생 주 를 찬 미 할 때
  천 사 도 화 답 하 니
  영 광 의 주 님 다 시 오 실 때
  이 노 래 로 맞 으 리
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

