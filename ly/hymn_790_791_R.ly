\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% First Song placed on even page (left page) which will be printed on first and second page.
% Hymn Info
korTitle = "본향 가는 길"
engTitle = "The Road Leads Home"
hymnNumber = "790"
poet = "Daniel B. Towner, 1850~1919"
composer = "Arr by James M. Gray, 1851-1935"
bibleInfo = "히 11:13-16"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key d \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4 
}

soprano = \fixed c' {
  \global
  <d fs>4 |
  <fs a>4. q8 <e g>4 <fs d> |
  q4 <cs e>2 \breathe q8. <d fs>16 |
  <e g>4. <e a>8 <g cs'>4 <g b> |
  <fs a>2. \breathe %break
  
  <fs a>4 |
  <fs d'>4. q8 q4 <a cs'> |
  q <g b>2 \breathe q8. q16 |
  <gs b>4. q8 <gs cs'>4 <gs d'> |
  <a cs'>2. \breathe %break
  
  <g b>8. q16 |
  <fs a>4. q8 <e g>4 <d fs> |
  q <cs e>2 \breathe q8. <d fs>16 |
  <e g>4. <e a>8 <g cs'>4 <g b> |
  <fs a>2. \breathe %break
  
  q8. q16 |
  <fs d'>4. q8 q4 <a cs'> |
  q <g b>2 \breathe q8. q16 |
  <fs a>4. <fs d'>8 q4 <g cs'> |
  <fs d'>2. \break
  
  \repeat volta 2 {
    <d fs>8.^\markup "(후렴)" <e g>16 |
    <fs a>2 <g b> |
    <fs a>2. b4\rest |
    b4( d') cs'( b) |
    <fs a>2. q4 |
    <g b>4. <g cs'>8 <g d'>4 <g b> | %break
    
    \alternative {
      { <fs a>4 <d fs> \breathe <d a> <fs d'> |
        <e cs'>2 <e b> |
        <e a>2.\fermata } 
      { <fs a>4 \stemDown <a fs'>2\fermata <a d'>8. \stemUp <g b>16 %|
        a2 <g cs'> %|
        <fs d'>2. \bar "|." }
    }
  }
}

alto = \fixed c' {
  \global
  \repeat unfold 4 { s4 | s1 | s1 | s1 | s2. }
  
  \repeat volta 2 {
    %후렴
    s4 | s1 | s1 | g2 g | s1 | s1 |
    
    \alternative {
      { s1 | s1 | s2. }
      { s1 %| 
        fs4( e) s2 %| 
        s2.}
    }
  } 
}

