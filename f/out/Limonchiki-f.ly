\version "2.18.0"
\include "english.ly"
%showLastLength = R1*5
% sudo timidity -iA started midi
\paper{
  tagline = ##t
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  %\clef treble
  \key a \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################



bpart = {
  r8 a r8 gs,8 a,4 \tuplet 3/2 {f8 e  d} |
  a8 a, r8 gs,8 a,4 \tuplet 3/2{f8 e  d}|
  r8 gs, r f e4 d
}

melody = \relative c'{
  \global

  %\repeat volta 2{
  \mark \default
  r8 a16 cs e8 a gs a e8. d16|
  \tuplet 3/2 {cs8 d  e} \tuplet 3/2 { d cs bf} a8 cs e4 % \parenthesize d
  r8 a,16 cs e8 a gs a e8. d16|
  e8 d cs bf a e a4
  %\tuplet 3/2 {fs8 g  a} \tuplet 3/2 { g fs ef} d2  %instrumental line
  % }

  \break
  %\repeat volta 2{
  \mark \default
  r8 a' r8 gs8 a4-> \tuplet 3/2 {f8 e  d} |
  r8 a'8 a  gs8 a4-> \tuplet 3/2{f8 e  d}|
  r8 g r f e4 d
  \tuplet 3/2 {cs8 d  e} \tuplet 3/2 { d cs bf} a8 cs e \parenthesize a
  r8 a r8 gs8 a4-> \tuplet 3/2 {f8 e  d} |
  r8 a'8 a  gs8 a4-> \tuplet 3/2{f8 e  d}|
  r8 g r f e4 d
  \tuplet 3/2 {cs8 d  e} \tuplet 3/2 { d cs bf} a2

  %}

  %{
   \alternative {
     { \tuplet 3/2 {fs8 g  a} \tuplet 3/2 { g fs ef} d8 fs a d}
     { \tuplet 3/2 {fs,8 g  a} \tuplet 3/2 { g fs ef} d2}
   }
  %}

}
%################################# Lyrics #####################
\addlyrics{
  %text = \lyricmode {
  \set stanza = #"1. "
  Ja u -- me -- ju ma -- la -- tit',
  O -- me -- e --  ju   vi -- i -- mo -- latch -- i   vat'
  U -- me -- ju shari -- ki kru -- tit, Kar -- ma -- ni vi -- vo -- rat -- ji -- vat'
  % Chrous
  \set stanza = #"Chorus: "
  Oi li -- mon -- chi -- _ ki,  vi -- i -- moi li -- mon --  chi -- ki
  Gde rast -- jo -- ti vi _ n mo -- _ jom saf -- _ dov \skip2

  Oi li -- mon -- chi -- _ ki,  vi moi li -- mon -- _ chi -- ki
  vi rastjo -- te v So -- ni na bal -- kon -- chi -- ke.

}
\addlyrics {
  \set stanza = #"2. "
  Na baz -- ar -- e sjum i gam,
  _ Sl -- ish -- no r -- az --  go -- vor -- chi --  ki
  Kto -- to sjop -- nul che -- mo -- dan i
  un -- jos lim -- on -- chi -- i -- ki.
}
\addlyrics{
  \set stanza = #"3. "
  Na kos -- tets -- koi Ben -- ja zjil, _
  Be  -- na -- ja ma --  kij  sva -- yu lju -- bil
  Jes -- li jest -- 'u Be -- ni matj
  z -- na -- chit, jest kou -- da pos -- latg
}
%{
\addlyrics{
   \set stanza = #"4. "
  Ja u tjo -- ti no -- che -- val,
  u tjo -- _ ti bi -- li _ gos _ -- ti _
  Ja u tjo -- ti pap -- ra -- sil,
  o -- na ska -- za -- la pos -- le
 % in -- gi -- lizce çevirisi ise şöyle
}
%}

%################################# Chords #######################
harmonies = \chordmode {
  s8  a8*7
  a4 g4:m a2
  s8  a8*7
  a4 g4:m a2
  % Chorus
  d1*2:m
  s8 g8*7:m
  a4 g4:m a2
  d1*2:m
  s8 g8*7:m
  a4 g4:m a2


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose a, g,\harmonies
    }
    \new staff \transpose a, g,\melody
    %\new Voice = "one" { \autoBeamOff \melody }

    %\new TabStaff \with {stringTunings = #mandolin-tuning } \melody
    %{
    \new TabStaff \with
    {tablatureFormat = #fret-number-tablature-format-banjo
    stringTunings = #banjo-open-g-tuning
    }

    {\melody}
    %}

  >>
  \header{
    title= "Limonchiki"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
  \midi {
    \tempo 4 = 60

    % \midi { }
  }
}

% more verses:
\markup{}
\markup {
  \fontsize #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "4."
	\column {
	  ""
	   "Ja u tjoti nocheval, u tjoti bili gosti"
          "ja u tjoti paprasil, ona skazala posle"
          "ingilizce çevirisi ise şöyle"
          "____________________________"
	}
      }
      \hspace #0.2 % vertical distance between verses
      \line { "."
	\column {
	     "I'm so smart and I have a good pair of hands"
          "I can empty your pockets out"
          "before you bat an eye"

          "    ..............chorus"
          "Oi, limonchiki (millions of bucks)"
          "Where do you grow, in which orchard"
          "Oi limonchiki, you grow on Sonya's balcony"
          "     ............."
          "There's riot at the market"
          "and there are rumours:"
          "Someone has picked the whole suitcase"
          "filled with limonchiki"
	 ""
	}
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { ""
	\column {
	  "Benny was born in the heart of Moldavanka,"
           "and with the name like this, he's always taken"
          "for a shmuck (idiot)"
           "."
          "My auntie had a party, with many guests."
          "When I asked if she would take me to bed"
          "she answered:"
          "\"When the guests are all gone\""
	  ""
	}
      }
      \hspace #0.2 % distance between verses
      \line { ""
	\column {
	 ""
	}
      }
    }
    \hspace #0.1 % distance to right margin
  }
}



