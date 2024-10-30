\version "2.20.0"

\paper {
  print-all-headers = ##t
  #(set-paper-size "letter")
  page-breaking = #ly:page-turn-breaking
}
\include "../Odessa-Bulgar-1.ly"
\include "../Odessa-Bulgar-2.ly"
\include "../Goldensyteyn-Bulgar-Medley.ly"
\pageBreak
\include "../Goldensyteyn-Bulgar.ly"

