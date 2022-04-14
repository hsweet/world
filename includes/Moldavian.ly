\version "2.12.2"
\paper {
  print-all-headers = ##t
  #(set-paper-size "letter")
  #(set-paper-size "letter")
   between-system-padding = #0.1
  between-system-space = #0.1
  ragged-last-bottom = ##f
  ragged-bottom = ##f

}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ "Sheet 226 | Updated " \date }  }

\header{
    title= "Moldavian Medley"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }

\include "../Jewish/Moldavian Hora.ly"
\include "../Jewish/Goldenstein_Khosidl.ly"