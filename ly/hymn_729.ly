\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

\paper {
   #(set-paper-size '(cons (* 160 mm) (* 236 mm)))
   top-margin = 7\mm
   bottom-margin = 7\mm
}

% Hymn Info
korTitle = "굳게 잡아라 믿음"
engTitle = "Let Your Faith Hold Fast"
hymnNumber = "729"
poet = "C. H. Morris, 1862~1929"
composer = "C. H. Morris, 1862~1929"
bibleInfo = "마 11:28-30"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key df \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <f af>8 q |
  <f df'>4 q q8 <f af>8 df ef |
  <df f>4 <df gf> <df f> \breathe <f af>8 <f df'> | %\break
  
  <gf c'>4 q q8 s <gf bf> <gf c'> |
  <f df'>4 <e bf> <f af> \breathe s4 |
  <f df'>4 q q8 <f af> <df f> <f af> | %\break
  
  <gf bf>4 bf <gf bf>2 \breathe | 
  <g bf>8 q <fs a> <g bf> s4 <g bf>8 s8 | 
  <af c'>4 <g bf> <ef af>2 \breathe | %\break
  
  <f af>4.^\markup "(후렴)" <e g>8 <gf bf> <f af> <df f> df |
  <f af>4 <e g> <ef gf>2 \breathe |
  <ef gf>4. <c ef>8 <af c'> <gf bf> <f af> <ef gf> |
  <df f>4 <df bf> <df af>2 \breathe | %\break
  
  <f df'>4. <f af>8 <f ef'> <f df'> <f af> <df f> |
  ef4 <df bf> c'^( bf) \breathe |
  <f af>8 <f bf> <f c'> <f df'> <gf ef'>4 < gf c'> |
  df'2. \bar "|."
}

aligner = \fixed c' {
  \global
  <f af>8 q | 
  <f df'>4 q q8 <f af>8 df ef | 
  <df f>4 <df gf> <df f> <f af>8 <f df'> |
  
  <gf c'>4 q q8 <gf ef'>8 <gf bf> <gf c'> | 
  <f df'>4 <e bf> <f af> <af f'>8 <gf ef'> | 
  <f df'>4 q q8 <f af> <df f> <f af> |
  
  <gf bf>4 bf <gf bf>2 | 
  <g bf>8 q <fs a> <g bf> <g ef'>8 q <g bf>8 <bf df'> | 
  <af c'>4 <g bf> <ef af>2 | 
  
  <f af>4. <e g>8 <gf bf> <f af> <df f> df | 
  <f af>4 <e g> <ef gf>2 | 
  <ef gf>4. <c ef>8 <af c'> <gf bf> <f af> <ef gf> | <df f>4 <df bf> <df af>2  |
  
  <f df'>4. <f af>8 <f ef'> <f df'> <f af> <df f> |
  ef4 <df bf> c'^( bf) |
  <f af>8 <f bf> <f c'> <f df'> <gf ef'>4 < gf c'> |
  df'2.
}

alto = \fixed c' {
  \global
  s4 | s2. df8 8 | s1 |
  s2 s8 <gf ef'>8 s4 | s2. <af f'>8 <gf ef'> | s1 |
  s4 af4 s2 | s2 <g ef'>8 q s8 <bf df'> | s1 |
  s4. s2 df8 | s1 | s1 | s1 |
  s1 | df4 s4 e2 | s1 | f4 gf f
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 |
  s2. af8 af | s1 | s1 |
  s1 | s1 | s1 |
  s2. af4 | s1 | s1 | s1 |
  s1 | s2 bf4^( c') | s1 | df'4 bf af
}

bass = \fixed c {
  \global
  <df df'>8 q |
  <df af>4 q q8 q<df f> <df gf> |
  <df af>4 <df bf> <df af> \breathe q8 q |
  
  <ef af>4 q <af ef'>8 <af c'> af af |
  <df af>4 <df g> <df af> \breathe <df df'>8 q|
  <df af>4 q q8 q q q |
  
  <gf df'>4 <f d'> <ef ef'>2 \breathe |
  <ef ef'>8 q q q <ef bf> q <ef ef'> q |
  q4 <ef df'> <af, c'>2 \breathe |
  
  <df df'>8 q q q q4 df8[ f] |
  <af df'>8 q q q <af c'>2 \breathe |
  <af, af>8 q q q q4 q |
  <df af>8 q <df gf> q <df f>2 \breathe |
  
  <df af>4. q8 q q <df df'> <df af> |
  <gf bf>4 q g2 \breathe |
  <af df'>8 q q q <af c'>4 <af ef'> |
  df2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  검 은 구 를 그 대 앞 길 덮 느 뇨
  밤 의 어 둠 그 대 영 혼 휩 싸 뇨
  잠 시 후 에 풍 파 지 나 가 리 니
  낙 심 말 고 믿 음 굳 게 잡 아 라
  
  모 든 염 려 주 께 맡 기 고
  주 님 주 신 축 복 받 으 며
  세 상 풍 파 지 날 때 까 지
  굳 게 잡 아 라 믿 음
}

verseTwo = \lyricmode {
  \set stanza = "2."
  죄 의 짐 을 지 고 방 황 하 는 자
  너 의 원 수 물 리 칠 자 없 느 뇨
  영 원 쉼 을 주 가 주 시 리 로 다
  의 지 하 고 믿 음 굳 게 잡 아 라
}

verseThree = \lyricmode {
  \set stanza = "3."
  모 든 것 을 주 께 기 도 하 여 라
  슬 퍼 눈 물 흘 릴 때 도 그 대 는
  주 가 주 신 참 된 위 로 받 으 리
  단 련 받 은 믿 음 굳 게 잡 아 라
}

verseFour = \lyricmode {
  \set stanza = "4."
  배 의 노 를 굳 게 잡 아 당 겨 라
  만 세 반 석 위 에 닻 을 던 져 라
  잠 시 후 에 천 국 들 어 가 리 니
  가 기 까 지 믿 음 굳 게 잡 아 라
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
      \tempo 4 = 90
    }
  }
}

