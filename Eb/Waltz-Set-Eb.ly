\version "2.18.0"
  \header{
    title= ""
    subtitle="Waltz Set"
    composer= ""
    instrument =""
    arranger= ""
  }

\paper {
  %obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
 obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
 % ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")

}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\include "Expectation Waltz.ly"
\include "Anniversary-Song.ly"