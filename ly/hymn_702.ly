\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = "내 영혼 구하려"
engTitle = "Seek for Me"
hymnNumber = "702"
poet = "Anonymous"
composer = "Elliotte E. Hosty"
bibleInfo = "마 11:28"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key g \major
  \time 6/8
  %\tempo 4 = 110
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  d8. c16 b8 b a g |
  a8. g16 e8 e4.   |
  d8. g16 g8 g a b | \break

  b8. a16 a8 a4.   |
  d8. c16 b8 b8. a16 g8 |
  a8 g e e4.   |
  d8 g b a4 g8 | \break

  g4.~ g4 r8 |
  d8 fis a d4 \once \stemUp c8 |
  b4.( g4) r8 |
  d8 fis a c4 e8 |
  d4.( b4) r8 | \break
  
  d8.^\fermata c16 b8 b8. a16 g8 |
  a8 g e e4.  |
  d8 g b a4 g8 |
  g4.~ g4 r8  \bar "|."
}

alto = \relative c'' {
  \global
  g8. g16 g8 g fis s |
  e8. e16 c8 c4.   |
  b8. d16 d8 d d g | 

  g8. g16 g8 fis4.   |
  g8. g16 g8 g8. fis16 s8 |
  e8 e c c4.   |
  b8 d d c4 b8 |

  b4.~ b4 r8 |
  s8 dis fis fis4 fis8 |
  g8 d d b4  s8 |
  s8 d fis fis4 fis8 |
  g8 g g g4  s8 |
  
  g8. g16 g8 g8. fis16 s8 |
  e8 e c c4.  |
  b8 d d d4 d8 |
  d4.~ d4 r8  |
}

tenor = \relative c {
  \global
  b'8. e16 d8 d c b |
  c8. g16 g8 g4.   |
  g8. b16 b8 b c d |
  
  cis8. cis16 cis8 d4.  |
  b8. e16 d8 d8. c16 b8 |
  c8 g g g4.   |
  g8 b g fis4 g8 |
  
  g4.~ g4 r8 |
  fis8 a a a4 r8 |
  g8 g g g4   r8 |
  fis8 a a a4 r8 |
  b8 b b   d4 r8 |
  
  b8._\fermata e16 d8 d8. c16 b8 |
  c8 g g g4.  |
  g8 b d c4 b8 |
  b4.~   b4 r8 |
}

bass = \relative c {
  \global
  g'8. g16 g8 g g g  |
  c,8. c16 c8 c4.   |
  s8. g'16 g8 g g g | 

  a8. a16 a8 d,4.   |
  g,8. g16 g8 g'8. g16 g8 |
  c,8 c c c4.   |
  d8 d d d4 g8 |

  g,4.~ g4 r8 |
  d'8 d d d4 s8 |
  g,8 g g g4 s8 |
  d'8 d d d4 s8 |
  g8  g g g4 s8 |
  
  g8. g16 g8 g8. g16 g8 |
  c,8 c c c4.  |
  d8 d d d4 d8 |
  g,4.~ g4 r8  |
}

verseOne = \lyricmode {
  \set stanza = "1."
  주 예 수 세 상 에 탄 생 하 사 
  슬 픔 과 수 치 를  당 하 셨 네 
  놀 랍 다 주 님 의 크 신 은 혜 
  내 영 혼 구 하 려 
  내 영 혼 구 하 려(구하시려) 
  내 영 혼 구 하 려(구하시려)
  놀 랍 다 주 님 의 크 신 은 혜 
  내 영 혼 구 하 려
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주 예 수 십 자 가 달 리 시 사 
  내 모 든 죄 값 을 치 루 셨 네 
  놀 랍 다 주 님 의 크 신 은 혜 
  나 위 해 죽 었 네 
  나 위 해 죽 었 네(죽으셨네) 
  나 위 해 죽 었 네(죽으셨네) 
  놀 랍 다 주 님 의 크 신 은 혜 
  나 위 해 죽 었 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 예 수 성 령 을 보 내 주 사 
  잃 었 던 내 영 혼 살 리 셨 네 
  내 영 혼 긍 휼 히 여 기 시 사 
  나 를 부 르 셨 네 
  나 를 부 르 시 네(부르셨네) 
  나 를 부 르 셨 네(부르셨네)
  내 영 혼 긍 휼 히 여 기 시 사 
  나 를 부 르 셨 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  주 예 수 세 상 에 다 시 오 사
  주 님 의 약 속 을 이 루 시 리
  나 친 히 주 님 을 뵈 오 리 라
  나 위 해 오 시 리
  나 위 해 오 시 리(오시리라)
  나 위 해 오 시 리(오시리라)
  나 친 히 주 님 을 뵈 오 리 라
  나 위 해 오 시 리
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
    %     ragged-bottom = ##t
     ragged-last-bottom = ##t
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
    
        \context Staff = lower \with {
          \override StaffSymbol.staff-space = #(magstep -0.5)
        } {
          \new Voice {
            \clef bass
            %\accidentalStyle modern-cautionary
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
      }
    }
    \midi {}
  }
  \noPageBreak
  \markup {
    \fill-line {
      \smallCaps \smaller \bibleInfo
      \smallCaps \smaller \engTitle
    }
  }
}

