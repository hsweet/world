\version "2.18.0"
\language "english"
\paper {
  print-all-headers = ##t
  #(set-paper-size "letter")
}
%date = #(strftime "%d-%m-%Y" (localtime (current-time)))
%%\markup{ \italic{ " Updated " \date  }  }
\include "Bubamara.ly"
\include "Bubamara-E.ly"