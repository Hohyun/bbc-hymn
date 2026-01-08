\version "2.24.0"

% Template for creating new hymns
% Copy this file and fill in the sections

\score {
  \new ChoirStaff <<
    \new Staff = "soprano" <<
      \new Voice = "soprano" {
        \relative c' {
          \clef treble
          \key c \major  % Change key as needed
          \time 4/4      % Change time signature as needed
          \tempo "Moderato"  % Change tempo as needed
          
          % Add soprano notes here
          c'1 \bar "|."
        }
      }
      \new Lyrics \lyricsto "soprano" {
        % Add lyrics here
        Lyrics here
      }
    >>
    \new Staff = "alto" <<
      \new Voice = "alto" {
        \relative c' {
          \clef treble
          \key c \major
          \time 4/4
          
          % Add alto notes here (optional)
          e1 \bar "|."
        }
      }
    >>
    \new Staff = "tenor" <<
      \new Voice = "tenor" {
        \relative c {
          \clef "treble_8"
          \key c \major
          \time 4/4
          
          % Add tenor notes here (optional)
          g'1 \bar "|."
        }
      }
    >>
    \new Staff = "bass" <<
      \new Voice = "bass" {
        \relative c {
          \clef bass
          \key c \major
          \time 4/4
          
          % Add bass notes here
          c1 \bar "|."
        }
      }
    >>
  >>
  \layout { 
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi { 
    \tempo 4 = 100
  }
  \header {
    piece = "Hymn XXX: [Title Here]"
    composer = "[Composer Name]"
    poet = "[Lyricist Name]"  % Optional
  }
}
