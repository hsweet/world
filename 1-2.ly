\version "2.18.0"
\language "english"
%\pointAndClickOff

\paper {

  obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

\include "Hava Nagila.ly"
\include  "Sholom Alaichem.ly"


