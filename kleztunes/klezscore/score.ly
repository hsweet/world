%%%%% score.ly
%%%%% (This is the main file)
%%%%%Staff size of 20 = 3 staffs/page
%%%%%%Staff size of 16 = 4 staffs/page
\include "piece.ly"             %%% uncomment this line when using a separate file
#(set-global-staff-size 20)
\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}