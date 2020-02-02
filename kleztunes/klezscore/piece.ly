%%%%% piece.ly
%%%%% (This is the global definitions file)
\version "2.12.2"

global= {
  \time 2/4
  \key d \minor
}
#(set-default-paper-size "letter")
%melody =  \transpose c d \relative c' {  %transpose for clarinet

\header{
  title= "MISU Klezmer Medley"
  subtitle="Doina, Hora ,Asher Nosan Lonu, Chusidl, & Kolemeike"
  composer= "Pieces from Belf Orchestra, Abe Schwartz & Anon."
  instrument ="For String Orchestra"
  arranger= "Harry & Judy Sweet"
}

%*********************************snippits variables**********************

horaending = { g8. g'16 d bes g4. }

chusidlleadin = {
  a,8 f' d f
  a,8. f'16 d8 f
  a,8 f' d f
  a,8. f'16 d8 f
}

%*****************arpeggios**********************************************
gm={ <g d'>8\downbow <bes d>-- (<bes d>-- <bes d>--)  }
cm={ <c' g'>8\downbow <c' ees'> (<c' ees'> <c' ees'>)  }
gc= { g8\downbow d' (c' ees')}
ef= { a\downbow f'( f' f' ) }
dm={ <a d'>8\downbow <a d'>  (<a f'> <a d'>) }
dM={ <a d'>8\downbow <a d'>  (<a fis'> <a d'>)  }
dg={a'8\downbow d' g bes' }
fmaj={c8\downbow f (f f) }
gf={g8 bes a c}
am={a8 c (a e)}
%*****************************************


AhserSecundPart = {

  \time 2/4
  %A  part Asher not relative
  <g d'>8 ^\markup{\box B}\downbow <g bes>-- (<g bes>-- <g bes>--)
  \gm \gm \gc \cm \cm \dM \gm

  %repeat of A part
  <g d'>8 \downbow <g bes>-- (<g bes>-- <g bes>--)
  \gm \gm \gc \cm \cm \dM \gm

  %B part
  \gc \fmaj \gc \fmaj \cm \gm \dM \gm

  %repeat of A part 1/5 higher
  %\gm \gm \gc \cm \cm \dM \gm  original key
  \dm \dm \dm d8 fis (g bes) \gm \gm  a cis e a \dm
}

HoraStart = {
  d4\p ^\markup { \box A}g8
  bes4 d8
  cis8\prall d \upbow ( d)
  d8. d16 d e

  f8. f16 e d
  cis8.\prall bes16 bes a
  cis8 d  (d)
  d8. bes16 a g
}


Violinone = \new Voice {  \relative c'{
    \set Staff.instrumentName = #"Violin 1 "
    % *******************Doina**************
    %\time 24/4
    \once \override Staff.TimeSignature #'stencil = ##f
    d2:16^\markup{"Solo Doina, Other Instr. Tremolo"}
    (d:16 d:16 d:16 d:16 d:16 d:16 d:16)


    %*******************Hora***************
    \key d \minor
    \time 3/8
    r4. r4.
    %\repeat volta 2{
    d4\p ^\markup { \box A}^"solo"g8|
    bes4 d8
    cis8\prall d \upbow ( d)
    d8. d16 d e

    f8. f16 e d
    cis8.\prall bes16 bes a
    cis8 d\upbow  (d)
    d8. bes16 a g
    %repeat of first 8 measures
    d4 ^"tutti" g8
    bes4 d8
    cis8\prall d \upbow ( d)
    d8. d16 d e

    f8. f16 e d
    cis8.\prall bes16 bes a
    cis8 d  (d)
    d8. bes16\ff a g
    %end of A part
    d4  g8
    bes4 d8
    cis4.\prall \fff
    (cis8.) cis16\upbow \p d e
    f8.-> e16 d cis
    cis8.-> bes16 bes a
    \horaending  %\ff

    % }


    \repeat volta 2{

      <bes, d>8\p r <bes d>%Gm chord
      <a d>8 r <a d>%Dm
      <a e'>8 r <a e'>%A
      <a e'>8 r <a e'>%A
      <a e'>8 r <a e'>%A
      <a e'>8 r <a e'>%A
      <bes d>8 r <bes d>%Gm chord
      <bes d>8 r <bes d>%Gm chord
      <bes d>8 r <bes d>%Gm chord
      <a d>8 r <a d>%Dm
      <a e'>8 r <a e'>%A
      <a e'>8 r <a e'>%A
      <a e'>8 r <a e'>%A
      <bes d>8 r <bes d>%Gm chord
      <bes d>8 r <bes d>%Gm chord
      <bes d>8 r <bes d>%Gm chord

    }

    \repeat volta 2{
      cis'8\p ^\markup{\italic "8va...?"} d cis16 bes
      cis8 d4
      g,8.\ff g16 a bes
      cis8.\prall bes16 a g
      cis8\p  d cis16 bes
      cis8 d4
      d8.\ff d16 e f
      g8. f16 e d
      cis8\p d cis16 bes
      cis8 d4
      g8.\f ^\< g16 a bes
      c4.\fff \!
      bes8.\p a16 g bes
      a8. g16 fis a
      g8. g16 d bes

      %crescendo
      %  ^\< and stop at \!

    }

    \alternative { {g4. }{g8 r r } }

    %Ahsher Nosan Lonu
    \tempo 4=50
    \time 2/4
    %\repeat volta 2{
    %play A part 2x
    d16->\p ^\markup {\box B} g g g g8 g
    g8 d g bes
    g16-> bes bes bes bes8 bes
    bes8 g bes c
    g16-> c c c c8 c
    c8 bes c ees
    d c bes a
    g8 \times 2/3{bes16 a c} bes8 a16 g


    %Judy's walking line
    g8-1 bes d g
    bes, d g bes
    d, g bes-2 d
    g, bes, d ees
    c,8 c' g ees
    g, g' d bes
    bes a g' fis
    g4 g,
    %try this...  <ees g>4 <d g,>



    r2
    r2
    g''16->\p-1 a bes8
    a16 bes c8
    g8-4 f f f


    f8->\f ^\> ees d c
    bes f bes c
    d c bes a
    g2^\!

    %repeat of A up fifth

    a16->\ff d d d d8 d
    d8 a d f
    d16 f f f f8 f
    f8 d f g
    d16 g g g g8 g
    g8 f g bes
    a g f e
    d2


    %Intro to chusidl

    r2 r2 r2 r2


    %******************************chusidl******************
    \tempo  4= 80

    \key g \minor
    \repeat volta 2{
      d8 ^\markup{\box C} d  ees16 (d) ees c %slurs
      d8 d  ees16 (d)ees c
      b8^"kr~" c d-1^"kr~" ees
      fis8.\prall  ees16 fis16 ees d c
      d8 d  ees16 (d)ees c
      d8 d  ees16 (d)ees c
      b16 c d ees
      fis g fis ees
      ees d (d4.)
    }


    \repeat volta 2{
      fis2\glissando  a-1
      \grace ees' (d4) a \grace g (fis) d
      fis8\prall ees16 fis ees8 d
      fis8\prall ees16 fis ees8 d
      r8 d\upbow fis16 ees fis16 a
      g4 g
      %\times 2/3{fis8 g fis}
      %\times 2/3{ees8 fis ees}
      fis16 g fis8
      ees16 fis ees8
      %\times 2/3 {d8 ees d}c4\trill
      d16 ees d8 c4\trill

      \grace c b16 c d ees
      fis g fis ees
      ees d (d4.)
    }
    %4 measures transition
    r2 r2 r2 r2

    %******************************kolemeike************************
    \key c \major

    \tempo 4=100
    \repeat volta 2{
      a8 ^\markup { \box D}
      a'-. a-. a-.
      a-. a-. f e16 f|
      d8 a'-.
      a-. a-. f e16 f a8 r8
      r8 a8\upbow -.  a-.  a-.
      gis16 a b a gis f e d|
      e f g f e d e f
      d2
    }

    \repeat volta 2{
      e16  f g4 g16 (f)|
      a g g f a g g f
      g f g8 c b a gis f a
      e16 f g f e d e f
      d8 a16 a d8\upbow d\upbow
      e16 f g f e d e f
      d8-> r4.



    }

    \repeat volta 2{
      d'8 a\upbow r8 g\upbow
      f e d a|
      d e f g
      a2|
      % 3 repeats of last 4 measures
      a,8 \fff cis a cis
      d f g16 f e d
      a8 cis a cis
      d8->r d-> r
      %
      a'8 cis a cis
      d-1 f-3 g16-4 f e d
      a8-1 cis a cis
      d8->r d-> r
      %
      a8 cis a cis
      d f g16 f e d
      a8 cis a cis
      d8->\downbow  r d->\downbow r
    }



    \bar "|." }}   %*********************************



%**********************************************
%**********************************************
%**********************************************
%**********************************************
Violintwo = \new Voice  \relative c' {
  \set Staff.instrumentName = #"Violin 2 "
  \once \override Staff.TimeSignature #'stencil = ##f
  %Doina
  g'2:16 (g:16 g:16 g:16 g:16 g:16 g:16 g:16)

  %Hora
  \time 3/8
  \key d \minor
  r4. r4.
  %first 8 bars repeat
  <bes, d>8\p^\markup{\box A} ^"pizzicato" r <bes d>
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  <a d>8 r <a d>%Dm
  <a e'>8 r <a e'>%A
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord


  <bes d>8^"tutti" r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  <a d>8 r <a d>%Dm
  <a e'>8 r <a e'>%A
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  %end repeat

  %rest of A section====================
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord
  <a e'>8 r <a e'>%A
  <a e'>8 r <a e'>%A
  <a d>8 r <a d>%Dm
  <a e'>8 r <a e'>%A
  <bes d>8 r <bes d>%Gm chord
  <bes d>8 r <bes d>%Gm chord


  %B section=========================
  \repeat volta 2{
    d'8\p  g e
    f8.\prall f16 f e
    cis8 f e
    d8. cis16 cis bes
    cis8 d cis
    cis8. bes16 bes a
    d8 r d
    g4.
    d8  g e
    f8. f16 f e
    cis8 f e
    d8. cis16 cis bes
    cis8 d cis
    bes8. bes16 bes a
    \horaending
  }
  %C section=========================
  \repeat volta 2{

    r4.
    r4.
    %molly's harmony
    d8.\ff d16 e f|
    g8. f16 e d
    r4.
    r4.
    g8.\ff g16 a bes
    cis8. bes16 a g

    %d'8.\ff d16 e f
    %g8. f16 e d
    r4.
    r4.

    g8. g16 a bes %maybe a harmony here
    c4.

    bes8. a16 g bes|
    a8. g16 fis a
    g,8. g'16 d bes
    %\horaending
  }

  \alternative { {g4. }{g8 r r } }


  \time 2/4
  \relative c' {
    g8 ^\markup{\box B} g d' bes~
    bes8 g bes d
    g8 g d bes~
    bes g c ees
    c ees g ees~
    ees c ees g
    a8 c bes a
    g2

    %{
      g8^\markup{\box B} bes d bes
      g8 bes d bes
      g8 bes d bes
      g8 bes c ees|
      c8 ees g ees
      c8 ees g ees
      c8 ees g ees
      g,8 bes d bes
    %}
    d16  g g g g8 g
    g8 d g bes
    g16-> bes bes bes bes8 bes
    bes8 g bes c
    g16-> c c c c8 c
    c8 bes c ees
    d c bes a
    g2

    g16->\p a bes8
    a16 bes c8
    g8 f f f
    g16->\p a bes8
    a16 bes c8
    g8 f f f
    f'8->\f ^\> ees d c
    bes f bes c
    d c bes a
    g2^\!

    %repeat of A up fifth

    a16->\ff d d d d8 d
    d8 a d f
    d16 f f f f8 f
    f8 d f g
    d16 g g g g8 g
    g8 f g bes
    a g f e
    d2



    % Chusidl A part=======================

    %lead in bit

    \chusidlleadin
    %start of A melody
    \key g \minor
    \repeat volta 2{

      d8^\markup {\box C} d ees16 d ees c
          d8 d ees16 d ees c
          b8 c d ees





      fis8.\prall  ees16 fis16 ees d c
      d8 d  ees16 (d)ees (c)
      d8 d  ees16 (d)ees (c)
      b16 c d ees
      fis g fis ees
      ees d (d4.)
    }
    %B part============Chusidl===============
    \repeat volta 2{
      % fills
      r8 d16 d d d ees c|
      r8 fis16 g a bes a g |
      r8 d r8 a'|
      r8 fis r8 d|

      <a d>8 r4.
      <a d>8 r4.
      r2
      r8 <g d'> <g d'> <g d'>
      d'8 fis c ees
      d8 fis c ees
      a8 d fis d
      d2
    }
    %4 measures transition
    r2 r2 r2 r2

    %kolemeike outside relative block
    \key  c \major
    \repeat volta 2{
      a8 ^\markup{\box D} f' d f|
      a,8. f'16 d8 f|
      f8 a d, a'|
      f8. a,16 d8 f|
      <a, d>8 -> r4.|
      r8 <a d>-> r <a d>->|
      r8 <a e'>-> r <a e'>->|
      <a d>8 -> r4.|
    }
    \repeat volta 2{
      %part B
      r8 <g d'>-> r <g d'>->|
      r8 <g d'>-> r <g d'>->|
      r8 <g d'>-> r <g d'>->|
      r8 <a d>-> r <a d>->|
      r8 <a e'>-> r <a e'>->|
      r8 <a d>-> r <a d>->|
      r8 <a e'>-> r <a e'>->|
      r8 <a d>-> r <a d>->|
    }
    %part C


    d8 a\upbow r8 g\upbow
    f e d a
    d e f g
    a2|
    % 3 repeats of last 4 measures
    a,8 \fff cis a cis
    d f g16 f e d
    a8 cis a cis
    d8->r d-> r
    %
    a'8 cis a cis
    d f g16 f e d
    a8  cis a cis
    d8->r d-> r
    %
    a8 cis a cis
    d f g16 f e d
    a8 cis a cis
    d8->r d-> r

    %end kokemeike

  } %relative block
  \bar "|." }   %*********************************
%uncomment next line and set clef to treble
%for playable  violin  viola part

%Viola = \new Voice  \relative c' {
%Viola = \new Voice  \transpose c d' {
  Viola = \new Voice  {
  \set Staff.instrumentName = #"Viola "
  \clef alto
  \tempo 4=60
  %tremolo bit behind doina
  \once \override Staff.TimeSignature #'stencil = ##f
  d2:16 (d:16 d:16 d:16 d:16 d:16 d:16 d:16)


  %hora
  \time 3/8
  \key d \minor
  r4. r4.  %lead in from doina

  d4\p ^\markup { \box A}^"solo"g8
  bes4 d8
  cis8\prall d \upbow ( d)
  d8. d16 d e

  f8. f16 e d
  cis8.\prall bes16 bes a
  cis8 d  (d)
  d8. bes16 a g
  %harmony
  bes4^"tutti" d8|
  g4 bes8
  a8 bes bes
  bes8. bes16 bes cis
  d8. d16 gis bes
  a8.  g16 g fis
  a8 bes bes|
  g8. bes16\ff a g


  <a d>8  r <a d>%Dm chord
  <a d>8 r <a d>%Dm chord
  <a d>8 r <a d>%Dm chord
  <a d>8 r <a d>%Dm chord
  <a e'>8 r <a e'> %A chord
  <a e'>8 r <a e'> %A chord
  <a d>8 r <a d>%Dm chord
  <a d>8 r4

  %B section==========================
  \repeat volta 2{
    <bes d>8\p r <bes d>%Gm chord
    <a d>8 r <a d>%Dm
    <a e'>8 r <a e'>%A
    <a e'>8 r <a e'>%A
    <a e'>8 r <a e'>%A
    <a e'>8 r <a e'>%A
    <bes d>8 r <bes d>%Gm chord
    <bes d>8 r <bes d>%Gm chord
    <bes d>8 r <bes d>%Gm chord
    <a d>8 r <a d>%Dm
    <a e'>8 r <a e'>%A
    <a e'>8 r <a e'>%A
    <a e'>8 r <a e'>%A
    <bes d>8 r <bes d>%Gm chord
    <bes d>8 r <bes d>%Gm chord
    <bes d>8 r <bes d>%Gm chord
  }

  %C section=========================
  \repeat volta 2{
    r4.
    r4.
    g8.\ff g16 a bes|
    cis8. bes16 a g
    r4.
    r4.
    d8.\ff d16 e f
    g8. g16 e d
    r4.
    r4.
    g8. g16 a bes %maybe a harmony here
    c4.
    bes8. a16 g bes|
    a8. g16 fis a
    g8. g'16 d' bes
    %\horaending
  }

  \alternative { {g4. }{g8 r r } }

  % \AhserSecundPart
   \time 2/4
   \key d\minor
   \relative c'{
  g8 ^\markup { \box B} bes (bes-- bes--)
  g8 bes (bes-- bes--)
  g8 bes (bes-- bes--)
  g8 bes c ees
  c ees (ees--  ees--)
  c ees (ees--  ees--)
  d fis (fis-- fis--)
  g2
  %repeat first part
  g,8 bes (bes-- bes--)
  g8 bes (bes-- bes--)
  g8 bes (bes-- bes--)
  g8 bes c ees
  c ees (ees--  ees--)
  c ees (ees--  ees--)
  d fis (fis-- fis--)
  g2

 %leave 2 measure rest then
  %2 measures harmony
  %then double melody
  r2 r2
  bes,8 c16 d c8 d16 ees
  bes8 a a a %end harmony
  f'8 ees d c
  bes f bes c
  d8 c bes a
  g2

  \transpose g' d'{
  g8 bes (bes-- bes--)
  g8 bes (bes-- bes--)
  g8 bes (bes-- bes--)
  g8 bes c' ees'
  c' ees' (ees'--  ees'--)
  c' ees' (ees'--  ees'--)
  d' fis' (fis'-- fis'--)
  g'2
   }

}

  r2 r2 r2 r2
  %s2*4   %fill in later for chisidl
  %chusidl
  \key g \minor
  \repeat volta 2{

    d'8^\markup {\box C} d' r  ees'       %d/cm
    d'8 d' r  ees'                    %d/cm
    b8 c' d' ees'                         %bit o melody  or d
    fis'4\prall  r8 g'                        % d chord
    fis'8 fis' r g'                      %d/cm
    fis'8 fis' r g'                        %d/cm
    fis'8 ees' d' c'
    %b8 c' d' ees'                             %d
    d'2
  }
  %B part====================
  \repeat volta 2{
    % fills
    r8 d16 d d d ees c|
    r8 fis16 g a bes a g |
    r8 d r8 a|
    r8 fis r8 d|

    <a d>8 r4.
    <a d>8 r4.
    r2
    r8 <g d'> <g d'> <g d'>
    d'8 fis c ees
    d8 fis c ees
    a8 d fis d
    d2
  }
  %fill before Kolemeike
  a8 f d f
  a f d r
  a f d f
  a f d r
  %kolemeike
  %kolemeike outside relative block
  \key c \major
  \repeat volta 2{
    a8 ^\markup{\box D} f' d f|
    a8. f16 d8 f|
    f'8 a d a|
    f8. a16 d8 f|
    <a d>8 -> r4.|
    r8 <a d>-> r <a d>->|
    r8 <a e'>-> r <a e'>->|
    <a d>8 -> r4.|
  }
  %part B========================
  \repeat volta 2{
    r8 <g d'>-> r <g d'>->|
    r8 <g d'>-> r <g d'>->|
    r8 <g d'>-> r <g d'>->|
    r8 <a d>-> r <a d>->|
    r8 <a e'>-> r <a e'>->|
    r8 <a d>-> r <a d>->|
    r8 <a e'>-> r <a e'>->|
    r8 <a d>-> r <a d>->|
  }
  %part C

  r8 <a d>-> r <a d>->|
  r8 <a d>-> r <a d>->|
  r8 <a d>-> r <a d>->|
  r8 <a d>-> r <a d>->|


  r8 <a e'>-> r <a e'>->|
  r8 <a d>-> r <a d>->|
  r8 <a e'>-> r <a e'>->|
  r8 <a d>-> r <a d>->|
  %repeat of half of part C
  r8 <a e'>-> r <a e'>->|
  r8 <a d>-> r <a d>->|
  r8 <a e'>-> r <a e'>->|
  r8 <a d>-> r <a d>->|

  r8 <a e'>-> r <a e'>->|
  r8 <a d>-> r <a d>->|
  r8 <a e'>-> r <a e'>->|
  r8 <a d>-> r <a d>->|
  %end kokemeike

  %s2*37



  \bar "|." }   %*********************************
%***********************************************
%************************************************Cello*****************
Cello = \new Voice { \relative c'   {
  %Cello = \new Voice { \relative c' {
    \set Staff.instrumentName = #"Cello "
    \clef bass
    \tempo 4=60
    \once \override Staff.TimeSignature #'stencil = ##f
    %Diona
    g,2^"drone" (g2 g2 g2 g2 g2 g2 g2)
    %g8\p r d
    %g8 r d


    %Hora arco first 2 bars lead in....
    \key d \minor
    \time 3/8
    g8\pp r g
    g8 r g
    g8^\markup{\box A}  r d|
    g8 r d
    g8 r d
    g8 r d
    d'8 r a|
    a8 r e
    g8 r d
    g8 r d
    %repeat of first 7 bars
    g8^"tutti" r d|
    g8 r d
    g8 r d
    g8 r d
    d8 r a'|
    a8 r e
    g8 r d
    r8. bes'16 \ff a g %leads in to next part
%%%%
    d4 g8
    bes4 d8
    cis4.\prall
    (cis8.) cis16 d e
    f8.-> e16 d cis
    cis8.-> bes16 a bes
    \horaending

    %B part=================
    \repeat volta 2{
      d'8\p  g e
      f8.\prall f16 f e
      cis8 f e
      d8. cis16 cis bes
      cis8 d cis
      cis8. bes16 bes a
      d8 r d
      g4.
      d8  g e
      f8. f16 f e
      cis8 f e
      d8. cis16 cis bes
      cis8 d cis
      bes8. bes16 bes a
      \horaending
    }
    %c part=======================
    \repeat volta 2{
      a8 r a
      a8 r a
      g8 r g
      a8 r a|
      cis8\p  d cis16 bes
      cis8 d4
      %a8 r a
      %a8 r a
      g8 r g
      g8 r g|
      a8 r a
      a8 r a
      g8 r g
      c8 r c
      g8 r g|
      d8 r d
      g8 r g
      %g4.
      %\horaending
    }

    \alternative { {g4. }{g8 r r } }
    %Asher=========================================
    \time 2/4
    g,2^\markup{\box B}|%gm
    bes4 g4|%gm
    d2|%gm
    g4 c4|%gm=>cm
    ees,2|%cm
    g2|%gm
    d2|%dm
    g2|%gm

    %repeat of 1st part
    g2 |%gm
    bes4 g4|%gm
    d2|%gm
    g4 c4|%gm=>cm
    ees2|%cm
    g2|%gm
    d2|%dm
    g2|%gm

    %B section==================================
    g8 d a c |%gm=>f
    f4 f4 |%f
    g8 d a c  |%gm=>f
    f4 f4| %f
    r4. f8 |%f
    r4. f8 |%gm
    d2 |%dm
    g2| %gm

    %move first section up to D
    \transpose g d{
      g4->\p d8 g~g g d g  %2 measures gm
      g4->\p d8 g~g g d g  %2 measures gm
      %g4-> d8 g~g g c g  % gm gm=>cm
      c4-> ees8 g~g g ees c %2 measuers cm
      f4-> a8 f~f g bes g   %dm => gm

    }


    %4 bars between tunes

    \chusidlleadin
    %Chusidl
    \key g \minor
    %added melody double, old stuff commented below
    \repeat volta 2{
    d8 ^\markup{\box C} d  ees16 (d) ees c %slurs
    d8 d  ees16 (d)ees c
    b8 c d ees
    fis8.\prall  ees16 fis16 ees d c
    d8 d  ees16 (d)ees (c)
    d8 d  ees16 (d)ees (c)
    b16 c d ees
    fis g fis ees
    ees d (d4.)
    }

    %B section================Chusidl=====
    \repeat volta 2{
    r8 fis, fis fis
    r fis fis fis
    r fis r d
    r fis r d
    d2
    d2
    d2
    g2
    d4 c
    d4 c
    d2
    d2
  }
    %end chusidl
    %4 measures transition
    d8 r4.
    r4. a'8
    d,8 r4.
    r4. d8
    %kolemeike A===========================
    \key c \major
    \repeat volta 2{
      d'8 ^\markup{\box D}->^"pizz" r4.
      r2
      d8-> r4.
      d8-> r4.
      a8 r d r
      a8 r e r
      a8 r d r
      a8 r d r
    }
    %repeat
    % B section=========================
    \repeat volta 2{
      r2
      r8 g r4|
      r8 g r d
      d2
      a2
      d2
      a2
      d2
    }
    % C section
    d2
    d2
    d2
    d2
    a2
    d2
    a2
    d2
    % extra repeats of last 4 bars
    a2
    d2
    a2
    d2
    a2
    d2
    a2
    d2


\bar "|."}}   %**********************************

music = {
  <<
    \tag #'score \tag #'vn1 \new Staff { << \global \Violinone >> }
    \tag #'score \tag #'vn2 \new Staff { << \global \Violintwo>> }
    \tag #'score \tag #'vla \new Staff { << \global \Viola>> }
    \tag #'score \tag #'vlc \new Staff { << \global \Cello>> }
  >>
}






%{ Uncomment this block when using separate files


%}