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
	\repeat volta 2{
                a' 8 ^\markup { \bold "Dm" } d''-1 e'' f''  |
                e'' 8 d'' cis''-1 a'  |
                d'' 2 ~  |
                d'' 4 r  |
%% 5
                d'' 8-3 f'' gis'' a''  |
                gis'' 8 f'' e'' f''  |
                gis'' 8 a'' 4.-3 ~  |
                a'' 4. \times 2/3 { c''' 16-3 (b'' a'') }  |
                gis'' 8-1 a''-1b'' c'''  |
%% 10
                d''' 8 c''' b'' a''  |
                gis'' 8-1 a'' b'' c'''  |
                b'' 8 a'' gis'' f''-3  |
                e'' 8 ^\markup { \bold "A" } f'' gis'' -1a''-2  |
                \times 2/3 { a'' 8-2 (gis''-2 f'') } \times 2/3 { f'' (e'' d'') }  |
%% 15
                d'' 2 ^\markup { \bold "Dm" } ~  |
	}
	\alternative {{d'' 4 r8 a'  |} {  d'' 4 r8 c''  |}  }
	
	
	\repeat volta 2{
                a'' 4-2 ^\markup { \bold "F" } \times 2/3 { gis'' 8-1 (a''-1 b''-2) }  |
                c''' 4 \times 2/3 { b'' 8 (c''' d'''-4 )}  |
%% 20
                \times 2/3 { ees''' 8-4 d'''-4 c''' } \times 2/3 { b'' c''' d''' }  |
                \times 2/3 { c''' 8 b''-2 bes''-2 } \times 2/3 { a'' -1g''-4 f''-3 }  |
                a'' 4 -1\times 2/3 { gis'' 8-1 (a''-1 b'' )}  |
                c''' 4 \times 2/3 { b'' 8 (c''' d''' -4)} |
                \times 2/3 { ees''' 8 -4 d''' c''' } \times 2/3 { c''' b'' aes'' }  |
%% 25
                b'' 16 (d''') c''' 4 ^( c'' 8 -1)  |
                a'' 4 -2\times 2/3 { gis'' 8 (a''-1 b'' )}  |
                c''' 4 \times 2/3 { b'' 8 (c''' d'''-4 )}  |
                \times 2/3 { ees''' 8-4 d''' c''' } \times 2/3 { b'' c''' d''' }  |
                \times 2/3 { c''' 8 b''-2 bes''-2 } \times 2/3 { a''-1 g''-4 f''-3 }  |
%% 30
                g'' 8-4 a''-1 bes''-2 c'''-3  |
                a'' 8. -3^( g'' 16 ) \times 2/3 { bes'' 8 ^\markup { \bold "C" } (a'' g'') }  |
                f'' 2 ^\markup { \bold "F" } ^( 
                % warning: overlong bar truncated here |
	}
	\alternative {{ f'' 4 ) r8 c''  |} {f'' 4 r8 a''  |}  }
	
        \repeat volta 2{
%% 35
                gis'' 8. ^\markup { \bold "Dm" } ^( a'' 16 ) f'' 8. ^( a'' 16 )  |
                e'' 8. ^( a'' 16 ) < cis'' > 8. ^( a'' 16 )  |
                d'' 2 ~  |
                d'' 4. d''' 8-4  |
                cis''' 8. ^\markup { \bold "Gm" } ^( d''' 16 ) bes'' 8. ^( d''' 16 )  |
%% 40
                a'' 8. ^( d''' 16 ) d'' 8. ^( d''' 16 )  |
                g'' 2-2 ~  |
                g'' 4. f''' 8-3  |
                f''' 8 ^\markup { \bold "A" } d'''-2 cis''' 4-1 ^( 
                % warning: overlong bar truncated here |
                cis''' 8 a'' -3) \times 2/3 { bes'' (a'' g''-2 )}  |
%% 45
                a'' 8 gis'' a'' 4 ^( 
                % warning: overlong bar truncated here |
                a'' 8. gis'' 16 ) \times 2/3 { a'' 8 (gis'' f'') }  |
                e'' 8 f'' gis'' a''  |
                \times 2/3 { a'' 8 (gis'' f'') } \times 2/3 { f'' (e'' d'' )}  |
                d'' 2 ^\markup { \bold "Dm" } ~  |
%% 50
                
               
	}	
	\alternative {{ d'' 4 r8 a''  |} { d'' 4 r  |}  }
                \bar "|."
            } % Voice
        >> % Staff (final)
    >> % notes

    \layout { }
} % score
