\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "주님 맞을 자리 있느뇨"
engTitle = "Have You Any Room for Jesus"
hymnNumber = "718"
poet = "Ananymous"
composer = "C. C. Williams, 1882"
bibleInfo = "빌 2:10-11"
oneOrTwo = #2  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
}

soprano = \fixed c' {
  \global
  <d f>4. <ef g>8 <d f> <d bf> <f a>8. <ef g>16 |
  <ef g>2 <d f> \breathe |
  <c ef>4. <b, d>8 <c ef> <d f> <ef g>8. <d f>16 |
  <d f>2^(_( <bf, d>^)_) \breathe | \break
  
  <d f>4. <ef g>8 <d f> <d bf> <f a>8. <ef g>16 |
  <ef g>2 <d f> \breathe |
  <c ef>4. <b, d>8 <c ef> <d f> <ef g>8. <ef a>16 |
  <d bf>1 | \break
  
  <ef c'>4.^\markup "(후렴)" q8 q q <f d'>8. <ef c'>16 |
  <d bf>2 <d f> \breathe |
  <d g>4. q8 q q <d a> <d bf> |
  <ef c'>1 \breathe | \break
  
  <f d'>4. q8 \stemDown <g ef'> \stemUp <f d'>8 <d bf>8. <ef g>16 |
  <d f>2 <bf, d> \breathe |
  <bf, ef>4. <ef g>8 <d f> <d bf> <c a>8. <ef a>16 |
  <d bf>1 \bar "|." |
  
}

alto = \fixed c' {
  \global
}

tenor = \fixed c {
  \global
  s1 | s1 | s4. gs8 s2 | bf2^( f) |
  s1 | s1 | s4. gs8 s4 s8. f16 | f1 |
  s1 | s1 | s1 | s1 |
  s1 | s1 | s4. s4 f8 8. 16 | f1 |
}

bass = \fixed c {
  \global
  <bf, bf>4. q8 q <bf, f> <bf, g>8. <bf, a>16 |
  <bf, bf>2 q \breathe |
  <f a>4. f8 <f a> q q8. q16 |
  bf,1 \breathe |
  
  <bf, bf>4. q8 q <bf, f> <bf, g>8. <bf, a>16 |
  <bf, bf>2 q \breathe |
  <f a>4. f8 <f a> q q8. f16 | bf,1 |
  
  <f a>4. q8 q q q8. q16 |
  <bf, f>2 <bf, bf> \breathe |
  <g bf>4. q8 q q <fs c'> <g bf> |
  <f a>1 \breathe |
  
  <bf, bf>4. q8 q q <bf, f>8. <bf, bf>16 |
  q2 <bf, f> \breathe |
  <ef g>4. <ef bf>8 q f 8 8. 16 | bf,1 \bar "|." |
}

verseOne = \lyricmode {
  \set stanza = "1."
  너 의 죄 짐 지 신 예 수 
  맞 을 자 리 있 느 뇨
  문 밖 에 서 두 드 릴 때
  모 실 준 비 됐 느 뇨
  
  영 광 의 왕 예 수 앞 에 
  무 릎 꿇 고 순 종 해
  마 음 문 을 활 짝 열 고 
  맘 에 영 접 하 여 라
}

verseTwo = \lyricmode {
  \set stanza = "2."
  십 자 가 를 지 신 주 님
  너 위 해 죽 었 으 나
  세 상 일 에 골 몰 할 때 
  들 일 자 리 없 구 나 
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 님 은 혜 베 풀 때 에
  받 을 마 음 있 느 뇨
  오 늘 기 회 놓 지 말 라
  내 일 이 면 헛 되 리
}

verseFour = \lyricmode {
  \set stanza = "4."
  보 라 오 늘 은 혜 의 날
  속 히 지 나 가 리 니
  너 의 심 령 냉 정 하 면
  주 의 권 고 그 치 리
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    top-margin = 7\mm
    bottom-margin = 7\mm    
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
            %\context NullVoice = aligner {
            %  \aligner
            %}
          >>
        }
           
        \context Lyrics = "LyrOne" \lyricsto "sop" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "sop" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "sop" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "sop" { \verseFour }
    
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

