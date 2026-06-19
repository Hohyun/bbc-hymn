\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "그날 닥아오네"
engTitle = "What a Day That Will Be"
hymnNumber = "810"
poet = "J. H."
composer = "Ji, Hill"
bibleInfo = "계 21:1-4"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key af \major
  \time 3/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

soprano = \fixed c' {
  \global
  <c ef>8 <df f> |
  <c af>2 q8 q |
  q2 q8 <df bf> |
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 %%\break
  
  <bf, g>8 <c af>8 |
  <df bf>2 q8 <c a> |
  <df bf>2 <c af>8 <df bf> |
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 <ef af>8 q | %%\break
  
  <f df'>4. q8 q q |
  q2 <f af>8 <ff bf> |
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 <bf, g>8 <c af> |
  <df bf>2 %%\break
  
  \tuplet 3/2 { <df bf>8 <ef c'> <f df'> } |
  <ef c'>2 <df bf>8 q |
  <c af>2.^(_( |
  q2^)_) \bar "||" %\break 
  
  <ef af>8^\markup "(후렴)" q |
  <f df'>2 q8 q |
  q2 <f af>8 <ff bf> | %%\break
  
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 <bf, g>8 <c af> |
  <df bf>4. <c a>8 <df bf> <c a> |
  <df bf>4. <c af>8 q <df bf> | %%\break
  
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 \breathe <ef af>8 q |
  <f df'>4. q8 q q |
  q4. <f af>8 q <ff bf> | %%\break
  
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 <bf, g>8 <c af> |
  <df bf>2 \tuplet 3/2 { q8 <ef c'> <f df'> } |
  <ef c'>2 <df bf>8 q |
  <c af>2.^(_( |
  <c af>2^)_) \bar "|."
}

alto = \fixed c' {
  \global
}

aligner = \soprano

tenor = \fixed c {
  \global
  s4 | <af, ef>2 q8 q | q2 q8 q | s4. <af, f>8 s q | <af, ef>2
  ef8 s | s2 s8 fs8 | s2 f8 s | s4. <af, f>8 s q8 | <af, ef>2 s4 |
  s2. | s2. | s4. <af, f>8 s q | <af, ef>2 ef8 s | s2
  s4 | s2. | <af, ef>2.^(_( | q2^)_) \bar "||" 
  
  %후렴
  s4 | s2. | s2. |
  s4. <af, f>8 s q | <af, ef>2 ef8 s | s4. fs8 s fs | s4. f8 8 s |
  s4. <af, f>8 s q | <af, ef>2 \breathe s4 | s2. | s2. |
  s4. <af, df>8 s q | <af, ef>2 ef8 s | s2. | s2. | <af, ef>2.^(_( | q2^)_) 
}

bass = \fixed c {
  \global
  <af, af>8 q | s2. | s2. | q4. s8 q s | s2
  
  ef8 <ef af> | 
  <ef g>2 q8 ef 8 | 
  <ef g>2 f8 <ef g> | 
  <af, af>4. s8 q s | 
  s2 <c af>8 q |
  
  <df af>4. q8 q q |
  q2 q8 q |
  <af, af>4. s8 q s |
  <af, ef>2 ef8 <ef af> |
  <ef g>2
  
  \tuplet 3/2 { <ef g>8 <ef af> <ef bf> } |
  <ef bf>2 <ef g>8 q |
  s2. | 
  s2
  
  %후렴
  <ef af>8 q |
  <df af>2 q8 q |
  q2 q8 q |
  
  <af, af>4. s8 q s |
  s2 ef8 <ef af> |
  <ef g>4. ef8 <ef g> ef |
  <ef g>4. f8 8 <ef g> |
  
  <af, af>4. s8 q s |
  s2 <c af>8 q |
  <df af>4. q8 q q |
  q4. q8 q q |
  
  <af, af>4. s8 q s |
  s2 ef8 <ef af> |
  <ef g>2 \tuplet 3/2 { q8 <ef af> <ef bf> } | 
  <ef af>2 <ef g>8 q |
  s2.
  s2
                        
}

verseOne = \lyricmode {
  \set stanza = "1."
  그 날 닥 아 오 네 
  가 슴 아 픈 일 없 고
  구 름 도 없 는 날
  눈 물 다 시 없 는 날
  행 복 한 저 강 변 에
  영 원 한 평 화 의 날
  얼 마 나 영 광 스 런 날 일 까

  얼 마 나 기 쁠 까
  구 주 예 수 만 날 때
  은 혜 로 날 구 원 한 
  주 의 얼 굴 만 나 보 리
  그 때 주 내 손 잡 고 
  약 속 한 땅 에 이 르 러
  얼 마 나 영 광 스 런 날 일 까
}

verseTwo = \lyricmode {
  \set stanza = "2."
  슬 픔 다 시 없 고 
  모 든 짐 다 벗 "-" 고
  질 병 과 아 픔 과 
  이 별 도 영 없 는 날
  나 를 위 해 죽 으 신
  주 와 영 영 살 리 라
  얼 마 나 영 광 스 런 날 일 까
}

verseThree = \lyricmode {
  \set stanza = "3."
}

verseFour = \lyricmode {
}

myChords = \chordmode {
}


\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 4\mm        
    %page-breaking = #ly:minimal-breaking
    page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    ragged-bottom = ##t
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
}
