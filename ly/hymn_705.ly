\version "2.24.0"

\include "./hymn_init.ly"

\language "english"

% Hymn Info
korTitle = "할렐루야 홀연히 잠깨리"
engTitle = "Hallelujah, We shall rise"
hymnNumber = "705"
poet = "J. E. Thomas"
composer = "J. E. Thomas"
bibleInfo = "고전 15:51"
oneOrTwo = #1  % odd page: 1, even page: 2

global = {
  \key bf \major
  \time 4/4
  %\tempo 4 = 80
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \partial 4
}

aligner = \fixed c' {
  \global
  <d f>8 <ef g> |
  
  <f bf>8 q q <f c'> <f bf> <ef g> <d f> <ef g> |
  <f bf>8 <f c'> <f bf> <ef g> <d f>4 %\break
  
  bf8 c' | d'4 g8. 16 f8 8 < f c'>8 q | 
  <f bf>2. <d f>8 <ef g> | 
  <f bf>8 q q <f c'> <f bf> <ef g> %\break
  
  <d f>8 <ef g> | <f bf>8 <f c'> <f bf> <ef g> <d f>4 
  
  \repeat segno 2 {
      <g bf>8 c'8 |
      d'4 g8. 16 f8 8 <f c'>8 q | bf8 f f d ef f 
    \volta 2 \fine
    \volta 1 
      bf'8 d |
      f4 <f bf>8. 16 8 <d f> d8 f |
      bf4 <bf d'>4 q bf8 d' |
      f'4 bf8. 16 8 8 %\break
    
      <f d'>8 <fs c'> |
      <g bf>8 q <ef c'> <ef bf> <ef g> <d f> <bf, d> <c ef> |
      <d f>8 <cs e> <d f> <cs e> <d f> <ef g> %\bar "|."
  }
}

soprano = \fixed c' {
  \global
  <d f>8 <ef g> |
  
  <f bf>8 q q <f c'> <f bf> <ef g> <d f> <ef g> |
  <f bf>8 <f c'> <f bf> <ef g> <d f>4 %\break
  
  bf8 c' | d'2. < f c'>8 q | 
  <f bf>2. \break <d f>8 <ef g> | 
  <f bf>8 q q <f c'> <f bf> <ef g> %\break
  
  <d f>8 <ef g> | <f bf>8 <f c'> <f bf> <ef g> <d f>4 
  
  \repeat segno 2 {
      <g bf>8 s8 |
      d'2. <f c'>8 q | bf2. %\break
    \volta 2 \fine
    \volta 1 
      b4\rest^\markup "(후렴)" |
      b4\rest <f bf>8. 16 8 <d f> b4\rest |
      b4\rest <bf d'>4 q bf8 d' |
      f'2. %\break
    
      <f d'>8 <fs c'> |
      <g bf>8 q <ef c'> <ef bf> <ef g> <d f> <bf, d> <c ef> |
      <d f>8 <cs e> <d f> <cs e> <d f> <ef g> %\bar "|."
  }
  
}

alto = \fixed c' {
  \global
  s4 | s1 | s2. 
  r4 | r4 g8. 16 f8 8 s4 | s1 | s2.
  
  s4 | s2. s8 <a c'>8 | 
  bf4 g8. 16 f8 8 s4 |
  r8 f f d ef f 
  
  s4 |
  s1 | s1 | r4 bf8. 16 8 8
  s4 | s1 | s2. 
  
  
}

tenor = \fixed c {
  \global
  s4 | s1 | s2.
  s4 | s1 | s1 | s2. 
  s4 | s1 | s1 | r8 d'8 8 bf c' d'
  a4\rest | c'4\rest d'8. 16 8 bf c'4\rest |
  f'4\rest f'4 4 s4 | s2.
  
  s4 | s1 | s2.
}

bass = \fixed c {
  \global
  <bf, bf>8 q |
  <bf, d'>8 q q <bf, ef'> <bf, d'> <bf, bf> q q |
  <bf, d'>8 <bf, ef'> <bf, d'> <bf, bf> <bf, bf>4  
  
  d4\rest |
  d4\rest <g c'>8. <g bf>16 <d bf>8 q <f ef'>8 q |
  <bf, d'>2. <bf, bf>8 q |
  <bf, d'>8 q q <bf, ef'> <bf, d'> <bf, bf>
  q q |
  <bf, d'>8 <bf, ef'> <bf, d'> <bf, bf> q q 
 
  \repeat segno 2 {
    d4\rest |
    d4\rest <g bf>8. <g bf>16 <d bf>8 q <f ef'>8 q |
    bf,2. 
  
  \volta 2 \fine
  \volta 1 
    bf,8 d |
    f2. d8 f |
    bf2. d4\rest |
    d4\rest <bf d'>8. <bf d'>16 q8 q 
    
    <bf, bf>8 <bf, af> |
    <ef g>8 q q q <bf, bf> q <bf, f> q |
    <bf, bf>8 q q q q q 
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  부 활 아 침 돌 아 오 면 
  공 중 나 팔 울 리 며
  _ _ _ _ _ _ _ _ _ _
  
  성 도 들 이 기 뻐 뛰 며
  눈 물 다 시 없 으 리  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  부 활 아 침 돌 아 오 면 
  우 리 다 시 만 나 리
  홀 연 히 _ _ _ _ 잠 깨 리
  
  
  구 원 받 은 형 제 자 매
  사 랑 하 는 친 구 들

  홀 연 히 _ _ _ _ 
  잠 깨 리 _ _ _ _ _
  
  (홀 연 히) 할 렐 루 야
  (잠 깨 리) 아 멘 잠 깨 리 (할 렐 루 야)
 
  부 활 아 침 돌 아 오 면 
  사 망 감 옥 빗 장 깨 고
}

verseThree = \lyricmode {
  \set stanza = "3."
  부 활 아 침 돌 아 오 면 
  주 님 은 혜 속 에 서
  _ _ _ 할 렐 루 야 _ _ _
  
  나 의 생 명 구 원 하 신 
  주 님 다 시 뵙 겠 네
  
  _ _ _ 할 렐 루 야 
  _ _ _ 아 침 잠 깨 리
}

verseFour = \lyricmode {
  \set stanza = "4."
  부 활 아 침 돌 아 오 면 
  공 중 에 들 림 받 아
  _ _ _ _ _ _ _ _ _ _
  
  아 름 다 운 나 의 본 향 
  천 국 으 로 옮 기 리 
}

myChords = \chordmode {
}

\bookpart {
  
  \paper {
    %page-breaking = #ly:one-page-breaking
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0.3) (stretchability . 30))
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
          %\override StaffSymbol.staff-space = #(magstep -0.7)
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
           
        \context Lyrics = "LyrOne" \lyricsto "aligner" { \verseOne }
        \context Lyrics = "LyrTwo" \lyricsto "aligner" { \verseTwo }
        \context Lyrics = "LyrThree" \lyricsto "aligner" { \verseThree }
        \context Lyrics = "LyrFour" \lyricsto "aligner" { \verseFour }
    
        \context Staff = lower \with {
          %\override StaffSymbol.staff-space = #(magstep -0.7)
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