%{
ja umeju malatit', omeju vimolatchivat'
umeju shariki krutit', karmani vivoratjivat'

ref.
oi limonchiki, vi moi limonchiki
gde rastjoti vi n mojom sadov
oi limonchiki, vi moi limonchiki
vi rastjote v soni na balkonchike

na bazare sjum i gam, slishno razgovorchiki
kto-to sjopnul chemodan i unjos limonchiki

ref.

na kostetskoi benja zjil,
benja maij svayu ljubil
jesli jest'u beni matj
znachit, jest kouda poslatg

ref.

ja u tjoti nocheval, u tjoti bili gosti
ja u tjoti paprasil, ona skazala "posle"
ingilizce çevirisi ise şöyle

i'm so smart and i have a good pair of hands
i can empty your pockets out
before you bat an eye

ref.
oi, limonchiki (millions of bucks)
where do you grow, in which orchard
oi limonchiki, you grow on sonya's balcony

there's riot at the market
and there are rumours:
someone has picked the whole suitcase
filled with "limonchiki"
ref.

benny was born in the heart
of moldavanka, and with the
name like this, he's always taken
for a "shmuck" (idiot)

ref.

my auntie had a party, with
many guests. when i asked if
she would take me to bed she answered
when the guests are all gone

LIMONCHIKI (Little Lemons) (music and lyrics traditional)
I can burgle flats, I can steal beyond all doubt.
I can drink vodka and turn pockets inside out.
 If you want to get married, to find a fine young man,
 First of all, you’ve got know where to get him lemons.
 CHORUS  Oh, little lemons, you are my little lemons,
 Ah, where do you grow in my garden?
 Oh little lemons, you are my little lemons,
 Ah, where do you grow on Sonya’s balcony?

Benya lived on Kostetskaya Street and how he loved his mother.
Benya gave his mother lemons, which made his mother pucker.
%}