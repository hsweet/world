\version "2.12.2"
\paper {
  print-all-headers = ##t
  #(set-paper-size "letter")
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ "Sheet 23 | Updated " \date }  }
\include "../Bomba.ly"
\include "../Nane Cocha.ly"

