%showLastLength = s2*24
\version "2.24.3"
\language "deutsch"

\paper {
  paper-height = 297\mm
  paper-width = 210\mm
}

\header {
  title = "1. Rumänische Rhapsodie"
  subtitle = "in A-Dur"
  composer = "Georges Enescu"
  opus = "Op. 11"
  tagline = ##f
}

\include "cues.ily"
\include "common.ily"
\include "pistonI.ily"
\include "pistonII.ily"
\include "trumpetI.ily"

trumpetII = \relative {
   \transposition c'
   \time 4/4
   \key c \major
  \tempo "Modéré"
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #4

  \partial 8
  r8
  <>-\tweak X-offset #8 \fermata
  R1*8

  \mark #1
  <>-\tweak X-offset #8 \fermata
  R1*8

  \mark #2
  \tempo "Très vite"
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s1
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R1
    }
  >>
  R1*8

  \mark #3
  R1*7

  \section \tempo "Posément" \time 6/8
  R2.*2

  \mark #4
  R2.*8

  \mark #5
  R2.*7

  \mark #6 \section \time 2/4 \tempo \markup {"Mème temps" \tiny { \note { 4 } #UP "=" \note { 4.} #UP }}
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*2
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice
  R2*6
  \tempo "Plus vite"
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" { s2*7 s4. }
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*7
      r4 r8
    }
  >> \oneVoice
  <>^"Tromp."
  e'8\pp-.

  \mark #7 \section \time 6/8
  a-. r r r4 r8
  R2.*8

  \mark #8
  R2.*8

  \mark #9
  R2.*7 |

  \mark #10 \section \time 2/4 \tempo \markup {"Mème temps" \tiny { \note { 4 } #UP "=" \note { 4.} #UP }}
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*3
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      \tweak staff-position #-9 R2*3
    }
  >> \oneVoice
  R2*6

  \mark #11 \section \time 6/8 \tempo "Posément"
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2.*2
    }
    \context Voice = "tpIIvc" {
      \voiceOne
      R2.
      \voiceTwo
      R2.
    }
  >> \oneVoice
  R2.*11

  \mark #12
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2.*9
      \voiceOne
      <>^"Trp. I" \afterGrace gis2.\p\<( {a16 ais}
      \mark #13 \section \time 2/4 \tempo "Plus vite"
      h8\f-.) r r4
    }
    \context Voice = "tpIIvc" {
      \voiceOne
      R2.*5
      \voiceTwo
      R2.*4
      R2.
      R2
    }
  >> \oneVoice
  r4 r8 a\p(
  fis4 a
  d--) fis,8\pp-. r
  fis-. r-. d-. r
  e-. r fis-. r
  R2*5
  <<
    \new CueVoice \relative {
      \oneVoice <>^"Trp. I"
      r4 e''8\ppp---. e---.
      e2:8
      e2:8->
      8 8
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*3
      r4
    }
  >> \oneVoice r8 e8\ppp-.

  \mark #14
  a-. r r4
  R2*18

  \mark #15
  R2*12

  \mark #16
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*2
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice
  R2*18

  \mark #17
  R2*12

  \mark #18
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*4
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*4
    }
  >> \oneVoice
  R2*11
  <<
    \new CueVoice {
      \oneVoice
      \quoteDuring "cues" s2*5
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      \repeat percent 4 R2 R2_\markup {\italic "précipitez" }
    }
  >> \oneVoice
  \ottava #0

  \mark #19 \section \tempo "Très vif"
  <>^"Trp."
  \relative {
    <>\fff
    \repeat unfold 2 {
      e''8-. r cis,-- r
      r4 cis8-- r
      r4 d8-- r
      r4 cis8-- r
      e'8-. r cis,-- r
      r4 cis8-- r
      r4 d8-- r
      cis4-- r
    }

    \mark #20
    \repeat unfold 2 {
      <<
        \new CueVoice {
          \voiceOne <>^"Trp. I"
          h'8.-- 16-. 8-- 8--
          4.-- r8
        }
        \context Voice = "tpIIvc" {
          \voiceTwo
          R2*2
        }
      >> \oneVoice
      R2*2
    }
    e8\ff-. r cis,-- r
    r4 cis8-- r
    R2
    r4 cis--
    e'8-. r cis,-- r
    r4 cis8-- r
    R2
    r4 cis--
   }

  \mark #21
  R2*10
  <<
    \new CueVoice {
      \oneVoice <>^"Vln."
      \quoteDuring "cues" { s2*3 s4 }
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*3
      r4
    }
  >> \oneVoice <>^"Trp." d8\sff-. r

  \mark #22
  R2*14
  <<
    \new CueVoice {
      \oneVoice <>^"Vln."
      \quoteDuring "cues" { s2*2 }
    }
    \context Voice = "tpIIvc" {
      \voiceTwo
      R2*2
    }
  >> \oneVoice

  \mark #23
  <>^"Trp."
  \relative {
     cis''\ff--~
     2
     \repeat unfold 3 {
       2--~
       2
     }
     \repeat unfold 2 {
       a--~
       2
     }
     \after 4 \>
     2--~
     2~
     2~
     2
     4\p--\< 4--
     4-- 4--
     4-- 4--
     4-- 4--
     2\ff--~
     2~
     2~
     2

     \mark #24
     8\sff-. r r4
     a,4\mp-- r
     R2
     a4-- r
     h'8\mf-. c-. gis-. a-.
     h-. c-. dis-. e-.
     h-. c-. gis-. a-.
     h-. c-. dis-. e-.
     R2*4
     a,,2\p\<~
     2~
     2~
     2

     \mark #25
     \startMeasureCount
     2\!_\markup {\dynamic pp \italic sub.}~
     2~
     2~
     2~
     2~
     2 \stopMeasureCount
     R2*2
     \startMeasureCount
     e'2\p~
     2~
     2~
     2~
     2~
     2 \stopMeasureCount
     R2*2

     \mark #26
     cis2\mf\<~
     2~
     2
     R2\!
     cis'2\ff--~
     2~
     2~
     2
     a4\mf\<-- 4--
     4-- 4--
     4-- 4--
     4-- 4--
     2\ff--~
     2~
     2~
     \after 4 \> 2

     \mark #27
     h8\f-. r r4
     h,\mp-- r
     R2
     h4-- r
     R2
     h4\> r
     R2
     h4-- r\!
     a'2\p\<--~
     2
     2--~
     2

     \mark #28
     8\f-. r a,4\mp--
     r a--
     r a--
     r a8.-- r16
     h'8_\markup {\italic diminuez}-. c-. gis-. a-.
     h-. c-. dis-. e-.
     h-. c-. gis-. a-.
     h\>-. c-. dis-. e-.
     R2*8\!
  }

   \mark #29
   <<
     \new CueVoice {
       \oneVoice
       \quoteDuring "cues" s2*4
     }
     \context Voice = "tpIIvc" {
       \voiceTwo
       \tweak staff-position #-8 R2*4
     }
   >> \oneVoice
  \relative {
    <>^"Trp."
    a'2\ppp~
    2~
    2~
    2
    R2*14
    \tuplet 3/2 4 {
      cis,8\pp-. e-. a-. e-. cis\<-. a-.
      cis-. e-. a-. cis-. a-. cis-.
    }

    \mark #30
    e\ff-. r cis,-- r
    r4 cis8-- r
    r4 d8-- r
    r4 cis8-- r
    e'-. r cis,-- r
    r4 cis8-- r
    r4 d8-- r
    r4 cis8-- r
    R2*6
  }
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" s2*2
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     \tweak staff-position #-8 R2*2
    }
  >> \oneVoice

  \mark #31
  \relative {
    \repeat unfold 2 {
      <<
        \new CueVoice {
          \voiceOne <>^"Trp. I"\p
            h'8.-- 16-. 8-- 8--
            4.-- r8
        }
        \context Voice = "tpIIvc" {
          \voiceTwo
          R2*2
        }
      >> \oneVoice
      R2*2
    }
    <>_\markup {\dynamic fff \italic cassant }^"+Trp. I"
    c8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    R2*2
    d8.-. 16-. 8-. 8-.
    8-. 8-. 4--
    <>_\markup { \halign #-1 "bouchez vite les tromp." }
    R2*2

    \mark #32
    R2*8
  }
  <<
    \new CueVoice {
     \oneVoice
     \quoteDuring "cues" { s2*2 s4. }
    }
    \context Voice = "tpIIvc" {
     \voiceTwo
     R2*2
     r4 r8
    }
  >> \oneVoice
  \relative {
     des''8^^_\markup {\dynamic ff \italic bouchée }
     eses^^ f^^ ges^^ r
     R2*8
     c,8.\fff-+ 16-+ 8-+ 8-+
     8-+ 8-+ 4-+
     R2*2
     d8.\fff-+ 16-+ 8-+ 8-+
     8-+ 8-+ 4-+
     R2*2
  }
%
%   \mark #34
%   R2*3
%   <<
%     \new CueVoice {
%      \oneVoice
%      \quoteDuring "cues" { s2*3 }
%     }
%     \context Voice = "tpIIvc" {
%      \voiceTwo
%      R2*3
%     }
%   >> \oneVoice
%   <>^"Trp."
%   \relative {
%      gis'8\ff_+ a_+ h_+ a_+
%      h_+ a_+ h-+ c-+
%      d-+ c-+ h_+ a_+
%      h4-+ e8-+ r
%      gis,_+ a_+ h-+ c16-+ c-+
%      d8-+ c16-+ c-+ d8-+ c16-+ c-+
%      d8-+ c-+ h_+ a_+
%      h4-+ e-+
%      d8-+ c-+ h_+ a_+
%      g_+ fis_+ g4_+
%      d8_+ e_+ fis_+ a_+
%      g4_+ e'-+
%      d8-+ c-+ h_+ a_+
%      g_+ fis_+ g4_+
%      d8_+ e_+ f!_+ d_+
%      e4_+ 4_+
%
%      \mark #35
%      gis8_+ a_+ h-+ c-+
%      d-+ c-+ d-+ c-+
%      d-+ c-+ h_+ a_+
%      gis_+ a_+ h4-+
%      e8-+ r_\markup {\italic \column { "rouvrez vite"
%                                        "les tromp." }}^"open" r4
%      R2*8
%   }
%   <<
%     \new CueVoice {
%      \oneVoice
%      \quoteDuring "cues" { s2*2 }
%     }
%     \context Voice = "tpIIvc" {
%      \voiceTwo
%      R2*2
%     }
%   >> \oneVoice
%   <>^"Trp."_"ouvertes"
%   \relative {
%      r8. e''32\ff-. 32-. \tuplet 3/2 { 8-. 8-. 8-. }
%      <>^\markup {\halign #-0.5 ...... }
%      \repeat unfold 3 { \tuplet 6/4 4 { 2.:8 } }
%
%      \mark #36
%      \acciaccatura gis8 a2--~
%      2
%      2--~
%      2
%      d,--~
%      2
%      2--~
%      2
%      \startMeasureCount
%      2\>--~
%      2~
%      2~
%      2~
%      2\mp \stopMeasureCount
%      4\<-- 4--
%      4-- 4--
%      4-- 4--
%      cis2\ff--~
%      2~
%      2~
%      2
%
%      \mark #37
%      c!8\sff-. r r4
%      c,8\sff-. r r4
%      dis'8\f-. e-. h-. c-.
%      dis-. e-. fis-. g-.
%      dis16-. 16-. e8-. h16-. 16-. c8-.
%      dis16-. 16-. e8-. fis16-. 16-. g8-.
%      dis-. e-. h-. c-.
%      dis-. e-. fis-. g-.
%      R2*8
%      \startMeasureCount
%      cis,2\f~
%      2~
%      2~
%      2\<~
%      2~
%      2 \stopMeasureCount <>\!
%      R2*2
%
%      \mark #38
%      \startMeasureCount
%      a2\fff~
%      2~
%      2~
%      2~
%      2~
%      2 \stopMeasureCount
%      R2*9
%   }
%
%   \mark #39
%   <<
%     \new CueVoice {
%      \oneVoice \clef bass
%      \quoteDuring "cues" { s2*4 }
%     }
%     \context Voice = "tpIIvc" {
%      \voiceTwo
%      \tweak staff-position #-9 R2*4
%     }
%   >> \oneVoice
%   <>^"Trp."
%   \relative {
%      \clef violin
%      as'8.\ff-. 16-. 8-. 8-.
%      8-. 8-. 4--
%      f8-. r r4
%      d-.-- g8-.-- r
%      a'8.-. 16-. 8-. 8-.
%      f-. r f,-. r
%      r4 f8.-. 16-.
%      8-. 8-. fis8-. 16-. 16-.
%      8-. 8-. 4--
%      h8-. ais-. a-. gis-.
%      R2\fermata_\markup{\italic "long"}
%   }
%
%   \section \time 2/2 \tempo "Allègrement"
%   R1*11
%   <<
%     \new CueVoice {
%      \oneVoice
%      \quoteDuring "cues" { s1*4 }
%     }
%     \context Voice = "tpIIvc" {
%      \voiceTwo
%      R1*4
%     }
%   >> \oneVoice
%
%   \mark #40
%   <>^"Trp."
%   \relative {
%      r4 r cis'\mf-. r
%      cis'-. r a-. r
%      e-. r cis'-. b-.
%      a-. f-. e2\>\accent~
%      \section \tempo "Très vif" \time 2/4
%      2\p~
%      2_\markup {\italic "augmentez et pressez"}~
%      2~
%      2
%      cis'--~
%      2~
%      2\<~
%      2
%
%      \mark #41
%      <>\ff^\markup {\halign #-0.5 "......"}
%      \repeat unfold 4 { \tuplet 6/4 { cis2.:8 } }
%      e2--~
%      2~
%      2~
%      2
%      a--~
%      2~
%      2~
%      2 \breathe
%      2--\fermata_\markup {\dynamic fff \italic long}
%   }
%   \fine

}

\score {
  <<
%         \new StaffGroup \with {
%       instrumentName = "Pistons"
%       midiInstrument = "trumpet"
%     }
%     <<
%       \new Staff = "pIstaff" {
%         \context Voice = "pIvc" {
%           \transpose c' a \pistonI
%         }
%       }
%       \new Staff = "pIIstaff" {
%         \context Voice = "pIIvc" {
%           \transpose c' a \pistonII
%         }
%       }
%     >>
    \new StaffGroup \with {
      instrumentName = "Trumpets"
      midiInstrument = "trumpet"
    }
    <<
%       \new Staff = "tpIstaff" {
%         \context Voice = "tpIvc" {
%           \trumpetI
%         }
%       }
      \new Staff = "tpIIstaff" {
        \context Voice = "tpIIvc" {
          \trumpetII
        }
      }
   >>
  >>

  \layout {
    \context {
      \Score
      rehearsalMarkFormatter = #format-mark-box-numbers
    }
    \context {
      \Staff
      \consists Measure_counter_engraver
      \override MeasureCounter.font-size = #-5
    }
  }
  \midi {}
}
