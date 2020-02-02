\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  g8 r d r    |
  g r bf r    |
  a bf c d    |
  bf a g4     |
  g8 a bf c   |
  d ef d4     |
  d8 g f ef   |
  d ef d4     |
  c8 d ef c   |
  bf c d bf   |
  a bf c d    |
  c bf a g    |
  fs g a d,   |
  g bf d4     |
  c8 d16( ef) d8 c |
  bf a g4     |
  fs8 g a d,  |
  bf' r a r   |
  g2~   |
  g4 r




}
%################################# Lyrics #####################
\addlyrics{
  %\set stanza = #"1. "
  Ayns tzvey dray fir
  ar -- bet -- lo -- se ze -- nen mir.
  Nit ge -- hert kha -- do -- shim lang
  in fa -- brik dem ha -- mer klang,
  s'li -- gn key -- lim kalt far -- ge -- sen,
  s'nemt der zha -- ver zey shoyn fre -- sen.
  Gey -- en mir a -- rum in gas
  vi di gvi -- rim pust un pas,
  vi di gvi -- rim pust un pas.
}
\addlyrics {
  One, two, three, four
  Join the march -- ing job -- less corp
  No work in the fac -- to -- ries,
  no more man -- u -- fac -- tur -- ing
  All the tools are bro -- ken, rust -- ed
  Ev -- ery tool and win -- dow, bust -- ed
  %Out in -- to the street we go
  To the ci -- ty streets we go
  Id -- le as a C -- E -- O
  Id -- le as a C -- E -- O
}

\addlyrics {
  One, two, three, four
  Join the march -- ing job -- less corp
  We don't have to pay no rent
  Sleep -- ing in a camp -- ing tent
  Dump -- ster div -- ing don't take mon -- ey
  Eve -- ry bite we share with twen -- ty
  Let the yup -- pies have their wine
  Bread and wat -- er suit us fine
  Bread and wat -- er suit us fine
}

\addlyrics {
One, two, three, four
  Join the march -- ing job -- less corp
  Worked and payed our un -- ion dues
  What did years of that pro -- duce?
  Hous -- es, cars and oth -- er shit _
  For the rich -- es ben -- e -- fit _
  What did work -- ers get for pay?
  Hung -- ry broke and thrown a -- way
   Hung -- ry broke and thrown a -- way
}

\addlyrics {
  One, two, three, four
  Pick your -- selves up off the floor
  Un -- em -- ploy -- ment mar -- ches on
  So we sing a march -- ing song
  For a land, a world of just -- ice
  Where no boss or cop can bust us
  There be work for ev -- ery hand
  In a new and bet -- ter land
  In a new and bet -- ter land
}

%################################# Chords #######################
harmonies = \chordmode {
  g2:m  |
  g:m   |
  d:7      |
  g:m      |
  f:7      |
  bf       |
  g:7      |
  bf       |
  c:m      |
  g:m      |
  d:7      |
  g:m      |
  d:7      |
  g:m      |
  c:m      |
  g:m      |
  d:7      |
  bf4 d4:7  |
  g2:m      |
  g:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
     \transpose g f \harmonies
    }
   \transpose g f \new Staff   \melody
  >>
  \header{
    title= "Arbetlose March"
    subtitle="ארבעטלאָזע מאַרש"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
%{
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
	\column {
	  ""
	}
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
	\column {
	 ""
	}
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
	\column {
	  ""
	}
      }
      \hspace #0.2 % distance between verses
      \line { "4."
	\column {
	 ""
	}
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
%{
אײנס, צװײ, דרײַ, פֿיר,
  אַרבעטלאָזע זענען מיר,
  נישט געהערט חדשים לאַנג
  אין פֿאַבריק דעם האַמער־קלאַנג,
  ס׳ליגן כּלים קאלט, פֿאַרגערסן,
  ס׳נעמט דער זשאַװער זײ שױן פֿרעסן,
  גײען מיר אַרום אין גאַס,
  װי די גבֿירים פּוסט־און־פּאַס.

  *רעפֿרען:*
  אײנס, צװײ, דרײַ, פֿיר,
  אַרבעטלאָזע זענען מיר,
  אָן אַ בגד, אָן אַ הײם,
  אונדזער בעט איז ערד און לײם,
  האָט נאָך װער װאָס צו געניסן,
  טײלט מען זיך מיט יעדן ביסן,
  װאַסער, װי די גבֿירים װײַן,
  גיסן מיר אין זיך ארײַן.

  אײנס, צװײ, דרײַ, פֿיר,
  אַרבעטלאָזע זענען מיר,
  יאָרן לאַנג געאַרבעט שװער,
  און געשאַפֿט אַלץ מער און מער
  הײַער, שלעסער, שטעט און לענדער
  פֿאַר אַ הײַסעלע פֿאַרשװענדער,
  אונדזער לױן דערפֿאַר אין װאָס?
  הונגער, נױט און אַרבעטלאָז.

  אײַנס, צװײ, דרײַ, פֿיר,
  אָט אזױ מאַרשירן מיר,
  אַרבעטלאָזע, טריט נאָך טריט
  און מיר זינגען זיך אַ ליד
  פֿון אַ לאַנד, אַ װעלט אַ נײַע,
  װוּ עס לעבן מענטשען פֿרײַע,
  אַרבעטלאָז איז קײן שום האַנט,
  אין דעם נײַעם פֿרײַען לאַנד.

%}