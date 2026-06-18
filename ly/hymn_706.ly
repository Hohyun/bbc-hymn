\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주님 다시 세상에 오실 때"
engTitle = "There'll be No Dark Valley"
hymnNumber = "706"
poet = "Willam O. Cushing, 1823~1902"
composer = "Ira D. Sankey, 1840~1908"
bibleInfo = "살전 4:16-17"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 4/4
  %\tempo 4 = 90
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

aligner = \fixed c' {
  \global
  ef8. f16 |
  <ef g>4 bf, bf,8 bf,4 bf,8 |
  <af, c>4 <c ef> <bf, ef> \breathe <bf, ef>8. <bf, f>16 |
  <ef g>4 <g bf> %\break
  
  <af c'>8 <g bf>4 <ef g>8 |
  <ef g>4 <d f> <d f> \breathe ef8. f16 |
  <ef g>4 bf, bf,8 bf,4 bf,8 |
  <af, c>4 <c ef> \breathe %\break
  
  <bf, ef>4 <d g> |
  <ef g>8 <ef bf>4 ef8 <ef g>4 <d f>4 |
  <bf, ef>2. \breathe \bar "||" <ef g>4^\markup "(후렴)" |
  <ef bf>8 <ef bf>4 <ef bf>8 c'[ bf] <ef g>4 | %\break
  
  bf4 d ef \breathe g8.[ af16] |
  <ef bf>8 <ef bf>4 \stemDown <g ef'>8 \stemUp <f d'>4 <ef c'> |
  bf4 d ef \breathe <d bf>8. <d c'>16 | %\break
  
  <ef bf>4 <bf, ef> <bf, g>8 <bf, g>4 bf,8 |
  <af, c>4 <c ef> <bf, ef> \breathe <d f> |
  <ef g>8 <ef bf>4 ef8 <ef g>4 <d f> |
  <bf, ef>2. \bar "|."
}

soprano = \fixed c' {
  \global
  ef8. f16 |
  <ef g>4 bf, bf,8 bf,4 bf,8 |
  <af, c>4 <c ef> <bf, ef> \breathe <bf, ef>8. <bf, f>16 |
  <ef g>4 <g bf> %\break
  
  <af c'>8 <g bf>4 <ef g>8 |
  <ef g>4 <d f> <d f> \breathe ef8. f16 |
  <ef g>4 bf, bf,8 bf,4 bf,8 |
  <af, c>4 <c ef> \breathe %\break
  
  <bf, ef>4 <d g> |
  <ef g>8 <ef bf>4 ef8 <ef g>4 <d f>4 |
  <bf, ef>2. \breathe \bar "||" <ef g>4^\markup "(후렴)" |
  <ef bf>8 <ef bf>4 <ef bf>8 c'[ bf] <ef g>4 | %\break
  
  bf2. \breathe g8.[ af16] |
  <ef bf>8 <ef bf>4 \stemDown <g ef'>8 \stemUp <f d'>4 <ef c'> |
  bf2. \breathe <d bf>8. <d c'>16 | %\break
  
  <ef bf>4 <bf, ef> <bf, g>8 <bf, g>4 bf,8 |
  <af, c>4 <c ef> <bf, ef> \breathe <d f> |
  <ef g>8 <ef bf>4 ef8 <ef g>4 <d f> |
  <bf, ef>2. \bar "|."
}

alto = \fixed c' {
  \global
  ef8. ef16 | s4 bf,4 bf,8 bf,4 bf,8 | s1 | s2
  
  s2 | s2. ef8. ef 16 | s4 bf, bf,8 bf,4 bf,8 | s2
  
  s2 | s4. ef8 s2 | s1 | s2 ef4 s4 |
  
  ef4 d ef ef | s4. s8 s2 | d4 f ef s4 |
  
  s2 s4. bf,8 | s1 |s4. ef8 s2 | s2.
}

tenor = \fixed c {
  \global
  s4 | s2 s4. <g, c>8 | <af, ef>4 s2. | s2
  
  s2 | s1 | s1 | s2
  
  s2 | s1 | s1 | s2 af8[ g] s4 |
  
  s2. bf8.[ af16] | s1 | bf4 af g s |
  
  s2 ef8 ef4 <g, ef>8 | <af, ef>4 s2. | s1 | s2.
}

bass = \fixed c {
  \global
  <ef g>8. <ef af>16 |
  <ef bf>4 <ef g> <ef g>8 <ef g>4 s8 |
  s4 <af, af> <ef g> \breathe <ef g>8. <ef af>16 |
  <ef bf>4 <ef ef'> 
  
  <ef ef'>8 <ef ef'>4 <ef bf>8 |
  <bf, bf>4 <bf, bf> <bf, bf> \breathe <ef g>8. <ef af>16 |
  <ef bf>4 <ef g> <ef g>8 <ef g>4 <g, ef>8 |
  <af, ef>4 <af, af>4 \breathe
  
  <g, bf>4 <bf, bf> |
  <ef bf>8 <ef g>4 <c g>8 <bf, bf>4 <bf, af> |
  <ef g>2. \breathe \bar "||" <ef bf>4 |
  <ef g>8 <ef g>4 <ef g>8 ef4 <ef bf> |
  
  <ef g>4 <f af> <g bf> \breathe ef |
  <ef g>8<ef g>4 <c bf>8 <f bf>4 <f a> |
  bf,2. \breathe <bf, f>8. <bf, af>16 |
  
  <ef g>4 <ef g> ef8 ef4 s8 |
  s4 <af, af> <g, bf> \breathe <bf, bf> |
  <ef bf>8 <ef g>4 <c g>8 <bf, bf>4 <bf, af> |
  <ef g>2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 님 다 시 세 상 에 오 실 때 어 둔 그 늘
  다 시 는 없 겠 네 영 광 스 런 그 날 이 오 면
  주 님 나 를 데 려 가 리 
  %나 그 날 을 고_대 하 {\once \override LyricText.self-alignment-X = #LEFT "네 (그 날)"}  주 다 시 오 실 그 {\once \override LyricText.self-alignment-X = #LEFT "날 (그 날)"}
  나 그 날 을 고_대 하 네 (그 날) 주 다 시 오 실 그 날 (그 날)
  어 둔 그 늘 다 시 는 없 겠 네 주 다 시 오 실 그 날 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 님 다 시 세 상 에 오 실 때 모 든 슬 픔
  다 시 는 없 겠 네 영 광 스 런 그 날 이 오 면
  주 님 나 를 데 려 가
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 님 다 시 세 상 에 오 실 때 모 든 울 음
  다 시 는 없 겠 네 영 광 스 런 그 날 이 오 면
  주 님 나 를 데 려 가
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 님 다 시 세 상 에 오 실 때 기 쁜 노 래
  부 르 며 맞 으 리 영 광 스 런 그 날 이 오 면
  주 님 나 를 데 려 가
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
            \context NullVoice = aligner {
              \aligner
            }
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
    
        \context Staff = lower \with {
          \override StaffSymbol.staff-space = #(magstep -0.5)
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

