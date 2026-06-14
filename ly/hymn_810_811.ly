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
  <c af>2 \break
  
  <bf, g>8 <c af>8 |
  <df bf>2 q8 <c a> |
  <df bf>2 <c af> <df bf> |
  <ef c'>4. <d b>8 <ef c'> <df bf> |
  <c af>2 <ef af>8 q |
}

alto = \fixed c' {
  \global
}

aligner = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
}

bass = \fixed c {
  \global
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


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "찬송하라 주의 크신 사랑"
engTitleB = "When We All Get to Heaven"
hymnNumberB = "811"
poetB = "E. E. Hewitt"
composerB = "Mrs. J. G. Wilson"
bibleInfoB = "요 14:1-3"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key df \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  %\partial 8
}

sopranoB = \fixed c' {
  \globalB
  <f af>4 q q <f df'> |
  <df f>8 <ef g> <f af> <gf bf> <f af>4 <df f> |
  <ef gf>4 q q8 <df f> <c ef> <df f> |
  <ef gf>4 <c af> <df f>2 | \break
  
  <f af>4 <f df'> q <f af> |
  <gf bf> \stemDown <gf df'> q \stemUp <e bf> |
  <f af>4 <f df'> df'8. c'16 bf8. c'16 |
  df'2. \break
  
  f8.^\markup "(후렴)" af16 |
  df'2. <af c'>8. <gf bf>16 |
  <f af>2 <df f>4 af8. 16 |
  df'4 8. 16 8. 16 c'8. df'16 |
  ef'2. \break
  
  af8. df'16 |
  f'2. \stemDown <af df'>4 |
  <gf df'>2 \stemUp <gf bf>4 <e bf> |
  <f af> <f df'> df'8. c'16 bf8. c'16 |
  df'2( 2) \bar "|." |
}

alignerB = \sopranoB

alignerBB = \fixed c' {
  \globalB
  s1 | s1 | s1 | s1
  s1 | s1 | s1 | s2.
  
  s4 | s4 df8. 16 4 s4 | s1 | s4 f8. 16 4 8. 16 | 8. 16 8. 16 4
  s4 | s4 df8. 16 4 s4 | s1 | s2 af4 q | df8. 16 8. 16 2 |
}

altoB = \fixed c' {
  \globalB
  s1 | s1 | s1 | s1
  s1 | s1 | s1 | f4 gf f
  
  a,4\rest |
  c4\rest f8. 16 4 s4 | 
  s2. c4\rest |
  c4\rest af8. 16 g4 8. 16 |
  gf8. 16 8. 16 4
  
  b,4\rest |
  c4\rest af8. 16 4 s4 |
  s1 |
  s2 gf4 4 |
  f8. 16 gf8. 16 f2 |
}

tenorB = \fixed c {
  \globalB
}

bassB = \fixed c {
  \globalB
  <df df'>4 q q <df af> |
  q q <df df'> <df af> |
  <af, c'> q <af, af> q |
  q q <df af>2 |
  
  <df df'>4 <df af> q <df df'> |
  <gf df'> <gf bf> q <g df'> |
  <af df'> q <af ef'> af |
  <df af> <df bf> <df af> 
  
  d4\rest |
  d4\rest <df af>8. q16 q4 <df df'>8. q16 |
  q2 <df af>4 d4\rest |
  d4\rest <f af>8. q16 <ef bf>4 q8. q16 |
  <af c'>8. q16 q8. q16 q4
  
  d4\rest |
  d4\rest <df df'>8. q16 q4 <f cf'>4 |
  <gf bf>2 <gf df'>4 <g df'> |
  <af df'> q <af ef'> q |
  <df df'>8. <df af>16 <df bf>8. q16 <df af>2 |
}

verseOneB = \lyricmode {
  \set stanza = "1."
  찬 송 하 라 주 의 크 신 사 랑
  예 수 우 리 대 신 죽 으 사
  저 천 국 서 우 리 쉴 곳
  예 비 하 고 계 시 네
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  이 세 상 의 나 그 네 길 갈 때
  구 름 잠 시 하 늘 덮 어 도
  머 지 않 아 어 둠 가 고
  슬 픔 다 시 없 겠 네

  우 리 다 천 국 에 서 
  그 리 던 주 를 만 나 뵈 올 때
  기 쁜 맘 넘 쳐 서
  승 리 의 노 래 부 르 리
}

verseThreeB = \lyricmode {
  \set stanza = "3."
  우 리 앞 에 상 급 바 라 보 고
  주 가 맡 긴 일 을 행 하 세
  영 광 의 주 만 나 볼 때
  모 든 수 고 끝 나 리
}

verseExtraB = \lyricmode {
  우 리 다
  그 리 던 주 를 만 나 뵈 올 때
  기 쁜 맘
  노 래 노 래 부 르 리
}

myChordsB = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:minimal-breaking
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
      \if \on-last-page-of-part
      \fill-line {    
        \smallCaps \smaller \bibleInfoB
        \smallCaps \smaller \engTitleB
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

  \noPageBreak
  
  \score {
    \header {
      title = \korTitleB
      %subtitle = \engTitle
      opus = \hymnNumberB
      poet = \poetB
      composer = \composerB
    } 
  
    <<
      \new ChoirStaff <<
        \new ChordNames \myChordsB
        \context Staff = upper \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          <<
            \context Voice = sop {
              \voiceOne
                \sopranoB
            }
            \context Voice = alto {
              \voiceTwo
                \altoB
            }
            \context NullVoice = alignerb {
              \alignerB
            }
            \context NullVoice = alignerbb {
              \alignerBB
            }
          >>
        }
           
        \context Lyrics = "LyrOneB" \lyricsto "alignerb" { \verseOneB }
        \context Lyrics = "LyrTwoB" \lyricsto "alignerb" { \verseTwoB }
        \context Lyrics = "LyrThreeB" \lyricsto "alignerb" { \verseThreeB }
        \context Lyrics = "LyrExtraB" \lyricsto "alignerbb" { \verseExtraB }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \clef bass
            <<      
              \context Voice = tenor {
                \voiceOne
                \tenorB
              }
              \context Voice = bass {
                \voiceTwo
                \bassB
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
