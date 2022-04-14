\version "2.12.2"

\paper {
  print-all-headers = ##t
  #(set-paper-size "letter")
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ "Sheet 22 | Updated " \date }  }
  \include "../Kimet.ly"

 \include  "../Folmaszott a kakas.ly"