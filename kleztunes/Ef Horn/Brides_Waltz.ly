% This LilyPond file was generated by Rosegarden 1.6.1
\version "2.10.0"
% point and click debugging is enabled
\header {
    copyright = "Ultimate Klezmer p 66"
    instrument = "Ef Horn"
    title = "Romanian Serba"
    tagline = "Created using Rosegarden 1.6.1 and LilyPond"
}
#(set-global-staff-size 20)
#(set-default-paper-size "a4")
global = { 
    \time 2/4
    \skip 2*51  %% 1-51
}
globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
  #(set-paper-size "letter")
    \tempo 4 = 120  \skip 2*51 
}
\score {
    <<
        % force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0

        \context Staff = "track 1" << 
            \set Staff.instrumentName = \markup { \column { " " } }
            \set Score.skipBars = ##t
  #(set-paper-size "letter")
            \set Staff.printKeyCancellation = ##f
            \new Voice \global
            \new Voice \globalTempo

            \context Voice = "voice 1" {
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1

                \time 2/4
                \clef "treble"
                \key d \minor
                a' 8 ^\markup { \bold "Dm" } d'' e'' f''  |
                e'' 8 d'' cis'' a'  |
                d'' 2 ~  |
                d'' 4 r  |
%% 5
                d'' 8 f'' gis'' a''  |
                gis'' 8 f'' e'' f''  |
                gis'' 8 a'' 4. ~  |
                a'' 4. \times 2/3 { c''' 16 b'' a'' }  |
                gis'' 8 a'' b'' c'''  |
%% 10
                d''' 8 c''' b'' a''  |
                gis'' 8 a'' b'' c'''  |
                b'' 8 a'' gis'' f''  |
                e'' 8 ^\markup { \bold "A" } f'' gis'' a''  |
                \times 2/3 { a'' 8 gis'' f'' } \times 2/3 { f'' e'' d'' }  |
%% 15
                d'' 2 ^\markup { \bold "Dm" } ~  |
                d'' 4 r8 a'  |
                d'' 4 r8 c''  |
                a'' 4 ^\markup { \bold "F" } \times 2/3 { gis'' 8 a'' b'' }  |
                c''' 4 \times 2/3 { b'' 8 c''' d''' }  |
%% 20
                \times 2/3 { ees''' 8 d''' c''' } \times 2/3 { b'' c''' d''' }  |
                \times 2/3 { c''' 8 b'' bes'' } \times 2/3 { a'' g'' f'' }  |
                a'' 4 \times 2/3 { gis'' 8 a'' b'' }  |
                c''' 4 \times 2/3 { b'' 8 c''' d''' }  |
                \times 2/3 { ees''' 8 d''' c''' } \times 2/3 { c''' b'' aes'' }  |
%% 25
                b'' 16 d''' c''' 4 ^( c'' 8 )  |
                a'' 4 \times 2/3 { gis'' 8 a'' b'' }  |
                c''' 4 \times 2/3 { b'' 8 c''' d''' }  |
                \times 2/3 { ees''' 8 d''' c''' } \times 2/3 { b'' c''' d''' }  |
                \times 2/3 { c''' 8 b'' bes'' } \times 2/3 { a'' g'' f'' }  |
%% 30
                g'' 8 a'' bes'' c'''  |
                a'' 8. ^( g'' 16 ) \times 2/3 { bes'' 8 ^\markup { \bold "C" } a'' g'' }  |
                f'' 2 ^\markup { \bold "F" } ^( 
                % warning: overlong bar truncated here |
                f'' 4 ) r8 c''  |
                f'' 4 r8 a''  |
%% 35
                gis'' 8. ^\markup { \bold "Dm" } ^( a'' 16 ) f'' 8. ^( a'' 16 )  |
                e'' 8. ^( a'' 16 ) < c'' cis'' > 8. ^( a'' 16 )  |
                d'' 2 ~  |
                d'' 4. d''' 8  |
                cis''' 8. ^\markup { \bold "Gm" } ^( d''' 16 ) bes'' 8. ^( d''' 16 )  |
%% 40
                a'' 8. ^( d''' 16 ) d'' 8. ^( d''' 16 )  |
                g'' 2 ~  |
                g'' 4. f''' 8  |
                f''' 8 ^\markup { \bold "A" } d''' cis''' 4 ^( 
                % warning: overlong bar truncated here |
                cis''' 8 a'' ) \times 2/3 { bes'' a'' g'' }  |
%% 45
                a'' 8 gis'' a'' 4 ^( 
                % warning: overlong bar truncated here |
                a'' 8. gis'' 16 ) \times 2/3 { a'' 8 gis'' f'' }  |
                e'' 8 f'' gis'' a''  |
                \times 2/3 { a'' 8 gis'' f'' } \times 2/3 { f'' e'' d'' }  |
                d'' 2 ^\markup { \bold "Dm" } ~  |
%% 50
                d'' 4 r8 a''  |
                d'' 4 r  |
                \bar "|."
            } % Voice
        >> % Staff (final)
    >> % notes

    \layout { }
} % score