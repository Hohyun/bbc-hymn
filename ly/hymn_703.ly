\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "상하셨네 상하셨네"
engTitle = "Wounded for Me"
hymnNumber = "703"
poet = "W.G.Ovens, 1870~1945"
composer = "W.G.Ovens, 1870~1945"
bibleInfo = "벧전 2:24-25"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key ef \major
  \time 3/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  bf4 a bf |
  c2. |
  bf4 af d, |
  ef2. \breathe |
  ef4  g bf |
  ef2 \break
  
  d8 ef |
  d4 d c | 
  bf2. \breathe |
  ef4 d c |
  bf4 af g | \break
  
  f4 e f |
  af2. \breathe |
  ef'4. d8 c4 |
  bf4 af g |
  f4 ef d |
  ef2. \bar "|." |
}

alto = \relative c' {
  \global
  ef4 ef ef |
  ef 2. |
  d4 d bf |
  bf2. |
  bf4 ef f |
  ef2 
  
  f8 g |
  f4 f f |
  f2. |
  g4 bf af |
  g4 f ef |
  c4 c c |
  f2. |
  fs4. fs8 fs4 |
  g4 f ef |
  c4 bf bf |
  bf2. |
}

tenor = \relative c' {
  \global
  g4 fs g |
  af2. |
  f4 bf af |
  g2.  \breathe |
  g4 bf bf |
  g2
  
  bf8 bf  |
  a4 a ef' |
  d2. \breathe |
  bf4 c d  |
  ef4 bf bf |
  
  af4 bf af |
  c2. \breathe |
  c4. d8 ef4  |
  ef4 bf bf |
  af4 g af   |
  g2. |
  
}

bass = \relative c {
  \global
  ef4 ef ef |
  af,2. |
  bf4 bf bf |
  ef2.  |
  ef4 ef d |
  c2 
  
  c8 c |
  f4 f f |
  bf2.  |
  ef,4 ef ef |
  ef4 d ef |
  
  s4 g f |
  af2. |
  a4. a8 a4 |
  bf4 d, ef |
  af,4 bf bf |
  ef2. |
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
        \override LyricText.font-series = #'bold
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

