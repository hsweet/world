\version "2.24.0"
\language "english"
%\pointAndClickOff
\paper{
  tagline = ##f
  %#print-all-headers ##t
  #(set-paper-size "letter")
}


% --- Definitions ---
melody = \relative c' {
  \clef treble
  \key d \minor
  \time 3/4
  \partial 8*2 \tuplet 3/2 {a8 d e}
  f8 d r d \tuplet 3/2{ g8 [g d] }
  d2 \tuplet 3/2 {a8 d e}
  f8 d r4 \tuplet 3/2{d8 c d}
  c4(c8.) c16 \tuplet 3/2 {c8 f g}
  a8 f4 a8 c16 c bf a
  g4. g8 \tuplet 3/2{d'8 [d, d]}
  d16 d d8 r f \tuplet 3/2 {g8 [g ef]}
  d4. a'8 \tuplet 3/2{c8 [bf a]}
  c4. a8 \tuplet 3/2 {g16 [f g]} f16 g

  f4. a8 c16 c d c
  f4. c8 c16 bf a bf
  a4. a8 \tuplet 3/2 {bf8 [a g]}
  bf4. a8 \tuplet 3/2 {a8 [g f]}
  a4. g8 \tuplet 3/2 {g8 [f e]}
  g2 \tuplet 3/2 {f8 e d}
  a'4. a8 \tuplet 3/2 {bf8 [a g]}
  bf4. a8 \tuplet 3/2 {a8 [g f]}
  a4. g8 \tuplet 3/2 {g8 [f e]}
  g2 \tuplet 3/2 {gs8 a f}
  \time 2/4
  d4 r
  r2
  \break
  \repeat volta 2{
    f2 f8 f g16 f g8 f2 f8 f g16 f g8
    a8 g16 a g8 f16(g) f16 e d8 \tuplet 3/2 {g8 g d}
    f2 f16 a c bf a bf a g
    f2 f8 f g16 f g8 f2 f8 f g16 f g8
    a8 g16 a g8 f16 g f16 e d8 f g
    d2 d8 r r4
    a'8 a bf16 a bf8 c4 d16 c bf8
    a8 f g c, f4 r8 f8
    a8 a bf16 a bf8 c8 c df16 c bf8
    a8 a g16(f)g8 a2
    f2 f8 f g16 f g8 f2 f8 f g16 f g8
    a8 g16 a g8 f16(g) f16 e d8 \tuplet 3/2 {bf'8 bf a}
  }
  \alternative{
    {d,2 d8 r r4}
    {d2 d4 r4}
  }
}

bassline = \relative c {
  \clef bass
  \key d \minor
  \time 3/4
  % 3/4 Section: Root-Fifth-Fifth
  r4 | d4 a' a | d, d' d, | d a' a | c, g' g |
  f c' c | d, a' a | d, a' a | d, a' a |
  f c' c | f, c' c | f, c' c | d, a' a |
  g d' d | d, a' a | g d' d | a e' e |
  g,,
  d' d | d, a' a | a e' e |

  \time 2/4
  % 2/4 Section: Walking Bass
  d8 e f fis | g a bf b | d,8 a' d, a' | g8 d' g, d' |
  d,8 e f fis | g8 a bf b | d,8 a' d, a' | g8 d' g, d' |
  f,8 c' f, c' | g8 d' g, d' | d,8 a' d, a' | g8 d' g, d' |
  d,8 a' d, a' | g8 d' g, d' | d,8 a' d, a' | a,8 e' a, e' |
  d8 e f fis | g8 a bf b | d,8 a' d, a' | g8 d' g, d' |
  f,8 c' f, c' | g8 d' g, d' | d,8 a' d, a' | c,8 g' c, g' |
  f8 c' f, c' | bf8 f' bf, f' | f,8 c' f, c' | bf8 f' bf, f' |
  f,8 c' f, c' | c,8 g' c, g' | f,8 c' f, c' | g8 d' g, d' |
  f,8 c' f, c' | bf,8 f' bf, f' | f,8 c' f, c' | g8 d' g, d' |
  a,8 e' a, e' | d,8 a' d, a' | g8 d' g, d' | d,8 a' d, a' |
  g8 d' g, d' | f,8 c' f, c' | g8 d' g, d' | d,8 a' d, a' |
  g8 d' g, d' | d,8 a' d, a' | d,2 |
}

% --- Score Output ---
\score {
  <<
    \new Staff { \melody }
    \new Staff { \bassline }
  >>
  \layout { }
}

%{
convert-ly (GNU LilyPond) 2.26.0  convert-ly: Processing `'...
Applying conversion: 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5, 2.23.6,
2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14,
2.24.0
%}
