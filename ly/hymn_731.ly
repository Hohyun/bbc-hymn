\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "나는 반석 위에 서있네"
engTitle = "Build on the Rock"
hymnNumber = "731"
poet = "Mr. C. Rice"
composer = "Mr. C. Rice"
bibleInfo = "고후 10:2-4"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key f \major
  \time 4/4
  %\tempo 4 = 110
  \autoBeamOff
  \partial 4
}

soprano = \relative c'' {
\global
c4 |
a8. a16 a8. a16 a4 g8. g16 |
f4 d c2 |
f8. f16 f8. g16  
a4 a |
a4 g2 c4 |
a4 a a g8. g16 |
f8. f16 f8. d16 c2 | 
f8. f16 f8. g16 a4 g |
f2. \bar "||" \break

% Chorus (후렴)
c'4^\markup {\hspace #-6.4 \line {"(후렴)" \fermata}} |
a4 a8. a16 a4 g8. g16 | 
f4 d c4. c8 |
f8. f16 f8. f16 a4. a8 |
a4 a g \fermata c |
a4 a8. a16 
a4 g8. g16 |
f4 d c2 |
f8. f16 f8. g16 a4 g |
f2. \bar "|."
}

alto = \relative c' {
\global
f4 |
f8. f16 f8. f16 f4  e8. e16 |
d4 bf s2 |
c8. c16 c8. c16 f4 f |
f4 e2 e4 |
f4 f f e8. e16 |
d8. d16 d8. s16 s2 |
c8. c16 d8. d16 f4 e | 
c2. 
 
% Chorus
f4 |
f4 f8. f16 f4 e8. e16 |
d4 bf s4. s8 |
c8. c16 c8. c16 f4. f8 |
f4 f e e |
f4 f8. f16  f4 e8. e16 |
d4 bf s2 |
c8. c16 d8. d16 f4 e |
c2. 
}

tenor = \relative c {
\global
a'4 |
c8. c16 c8. c16 c4 bf8. bf16 |
a4 bf a2 |
a8. a16 a8. bf16 c4 c |
c4 c2 c4 |
c4 c c bf8. bf16 |
a8. a16 bf8. bf16 a2 |
f8. f16 f8. f16 c'4 bf |
a2.


% Chorus
a4_\fermata |
c4 c8. c16 c4 bf8. bf16 |
a4 bf a4. a8 |
a8. a16 a8. a16 c4. c8 |
c4 c c_\fermata c |
c4 c8. c16 c4 bf8. bf16 |
a4 bf a2 |
f8. f16 f8. f16 c'4 bf |
a2.
}

bass = \relative c {
\global
f4 |
f8. f16 f8. f16 f4 c8. c16 |
d4 bf4 f'2 |
f8. f16 f8. f16 f4 f |
c4 c2 c4 |
f4 f f c8. c16 |
d8. d16 bf8. bf16 f2 |
a8. a16 bf8. bf16 c4 c |
f2.

% Chorus
f4 |
f4 f8. f16 f4 c8. c16 |
d4 bf f'4. f8 |
f8. f16 f8. f16 f4. f8 |
f4 f c c |
f4 f8. f16 f4 c8. c16 |
d4 bf f'2 |
a,8. a16 bf8. bf16 c4 c |
f2. 
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 하 나 님 은 큰 반 석 이 시 요 
  나 는 반 석 위 에 섰 네 
  영 원 토 록 변 치 않 는 하 나 님 
  반 석 위 에 섬 일 세 
  내 가 반 석 붙 은 것 아 니 요 
  주 반 석 나 를 붙 들 고 있 네 
  내 영 혼 이 편 하 게 쉴 곳 은 
  주 의 반 석 뿐 일 세
}

verseTwo = \lyricmode {
  \set stanza = "2."
  큰 풍 파 일 어 도 반 석 이 소 요 
  나 는 반 석 위 에 섰 네 
  큰 파 도 덮 쳐 도 요 동 안 함 은
  반 석 위 에 섬 일 세 
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 명 령 따 라 폭 풍 도 순 종 해 
  나 는 반 석 위 에 섰 네
  이 사 랑 손 안 에 화 평 누 림 은 
  반 석 위 에 섬 일 세 
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 반 석 실 로 안 전 한 곳 일 세 
  나 는 반 석 위 에 섰 네 
  이 세 상 마 귀 도 침 해 못 함 은
  반 석 위 에 섬 일 세 
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
      % subtitle = \engTitle
      opus = \hymnNumber
      poet = \poet
      composer = \composer
    } 
  
    <<
      \new ChoirStaff <<
      \context Staff = upper {
        \context Voice = sop {
          <<
            \soprano
            \alto
          >>
        }
      }
         
      \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
      \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
      \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
      \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
  
      \context Staff = lower {
        \new Voice {
          \clef bass
          \accidentalStyle modern-cautionary
          <<
            \tenor
            \bass
          >>
        }
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
    \midi {}
  }
}