aligner = \fixed c' {
  \global
  <d fs>4 |
  <fs a>4. q8 <e g>4 <fs d> |
  q4 <cs e>2 q8. <d fs>16 |
  <e g>4. <e a>8 <g cs'>4 <g b> |
  <fs a>2. 
  
  <fs a>4 |
  <fs d'>4. q8 q4 <a cs'> |
  q <g b>2 q8. q16 |
  <gs b>4. q8 <gs cs'>4 <gs d'> |
  <a cs'>2. 
  
  <g b>8. q16 |
  <fs a>4. q8 <e g>4 <d fs> |
  q <cs e>2 q8. <d fs>16 |
  <e g>4. <e a>8 <g cs'>4 <g b> |
  <fs a>2. 
  
  q8. q16 |
  <fs d'>4. q8 q4 <a cs'> |
  q <g b>2 q8. q16 |
  <fs a>4. <fs d'>8 q4 <g cs'> |
  <fs d'>2. 
  
  \repeat volta 2 {
    <d fs>8. <e g>16 |
    <fs a>2 <g b> |
    <fs a>2. b4\rest |
    b4( d') cs' b |
    <fs a>2. q4 |
    <g b>4. <g cs'>8 <g d'>4 <g b> | 
    
    \alternative {
      { <fs a>4 <d fs> <d a> <fs d'> |
        <e cs'>2 <e b> |
        <e a>2.\fermata }
      { <fs a>4 \stemDown <a e'>2\fermata <a d'>8. \stemUp <g b>16 %|
        a2 <g cs'> %|
        <fs d'>2. }
    }
  }
}

tenor = \fixed c {
  \global
  s4 | s1 | s1 | s1 | s2. 
  s4 | s1 | s1 | s1 | a2. 
  s4 | s1 | s1 | s1 | s2. 
  s4 | s1 | s1 | s4. a8 4 4 | s2. 
  
  \repeat volta 2 {
    %후렴
    s4 | s1 | s1 | d'4( b) cs'( d') | s1 | s1 |
    
    \alternative {
      { s1 | s2 gs4( d') | s2. }
      { s1 %| 
        d'4( cs') b( a) %| 
        s2.}
    }
  } 
}

bass = \fixed c {
  \global
  <d a>4 |
  <d d'>4. q8 q4 <d a> |
  <a, a>4 q2 \breathe q8. q16 |
  <a, cs'>4. q8 <a, e'>4 <a, cs'> |
  <d d'>2. \breathe
  
  q4 |
  <d a>4. q8 q4 <fs d'> |
  <g d'>4 q2 \breathe q8. q16 |
  <e d'>4. q8 <e cs'>4 <e b> |
  a2. \breathe 
  
  <a cs'>8. q16 |
  <d d'>4. q8 q4 <d a> |
  <a, a>4 q2 \breathe q8. q16 |
  <a, cs'>4. q8 <a, e'>4 <a, cs'> |
  <d d'>2. \breathe
  
  q8. q16 |
  <d a>4. q8 q4 <fs d'> |
  q q2 \breathe q8. q16 |
  <a d'>4. a8 4 4 |
  <d a>2. 
  
  \repeat volta 2 {
    %후렴
    <d a>8. q16 | 
    <d d'>2 <g d'> | 
    <d d'>2. d4\rest | 
    g2 g | 
    <d d'>2. q4 | 
    <g d'>4. <g cs'>8 <g b>4 <g d'> |
    
    \alternative {
      { <d d'>4 <d a> \breathe <d fs> <d a> | 
        <e a>2 e | 
        <a cs'>2.\fermata }
      { <d d'>4 q2\fermata q8. q16 %| 
        a2 a, %| 
        <d a>2.}
    }
  } 
}

verseOne = \lyricmode {
  \set stanza = "1."
  저 본 향 천 국 향 해 나 그 네 길 갈 동 안
  큰 풍 랑 만 날 때 나 험 한 길 을 걸 을 때
  모 든 상 관 않 는 다 고 기 쁘 게 말 하 느 뇨
  슬 픔 고 통 당 할 때 도 참 고 견 디 고 있 나 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  이 길 을 가 는 동 안 주 의 손 길 보 느 뇨
  주 말 씀 등 불 되 사 어 둔 길 을 지 키 네
  주 의 명 령 순 종 할 때 실 족 하 지 않 으 며
  환 란 시 험 견 디 므 로 오 실 주 님 만 나 리

  본 향 가 는 길 그 리 운 곳 
  길 비 록 험 난 하 나 염 려 없 겠 네
  하 나 염 려 없 겠 네
}

verseThree = \lyricmode {
  \set stanza = "3."
  오 안 전 한 도 피 성 아 름 다 운 내 본 향
  황 홀 한 동 산 안 에 나 의 맘 이 늘 있 네
  내 죄 대 속 하 신 주 님 께 서 기 다 리 시 네
  비 록 고 된 길 을 가 도 위 로 항 상 넘 치 네
}

verseFour = \lyricmode {
}

myChords = \chordmode {
}


% Second Song placed on odd page (right page) which will be printed second page.
% Hymn Info
korTitleB = "할렐루야"
engTitleB = "Hallelujah"
hymnNumberB = "791"
poetB = "Anonymous"
composerB = "Anonymous"
bibleInfoB = "시 148:1-4"
oneOrTwoB = #1  % odd page: 1, even page: 2

globalB = {
  \key af \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 8
}

sopranoB = \fixed c' {
  \globalB
  <af, c>16 q |
  <c ef>8 q16 q <c af>8 q16 q <df f>8 q16 q <f df'>16 q8. |
  <ef c'>4 <df bf>8. q16 <c af>4. <af, c>16 <bf, df>  %break
  
  <c ef>8 q16 q <c af>8 q16 q <df f>8 q16 q <f df'>16 q8. |
  <ef c'>4 <df bf>8. q16 <c af>2 |
  q4 <ef c'>8. <ef af>16 <ef bf>8 q16 <ef c'>16 <ef df'>8 <ef bf> | %break
  
  <ef g>4 <ef bf>8. <ef g>16 <ef af>8 q16 <ef bf>16 <ef c'> <ef af>8. |
  <ef af>4 <af c'>8. <ef af>16 <f bf>8 q16 <f c'> <f df'>8 <f bf> |
  <ef af ef'>4\fermata <ef g>8. q16 <ef af>4. \bar "|." 
}

alignerB = \sopranoB

altoB = \fixed c' {
  \globalB
}

tenorB = \fixed c {
  \globalB
  <af, ef>16 q | s4 <af, ef>8 q16 s16 s2 | s2.. <af, ef>16 q |
  
  s4 <af, ef>8 q16 s16 s2 | s1 | s1 |
  
  s2. af16 s8. | s1 | s2..
}

bassB = \fixed c {
  \globalB
  s8 |
  <af, af>8 q16 q s8. <af, af>16 q8 q16 q q q8. |
  <ef af>4 <ef g>8. q16 <af, af>4. s8 |
  
  <af, af>8 q16 q s8. q16 <ef af>8 q16 q q q8. |
  <ef af>4 <ef g>8. q16 <af, ef af>2 |
  <af, af>4 q8. <c af>16 <ef g>8 q16 <ef af> <ef bf>8 <ef g> |
  
  <ef bf>4 <ef g>8. <df bf>16 <c af>8 q16 <ef g> af <ef c'>8. |
  q4 <af ef'>8. <af c'>16 <df af df'>8 q16 <c a>16 <bf, bf>8 <df bf> |
  <ef c'>4\fermata <ef df'>8. q16 <af, c'>4.
}

verseOneB = \lyricmode {
  \set stanza = "1."
  할 렐 루 할 렐 루 할 렐 루 할 렐 루 야
  주 찬 양 해 
  할 렐 루 할 렐 루 할 렐 루 할 렐 루 야
  주 찬 양 해
  주 찬 양 해 할 렐 루 야 
  주 찬 양 해 할 렐 루 야 
  주 찬 양 해 할 렐 루 야 
  주 찬 양 해
}

verseTwoB = \lyricmode {
  \set stanza = "2."
  우 리 주 예 수 님 십 자 가 지 셨 도 다
  날 위 하 여
  주 님 이 흘 리 신 보 혈 의 능 력 으 로
  날 구 했 네
  주 찬 양 해 크 신 사 랑 
  주 찬 양 해 크 신 은 혜 
  기 쁨 으 로 주 님 사 랑 
  늘 찬 양 해
}

verseThreeB = \lyricmode {
  \set stanza = "3."
}

verseFourB = \lyricmode {
  \set stanza = "4."
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
    ragged-last-bottom = ##f
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
        \new Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
    
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
      \tempo 4 = 120
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
          >>
        }
           
        \context Lyrics = "LyrOneB" \lyricsto "alignerb" { \verseOneB }
        \context Lyrics = "LyrTwoB" \lyricsto "alignerb" { \verseTwoB }
        \context Lyrics = "LyrThreeB" \lyricsto "alignerb" { \verseThreeB }
        \context Lyrics = "LyrFourB" \lyricsto "alignerb" { \verseFourB }
    
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
      \tempo 4 = 80
    }
  }
}
