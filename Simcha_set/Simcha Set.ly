\version "2.18.0"
  \header{
    title= "Simcha Set"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Dale Demarco"
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
%markup{ \italic \bold{ "Sheet 28"}  }
\include "Hava Nagila.ly"
\include  "Sholom Alaichem.ly"
\pageBreak
\include "Simon Tov.ly"
\include "Artsa Alinu.ly"
\pageBreak
\include "Chosn Kale Mazel Tov.ly"
\include "Bashana.ly"

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0
%}
