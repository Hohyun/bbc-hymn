\version "2.24.0"

\include "./hymn_init.ly"

% Hymn Info
korTitle = "내일 일은 난 몰라요"
engTitle = "I Know Who Holds Tomorrow"
hymnNumber = "723"
poet = "Ira F.Stanphill"
composer = "Ira F.Stanphill"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bes \major
  \time 3/4
  %\tempo 4 = 90
  \autoBeamOff
  \partial 4
}

soprano = \relative c' {
\global
bes8^\markup { \bold "Capo 1" } c |
d4. cis8 \tuplet 3/2 { d8 g f } |
d2 c8 bes | g'4. bes8 a g |
f2

bes8 bes |
bes4. bes8 \tuplet 3/2 { a g bes } |
f2 ees8 d |
g4. d8 c bes |
c2

bes8 c |
d4. cis8 \tuplet 3/2 { d8 g f } |
d2 c8 bes | g'4. bes8 a g | 
f2

bes8 bes |
bes4. bes8 \tuplet 3/2 { a g f } |
d2 bes8 c |
d4. ees8 d c |
bes2

bes'8 bes |
bes4. a8 \tuplet 3/2 { c8 bes g } |
f2 bes8 bes | g4. d'8 c bes | 
c2

bes8 c |
d4. d8 \tuplet 3/2 { c8 bes bes } |
g2 bes8 c | d4. f,8  \tuplet 3/2 { a8( bes) c } | 
bes2 \bar "|."
}

alto = \relative c' {
\global
s8 s |
bes4. bes8 \tuplet 3/2 { bes8 bes bes } |
bes2 bes8 s | ees4. g8 f ees |
d2

d8 aes' |
g4. g8 \tuplet 3/2 { f8 ees d } |
d2 b8 b |
bes4. bes8 a g |
a2

s8 s |
bes4. bes8 \tuplet 3/2 { bes8 bes bes } |
bes2 bes8 s | ees4. g8 f ees |
d2

d8 aes' |
g4. g8 \tuplet 3/2 { f8 ees d } |
bes2 s8 s |
bes4. a8 a a |
s2

d8 d |
ees4. f8 \tuplet 3/2 { ees8 ees ees } |
d2 d8 d |
e4. e8 e e |
ees2

d8 ees |
f4. f8 \tuplet 3/2 { d8 d ees } |
ees2 ees8 ees |
f4. ees8 \tuplet 3/2 { ees8 ees ees }  |
d2

}

tenor = \relative c {
\global
d8 ees |
f4. e8 \tuplet 3/2 { f8 d d } |
f2 aes8 aes | bes4. ees8 d c |
bes2

bes8 bes |
ees4. ees8 \tuplet 3/2 { d8 c bes } |
bes2 g8 f | e4. e8 e e |
ees2

d8 ees |
f4. e8 \tuplet 3/2 { f8 d d } |
f2 a8 aes | bes4. ees8 d c |
bes2

bes8 bes |
ees4. ees8 \tuplet 3/2 { d8 c bes } |
f2 g8 ges | f4. g8 f ees |
d2

bes'8 aes |
g4. ges8 \tuplet 3/2 { a8 ges bes } |
bes2 bes8 bes | bes4. bes8 a g |
a2

f8 f |
bes4. bes8 \tuplet 3/2 { aes8 aes g } |
bes2 g8 ges | f4. a8  \tuplet 3/2 { c8~ c a } | 
bes2 \bar "|."
}

bass = \relative c {
\global
bes8 bes |
bes4. bes8 \tuplet 3/2 { bes8 bes bes } |
bes2 d8 d | ees4. ees8 ees ees |
bes2

bes8 d |
ees4. ees8 \tuplet 3/2 { ees8 ees bes } |
bes2 g8 g | c4. c8 c c |
f,2

g8 a |
bes4. bes8 \tuplet 3/2 { bes8 bes bes } |
bes2 d8 d | ees4. ees8 ees ees |
bes2 

bes8 d |
ees4. ees8 \tuplet 3/2 { ees8 ees bes } |
bes2 bes8 bes | bes4. f8 f f |
bes2

bes8 bes |
ees4. ees8 \tuplet 3/2 { ees8 ees bes } |
bes2 bes8 bes | c4. c8 c c |
f2

bes,8 bes |
bes4. bes8 \tuplet 3/2 { bes8 bes bes } |
ees2 ees8 ees | bes4. f'8  \tuplet 3/2 { f8~ f f } | 
bes,2 \bar "|."
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
    scoreTitleMarkup = #(hymnScoreTitleMarkup oneOrTwo)
%     ragged-bottom = ##t
%     ragged-last-bottom = ##t
  }
  \header {
    tagline = ##f
  }
  
  \score {
    \header {
      title = \korTitle
      subtitle = \engTitle
      opus = \hymnNumber
      poet = \poet
      composer = \composer
    } 
  
    <<
      \new ChoirStaff <<
        \new ChordNames \myChords
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
        \override LyricText.font-family = #'serif
      }
    }
    \midi {}
  }
}

