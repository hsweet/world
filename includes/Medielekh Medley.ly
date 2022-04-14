\version "2.16.0"
\paper {
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
%\markup{ \italic{ "Sheet 23 | Updated " \date }

\include "../Meydelekh un Vaybelehk.ly"
\include "../Yosis.ly"
\pageBreak
\include "../Bulgar.ly"