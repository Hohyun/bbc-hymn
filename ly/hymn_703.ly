\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = "상하셨네 상하셨네"
engTitle = "Wounded for Me"
hymnNumber = "703"
poet = "W.G.Ovens, 1870~1945"
composer = "W.G.Ovens, 1870~1945"
bibleInfo = "벧전 2:24-25"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ees \major
  \time 3/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  bes4 a bes |
  c2. |
  bes4 aes d, |
  ees2. \breathe |
  ees4  g bes |
  ees2 \break
  
  d8 ees |
  d4 d c | 
  bes2. \breathe |
  ees4 d c |
  bes4 aes g | \break
  
  f4 e f |
  aes2. \breathe |
  ees'4. d8 c4 |
  bes4 aes g |
  f4 ees d |
  ees2. \bar "|." |
}

alto = \relative c' {
  \global
  ees4 ees ees |
  ees 2. |
  d4 d bes |
  bes2. |
  bes4 ees f |
  ees2 
  
  f8 g |
  f4 f f |
  f2. |
  g4 bes aes |
  g4 f ees |
  c4 c c |
  f2. |
  fis4. fis8 fis4 |
  g4 f ees |
  c4 bes bes |
  bes2. |
}

tenor = \relative c' {
  \global
  g4 fis g |
  aes2. |
  f4 bes aes |
  g2.  \breathe |
  g4 bes bes |
  g2
  
  bes8 bes  |
  a4 a ees' |
  d2. \breathe |
  bes4 c d  |
  ees4 bes bes |
  
  aes4 bes aes |
  c2. \breathe |
  c4. d8 ees4  |
  ees4 bes bes |
  aes4 g aes   |
  g2. |
  
}

bass = \relative c {
  \global
  ees4 ees ees |
  aes,2. |
  bes4 bes bes |
  ees2.  |
  ees4 ees d |
  c2 
  
  c8 c |
  f4 f f |
  bes2.  |
  ees,4 ees ees |
  ees4 d ees |
  
  s4 g f |
  aes2. |
  a4. a8 a4 |
  bes4 d, ees |
  aes,4 bes bes |
  ees2. |
}

verseOne = \lyricmode {
  \set stanza = "1."
  상 하 셨 네 상 하 셨 네 십 자 가 에 
  달 려 상 하 셨 네 내 죄 의 속 박 을 
  다 푸 셨 네 주 님 이 날 위 해 상 하 셨 네
}

verseTwo = \lyricmode {
  \set stanza = "2."
  죽 으 셨 네 죽 으 셨 네 십 자 가 에 
  달 려 죽 으 셨 네 주 님 이 죽 으 사
  죄 속 했 네 주 님 이 날 위 해 죽 으 셨 네 
}

verseThree = \lyricmode {
  \set stanza = "3."
  살 으 셨 네 살 으 셨 네 무 덤 열 고
  주 님 살 으 셨 네 죽 음 의 권 세 를
  벗 어 났 네 주 님 이 날 위 해 살 으 셨 네
}

verseFour = \lyricmode {
  \set stanza = "4."
  살 으 시 네 살 으 시 네 천 국 에 서
  지 금 살 으 시 네 날 마 다 날 위 해
  간 구 하 네 주 님 이 날 위 해 간 구 하 네
}

verseFive = \lyricmode {
  \set stanza = "5."
  다 시 오 네 다 시 오 네 이 세 상 에
  다 시 오 시 겠 네 기 쁘 게 주 님 을
  맞 나 겠 네 주 님 이 날 위 해 오 시 겠 네
}



myChords = \chordmode {
}

\bookpart {
  
  \paper {
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
        \context Lyrics = "LyrFive" \lyricsto "sop" { \verseFive }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.5)
        }{
          \new Voice {
            \clef bass
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
%   \noPageBreak
%   \markup {
%     \fill-line {
%       \smallCaps \smaller \bibleInfo
%       \smallCaps \smaller \engTitle
%     }
%   }
}

