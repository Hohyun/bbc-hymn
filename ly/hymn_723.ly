\version "2.24.0"

\include "./hymn_init.ly"
\language "english"

% Hymn Info
korTitle = "내일 일은 난 몰라요"
engTitle = "I Know Who Holds Tomorrow"
hymnNumber = "723"
poet = "Ira F.Stanphill"
composer = "Ira F.Stanphill"
bibleInfo = ""
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 3/4
  %\tempo 4 = 90
  \autoBeamOff
  \partial 4
}

soprano = \relative c' {
\global
bf8 c |
d4. cs8 \tuplet 3/2 { d8 g f } |
d2 c8 bf | g'4. bf8 a g |
f2

bf8 bf |
bf4. bf8 \tuplet 3/2 { a g bf } |
f2 ef8 d |
g4. d8 c bf |
c2

bf8 c |
d4. cs8 \tuplet 3/2 { d8 g f } |
d2 c8 bf | g'4. bf8 a g | 
f2

bf8 bf |
bf4. bf8 \tuplet 3/2 { a g f } |
d2 bf8 c |
d4. ef8 d c |
bf2

bf'8 bf |
bf4. a8 \tuplet 3/2 { c8 bf g } |
f2 bf8 bf | g4. d'8 c bf | 
c2

bf8 c |
d4. d8 \tuplet 3/2 { c8 bf bf } |
g2 bf8 c | d4. f,8  \tuplet 3/2 { a8( bf) c } | 
bf2 \bar "|."
}

alto = \relative c' {
\global
s8 s |
bf4. bf8 \tuplet 3/2 { bf8 bf bf } |
bf2 bf8 s | ef4. g8 f ef |
d2

d8 af' |
g4. g8 \tuplet 3/2 { f8 ef d } |
d2 b8 b |
bf4. bf8 a g |
a2

s8 s |
bf4. bf8 \tuplet 3/2 { bf8 bf bf } |
bf2 bf8 s | ef4. g8 f ef |
d2

d8 af' |
g4. g8 \tuplet 3/2 { f8 ef d } |
bf2 s8 s |
bf4. a8 a a |
s2

d8 d |
ef4. f8 \tuplet 3/2 { ef8 ef ef } |
d2 d8 d |
e4. e8 e e |
ef2

d8 ef |
f4. f8 \tuplet 3/2 { d8 d ef } |
ef2 ef8 ef |
f4. ef8 \tuplet 3/2 { ef8 ef ef }  |
d2

}

tenor = \relative c {
\global
d8 ef |
f4. e8 \tuplet 3/2 { f8 d d } |
f2 af8 af | bf4. ef8 d c |
bf2

bf8 bf |
ef4. ef8 \tuplet 3/2 { d8 c bf } |
bf2 g8 f | e4. e8 e e |
ef2

d8 ef |
f4. e8 \tuplet 3/2 { f8 d d } |
f2 a8 af | bf4. ef8 d c |
bf2

bf8 bf |
ef4. ef8 \tuplet 3/2 { d8 c bf } |
f2 g8 gf | f4. g8 f ef |
d2

bf'8 af |
g4. gf8 \tuplet 3/2 { a8 gf bf } |
bf2 bf8 bf | bf4. bf8 a g |
a2

f8 f |
bf4. bf8 \tuplet 3/2 { af8 af g } |
bf2 g8 gf | f4. a8  \tuplet 3/2 { c8~ c a } | 
bf2 \bar "|."
}

bass = \relative c {
\global
bf8 bf |
bf4. bf8 \tuplet 3/2 { bf8 bf bf } |
bf2 d8 d | ef4. ef8 ef ef |
bf2

bf8 d |
ef4. ef8 \tuplet 3/2 { ef8 ef bf } |
bf2 g8 g | c4. c8 c c |
f,2

g8 a |
bf4. bf8 \tuplet 3/2 { bf8 bf bf } |
bf2 d8 d | ef4. ef8 ef ef |
bf2 

bf8 d |
ef4. ef8 \tuplet 3/2 { ef8 ef bf } |
bf2 bf8 bf | bf4. f8 f f |
bf2

bf8 bf |
ef4. ef8 \tuplet 3/2 { ef8 ef bf } |
bf2 bf8 bf | c4. c8 c c |
f2

bf,8 bf |
bf4. bf8 \tuplet 3/2 { bf8 bf bf } |
ef2 ef8 ef | bf4. f'8  \tuplet 3/2 { f8~ f f } | 
bf,2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  내 일 일 은 난 몰 라 요 하 루 하 루 살 아 요
  불 행 이 나 요 행 함 도 내 뜻 대 로 못 해 요
  험 한 이 길 가 고 가 도 끝 은 없 고 곤 해 요
  주 님 예 수 팔 내 미 사 내 손 잡 아 주 소 서
  내 일 일 은 난 몰 라 요 장 래 일 도 몰 라 요
  아 버 지 여 날 붙 드 사 평 탄 한 길 주옵 소 서 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  좁 은 이 길 진 리 의 길 주 님 가 신 그 옛 길
  힘 이 들 고 어 려 워 도 찬 송 하 며 갑 니 다
  성 령 이 여 그 음 성 을 항 상 들 려 줍 소 서
  내 마 음 은 정 했 어 요 변 치 말 게 합 소 서
  내 일 일 은 난 몰 라 요 장 래 일 도 몰 라 요
  아 버 지 여 아 버 지 여 주 신 소 명 이루 소 서
}

verseThree = \lyricmode {
  \set stanza = "3."
  만 왕 의 왕 예 수 께 서 이 세 상 에 오 셔 서
  만 백 성 을 구 속 하 니 참 구 주 가 되 시 네
  순 교 자 의 본 을 받 아 나 의 믿 음 지 키 고
  순 교 자 의 신 앙 따 라 이 복 음 을 전 하 세
  불 과 같 은 성 령 이 여 내 맘 에 항 상 계 셔
  천 국 가 는 그 날 까 지 주 여 지 켜 주옵 소 서
}

myChords = \chordmode {
  \override ChordName.font-size = #-2
  \partial 4 s4 | a2. | s2 a4:7 | d2. | a2  
  a4:7 | d2. | a2. | b2.:m | e2.:7
  a2. | s2 a4:7 | d2. | a2 
  a4:7 | d2. | a2. | s2 e4:7 | a2
  a4:7 | d2. | a2. | b2.:7 | e2.:7
  a2 a4:7 | d2. | a2 e4:7 | a
}


\bookpart {
  
  \paper {
     top-margin = 7\mm
     bottom-margin = 6\mm
     scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
     system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
     scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
     ragged-bottom = ##f
     ragged-last-bottom = ##f
     last-bottom-spacing.padding = #0
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
        \new ChordNames { \transpose a bf \myChords }
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
    
        \context Staff = lower {
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
  \noPageBreak
  \markup {
    \fill-line {
      \smallCaps \smaller \bibleInfo
      \smallCaps \smaller \engTitle
    }
  }
}

