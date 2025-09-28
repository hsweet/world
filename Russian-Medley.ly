\version "2.24.0"
\language "english"
%\pointAndClickOff
\header{
  title= "Russian Medley"
  subtitle=""
  composer= ""
  instrument = ""
  arranger= ""
}

\paper {
  %obsolete-between-system-padding = #0.1  system-system-spacing.padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing.padding = #(/ obsolete-between-system-padding staff-space)
  %obsolete-between-system-space = #0.1  system-system-spacing.basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing.basic-distance = #(/ obsolete-between-system-space staff-space)
  % ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")

}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
%\markup{ \italic \bold{ "Sheet 29"}  }

\include "Kurobushka.ly"
\include "740.ly"
%\pageBreak
%\include "Bublitchki.ly"

