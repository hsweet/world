#!/bin/bash
sed  '/\\time/a  \\set Score.markFormatter = #format-mark-box-alphabet ' "Mori Shej.ly"
sed '/\time/a  \set Score.markFormatter = #format-mark-box-alphabet ' "Biserka.ly"


sed '/\repeat volta/a  \mark \default ' "Mori Shej.ly"
sed '/\repeat volta/a  \mark \default ' "Biserka.ly"
