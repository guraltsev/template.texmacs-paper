<TeXmacs|2.1.1>

<style|<tuple|amsart|preview-ref|number-long-article|smart-ref>>

<\body>
  <\hide-preamble>
    <specific|latex|% !!!!begin[TeXmacs][preamble]>

    * TOC depth:

    Stop at sections (do not include subsections)

    <assign|subsubsection-toc|<macro|name|>>

    \;

    * The \<less\>todo\<gtr\> macro

    We want to avoid conflict with the LaTeX package todonotes so we redefine
    the todo macro

    <assign|tmtodo|<macro|body|<todo|<arg|body>>>>

    \ 

    * Equation alignment environments

    This construct can be exported to \ LaTeX and is rendered as a
    left-top-aligned block of equations. This is very convenient for
    splitting multi-line equations

    \;

    <assign|ltae|<macro|body|<tabular*|<tformat|<twith|table-valign|T>|<twith|table-min-cols|1>|<twith|table-max-cols|1>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-lsep|0ln>|<arg|body>>>>>

    <assign|rbae|<macro|body|<tabular*|<tformat|<twith|table-valign|B>|<twith|table-min-cols|1>|<twith|table-max-cols|1>|<cwith|1|-1|1|-1|cell-halign|r>|<cwith|1|-1|1|-1|cell-rsep|0ln>|<arg|body>>>>>

    <assign|cases|<macro|body|<math-table-base|<style-with|src-compact|none|<left|{><tformat|<cwith|1|-1|1|-1|cell-swell|<value|table-math-swell>>|<twith|table-min-cols|1>|<twith|table-max-cols|2>|<arg|body>><right|.>>>>>

    \;

    * Common macro defitions

    ** Fonts

    <assign|mc|<macro|1|<with|math-font|cal|<arg|1>>>> calligraphic math

    <assign|mf|<macro|1|<with|math-font|Euler|<arg|1>>>> fraktur math

    <assign|mbb|<macro|1|<with|math-font|Bbb|<arg|1>>>> blackboard math

    <assign|mbf|<macro|1|<with|font-series|bold|<arg|1>>>> boldface math

    <assign|mb|<macro|1|<with|font-series|bold|<arg|1>>>> boldface math

    <assign|mrm|<macro|1|<math-up|<arg|1>>>> math

    <assign|ms|<macro|1|<with|math-font|cal*|<arg|1>>>> script math

    ** Noteworthy sets

    <assign|N|<macro|<mbb|N>>> naturals

    <assign|Z|<macro|<mbb|Z>>> integers

    <assign|Q|<macro|<mbb|Q>>> rationals

    <assign|R|<macro|<mbb|R>>> reals

    <assign|C|<macro|<mbb|C>>> complex numbers

    <assign|W|<macro|<mbb|W>>> walsh numbers

    <assign|F|<macro|<mbb|F>>> a finite field

    <assign|HH|<macro|<mbb|H>>> quaternions

    ** Function spaces / sets

    <assign|Sch|<macro|<ms|S>>> Schwarz space

    <assign|Bor|<macro|<ms|B>>> Borel functions/sets

    <assign|Lip|<macro|<math-up|Lip>>> Lipshitz functions

    <assign|loc|<macro|<math-up|loc>>> locally

    ** Linear algebra

    <assign|Lin|<macro|<math-up|Lin>>>

    <assign|End|<macro|<math-up|End>>>

    <assign|Hom|<macro|<math-up|Hom>>>

    <assign|Gl|<macro|<math-up|Gl>>> homomorphism

    <assign|Sl|<macro|<math-up|Sl>>> special linear group

    <assign|SU|<macro|<math-up|SU>>> special unitary group

    <assign|Id|<macro|<math-up|id>>>

    <assign|rk|<macro|<math-up|rk>>>

    <assign|tr|<macro|<math-up|tr>>>

    ** Point set topology / metric spaces\ 

    <assign|diam|<macro|<math-up|diam>>> diameter

    <assign|dist|<macro|<math-up|dist>>> distance

    <assign|spt|<macro|<math-up|spt>>> support

    ** Left/right -hand-side

    <assign|LHS|<macro|1|<math-up|LHS><arg|1>>> Left hand side

    <assign|RHS|<macro|1|<math-up|RHS><arg|1>>> Right hand side

    ** Miscellaneous math

    <assign|eqdef|<macro|\<assign\>>> assignment

    <assign|eqd|<macro|\<assign\>>> assignment

    <assign|dd|<macro|\<mathd\>>> d of the differential

    <assign|st|<macro|\<suchthat\>>> such that

    <assign|Fourier|<macro|<mf|F>>> Fourier transform operator

    <assign|FT|<macro|body|<wide|<arg|body>|^>>> Fourier transform

    <assign|pv|<macro|<math-up|p.v.>>> principle value

    <assign|E|<macro|<mbb|E>>> expectation

    <assign|restrict|<macro|1|<move|<left|lvert>|0pt|-3pt><rsub|<arg|1>>>>
    restriction to a domain

    <assign|1|<macro|<mbb|1>>> characteristic function

    <assign|sgn|<macro|<math-up|sgn>>> signum

    ** Symmetries

    <assign|Mod|<macro|<math-up|Mod>>> Modulation

    <assign|Tr|<macro|<math-up|Tr>>> Translation

    <assign|Dil|<macro|<math-up|Dil>>> Dilation

    \;

    <specific|latex|% !!!!end[TeXmacs][preamble]>

    \;

    <specific|latex|% !!!!begin[LaTeX][document]>

    <specific|latex|%% ********>

    <specific|latex|%% Uncomment only one of the following>

    <specific|latex|\\documentclass[a4paper,10pt,intlimits,sumlimits]{amsart}>

    <specific|latex|%\\documentclass[a4paper,10pt,intlimits,sumlimits,draft]{amsart}>

    <specific|latex|%\\documentclass[a4paper,10pt,intlimits,sumlimits,final]{amsart}>

    <specific|latex|%% ********>

    <specific|latex|\\usepackage{my-paper}>

    <specific|latex|\\usepackage{my-macros}>

    <specific|latex|\\usepackage{my-texmacs}>

    <specific|latex|%% ********>

    <specific|latex|%% * TOC depth: >

    <specific|latex|%% the number determines the depth in the table of
    contents>

    <specific|latex|%% 1: Stop at sections (do not include subsubsections)>

    <specific|latex|%% 2: Stop at subsections (do not include
    subsubsections)>

    <specific|latex|\\setcounter{tocdepth}{2}>

    <specific|latex|% !!!!begin[LaTeX][bibliography]>

    <specific|latex|\\addbibresource{template.bib}>

    <specific|latex|% !!!!end[LaTeX][bibliography]>

    \;

    * Macros Local to this file:
  </hide-preamble>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <specific|latex|% !!!!begin[TeXmacs][bibliography]>

  <\bibliography|bib|tm-alpha|template.bib>
    \;
  </bibliography>

  <specific|latex|% !!!!end[TeXmacs][bibliography]>

  <specific|latex|% !!!!begin[LaTeX][bibliography]>

  <specific|latex|\\printbibliography>

  <specific|latex|% !!!!end[LaTeX][bibliography]>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|page-medium|papyrus>
    <associate|preamble|false>
  </collection>
</initial>

<\attachments>
  <\collection>
    <\associate|bib-bibliography>
      <\db-entry|+AGRjFY7GLCcMn9|article|bourgainInvariantMeasuresDdefocusing1996>
        <db-field|contributor|guraltsev>

        <db-field|modus|imported>

        <db-field|date|1659326536>

        <db-field|date|1996-01>
      <|db-entry>
        <db-field|author|Jean <name|Bourgain>>

        <db-field|title|Invariant measures for the <math|2>D-defocusing
        nonlinear Schrödinger equation>

        <db-field|volume|176>

        <db-field|number|2>

        <db-field|pages|421\U445>

        <db-field|journaltitle|Communications in Mathematical Physics>

        <db-field|publisher|Springer>

        <db-field|issn|0010-3616, 1432-0916>

        <db-field|doi|10.1007/BF02099556>

        <db-field|url|<slink|https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-176/issue-2/Invariant-measures-for-the-2D-defocusing-nonlinear-Schr%c3%b6dinger-equation/cmp/1104286005.full>>
      </db-entry>
    </associate>
  </collection>
</attachments>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>