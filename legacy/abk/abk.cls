\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abk}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass{book}

\RequirePackage[bidi=basic]{babel}
\RequirePackage{csquotes}
\RequirePackage{geometry}
\RequirePackage{authblk}
\RequirePackage{ragged2e}
\RequirePackage{xcolor}
\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{biblatex}
\RequirePackage{imakeidx}
\RequirePackage{tikz}
\RequirePackage{derivative}
\RequirePackage{nicematrix}
\RequirePackage{siunitx}
\RequirePackage{chemmacros}
\RequirePackage{chemfig}
\RequirePackage{modiagram}
\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{diagbox}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\babelprovide[import,onchar=ids fonts]{arabic}
\babelprovide[import,onchar=ids fonts]{bengali}
\babelprovide[import,onchar=ids fonts]{chinese}
\babelprovide[import,onchar=ids fonts]{dutch}
\babelprovide[import,onchar=ids fonts]{english}
\babelprovide[import,onchar=ids fonts]{french}
\babelprovide[import,onchar=ids fonts]{german}
\babelprovide[import,onchar=ids fonts]{hindi}
\babelprovide[import,onchar=ids fonts]{italian}
\babelprovide[import,onchar=ids fonts]{japanese}
\babelprovide[import,onchar=ids fonts]{malay}
\babelprovide[import,onchar=ids fonts]{persian}
\babelprovide[import,onchar=ids fonts]{portuguese}
\babelprovide[import,onchar=ids fonts]{russian}
\babelprovide[import,onchar=ids fonts]{spanish}
\babelprovide[import,onchar=ids fonts]{swahili}

\babelfont{rm}[
    Extension       = .otf,
    BoldFont        = NewCM10-Bold,
    ItalicFont      = NewCM10-BookItalic,
    BoldItalicFont  = NewCM10-BoldItalic
]{NewCM10-Book}
\babelfont{sf}[
    Extension       = .otf,
    BoldFont        = NewCMSans10-Bold,
    ItalicFont      = NewCMSans10-BookOblique,
    BoldItalicFont  = NewCMSans10-BoldOblique
]{NewCMSans10-Book}
\babelfont{tt}[
    Extension       = .otf,
    BoldFont        = NewCMMono10-Bold,
    ItalicFont      = NewCMMono10-BookItalic,
    BoldItalicFont  = NewCMMono10-BoldOblique
]{NewCMMono10-Book}
\babelfont[arabic]{rm}[
    Extension       = .ttf,
    BoldFont        = Amiri-Bold,
    ItalicFont      = Amiri-Italic,
    SmallCapsFont   = *,
    BoldItalicFont  = Amiri-BoldItalic
]{Amiri-Regular}
\babelfont[bengali]{rm}[
    Path          = Fonts/,
    Extension       = .ttf,
    BoldFont        = *,
    ItalicFont      = *,
    SmallCapsFont   = *
]{kalpurush}
\babelfont[chinese]{rm}[
    Extension       = .otf,
    BoldFont        = FandolSong-Bold,
    ItalicFont      = FandolKai-Regular,
    SmallCapsFont   = *
]{FandolSong-Regular}
\babelfont[chinese]{sf}[
    Extension       = .otf,
    BoldFont        = FandolHei-Bold
]{FandolHei-Regular}
\babelfont[chinese]{tt}[
    Extension       = .otf
]{FandolFang-Regular}
\babelfont[hindi]{rm}[
    Extension       = .otf,
    BoldFont        = NewCM10Devanagari-Bold,
    ItalicFont      = *,
    SmallCapsFont   = *
]{NewCM10Devanagari-Book}
\babelfont[japanese]{rm}[
    Extension       = .otf,
    BoldFont        = HaranoAjiMincho-Bold,
    ItalicFont      = *,
    SmallCapsFont   = *
]{HaranoAjiMincho-Regular}
\babelfont[japanese]{sf}[
    Extension       = .otf,
    BoldFont        = HaranoAjiGothic-Bold
]{HaranoAjiGothic-Regular}
\babelfont[persian]{rm}[
    Path          = Fonts/,
    Extension       = .ttf,
    BoldFont        = *,
    ItalicFont      = *,
    SmallCapsFont   = *
]{IranNastaliq}

\setlocalecaption{arabic}{theorem}{مبرهنة}
\setlocalecaption{arabic}{definition}{تعريف}
% \setlocalecaption{arabic}{remark}{}
\setlocalecaption{arabic}{solution}{حل}

\setlocalecaption{bengali}{theorem}{উপপাদ্য}
\setlocalecaption{bengali}{definition}{সংজ্ঞা}
% \setlocalecaption{bengali}{remark}{}
\setlocalecaption{bengali}{solution}{সমাধান}

\setlocalecaption{chinese}{theorem}{定理}
\setlocalecaption{chinese}{definition}{定义}
% \setlocalecaption{chinese}{remark}{}
\setlocalecaption{chinese}{solution}{解答}

\setlocalecaption{dutch}{theorem}{Stelling}
\setlocalecaption{dutch}{definition}{Definitie}
% \setlocalecaption{dutch}{remark}{}
\setlocalecaption{dutch}{solution}{Oplossing}

\setlocalecaption{english}{theorem}{Theorem}
\setlocalecaption{english}{lemma}{Lemma}
\setlocalecaption{english}{corollary}{Corollary}
\setlocalecaption{english}{proposition}{Proposition}
\setlocalecaption{english}{conjecture}{Conjecture}
\setlocalecaption{english}{criterion}{Criterion}
\setlocalecaption{english}{assertion}{Assertion}
\setlocalecaption{english}{definition}{Definition}
\setlocalecaption{english}{condition}{Condition}
\setlocalecaption{english}{problem}{Problem}
\setlocalecaption{english}{example}{Example}
\setlocalecaption{english}{exercise}{Exercise}
\setlocalecaption{english}{algorithm}{Algorithm}
\setlocalecaption{english}{question}{Question}
\setlocalecaption{english}{axiom}{Axiom}
\setlocalecaption{english}{property}{Property}
\setlocalecaption{english}{assumption}{Assumption}
\setlocalecaption{english}{hypothesis}{Hypothesis}
\setlocalecaption{english}{remark}{Remark}
\setlocalecaption{english}{note}{Note}
\setlocalecaption{english}{notation}{Notation}
\setlocalecaption{english}{claim}{Claim}
\setlocalecaption{english}{summary}{Summary}
\setlocalecaption{english}{acknowledgment}{Acknowledgment}
\setlocalecaption{english}{case}{Case}
\setlocalecaption{english}{conclusion}{Conclusion}
\setlocalecaption{english}{solution}{Solution}

\setlocalecaption{french}{theorem}{Théorème}
\setlocalecaption{french}{definition}{Définition}
% \setlocalecaption{french}{remark}{}
\setlocalecaption{french}{solution}{Solution}

\setlocalecaption{german}{theorem}{Theorem}
\setlocalecaption{german}{definition}{Definition}
% \setlocalecaption{german}{remark}{}
\setlocalecaption{german}{solution}{Lösung}

\setlocalecaption{hindi}{theorem}{प्रमेय}
\setlocalecaption{hindi}{definition}{परिभाषा}
% \setlocalecaption{hindi}{remark}{}
\setlocalecaption{hindi}{solution}{समाधान}

\setlocalecaption{italian}{theorem}{Teorema}
\setlocalecaption{italian}{definition}{Definizione}
% \setlocalecaption{italian}{remark}{}
\setlocalecaption{italian}{solution}{Soluzione}

\setlocalecaption{japanese}{theorem}{定理}
\setlocalecaption{japanese}{definition}{定義}
% \setlocalecaption{japanese}{remark}{}
\setlocalecaption{japanese}{solution}{解答}

\setlocalecaption{malay}{theorem}{Teorem}
\setlocalecaption{malay}{definition}{Definisi}
% \setlocalecaption{malay}{remark}{}
\setlocalecaption{malay}{solution}{Penyelesaian}

\setlocalecaption{persian}{theorem}{قضیه}
\setlocalecaption{persian}{definition}{تعریف}
% \setlocalecaption{persian}{remark}{}
\setlocalecaption{persian}{solution}{حل}

\setlocalecaption{portuguese}{theorem}{Teorema}
\setlocalecaption{portuguese}{definition}{Definição}
% \setlocalecaption{portuguese}{remark}{}
\setlocalecaption{portuguese}{solution}{Solução}

\setlocalecaption{russian}{theorem}{Теорема}
\setlocalecaption{russian}{definition}{Определение}
% \setlocalecaption{russian}{remark}{}
\setlocalecaption{russian}{solution}{Решение}

\setlocalecaption{spanish}{theorem}{Teorema}
\setlocalecaption{spanish}{definition}{Definición}
% \setlocalecaption{spanish}{remark}{}
\setlocalecaption{spanish}{solution}{Solución}

\setlocalecaption{swahili}{theorem}{Kidhanio}
\setlocalecaption{swahili}{definition}{Ufafanuzi}
% \setlocalecaption{swahili}{remark}{}
\setlocalecaption{swahili}{solution}{Jibu}

\geometry{a4paper}

\definecolor{prussian}{HTML}{003153}
\definecolor{marrs}{HTML}{008c8c}

\everymath{\displaystyle}
\allowdisplaybreaks

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\tr}{tr}

\DeclarePairedDelimiterX{\oldabs}[1]{\lvert}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\abs}{sO{}}{\IfBooleanTF{#1}{\oldabs{#2}}{\oldabs*{#2}}}
\DeclarePairedDelimiterX{\oldceil}[1]{\lceil}{\rceil}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\ceil}{sO{}}{\IfBooleanTF{#1}{\oldceil{#2}}{\oldceil*{#2}}}
\DeclarePairedDelimiterX{\oldfloor}[1]{\lfloor}{\rfloor}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\floor}{sO{}}{\IfBooleanTF{#1}{\oldfloor{#2}}{\oldfloor*{#2}}}
\DeclarePairedDelimiterX{\oldnorm}[1]{\lVert}{\rVert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\norm}{sO{}}{\IfBooleanTF{#1}{\oldnorm{#2}}{\oldnorm*{#2}}}
\DeclarePairedDelimiterX{\oldset}[2]{\lbrace}{\rbrace}{\ifblank{#2}{#1}{\,#1:#2\,}}
\NewDocumentCommand{\set}{smO{}}{\IfBooleanTF{#1}{\oldset{#2}{#3}}{\oldset*{#2}{#3}}}

\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket},partial=upright}

\setmathfont[StylisticSet=2]{NewCMMath-Book.otf}
\setmathfont[range={scr,bfscr},StylisticSet=1]{NewCMMath-Book.otf}
\setmathfont[range=bb,StylisticSet=3]{NewCMMath-Book.otf}

\providecommand*{\eu}{\ensuremath{\symup{e}}}
\providecommand*{\piu}{\ensuremath{\symup{\pi}}}

\theoremstyle{plain}
\newtheorem{theorem}{\theoremname}[chapter]
\newtheorem{lemma}{\lemmaname}[chapter]
\newtheorem{corollary}{\corollaryname}[chapter]
\newtheorem{proposition}{\propositionname}[chapter]
\newtheorem{conjecture}{\conjecturename}[chapter]
\newtheorem{criterion}{\criterionname}[chapter]
\newtheorem{assertion}{\assertionname}[chapter]

\theoremstyle{definition}
\newtheorem{definition}{\definitionname}[chapter]
\newtheorem{condition}{\conditionname}[chapter]
\newtheorem{problem}{\problemname}[chapter]
\newtheorem{example}{\examplename}[chapter]
\newtheorem{exercise}{\exercisename}[chapter]
\newtheorem{algorithm}{\algorithmname}[chapter]
\newtheorem{question}{\questionname}[chapter]
\newtheorem{axiom}{\axiomname}[chapter]
\newtheorem{property}{\propertyname}[chapter]
\newtheorem{assumption}{\assumptionname}[chapter]
\newtheorem{hypothesis}{\hypothesisname}[chapter]

\theoremstyle{remark}
\newtheorem*{remark}{\remarkname}
\newtheorem*{note}{\notename}
\newtheorem*{notation}{\notationname}
\newtheorem*{claim}{\claimname}
\newtheorem*{summary}{\summaryname}
\newtheorem*{acknowledgment}{\acknowledgmentname}
\newtheorem*{case}{\casename}
\newtheorem*{conclusion}{\conclusionname}

\newenvironment{solution}[1][\solutionname]{%
    \par
    \normalfont \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep
                \itshape
        #1\@addpunct{.}]\ignorespaces
}{\endtrivlist\@endpefalse}

\ExecuteBibliographyOptions{autolang=other}
\addbibresource{refs.bib}
\DeclarePrintbibliographyDefaults{heading=bibintoc}
\nocite{*}

\makeindex[intoc]

\usetikzlibrary{calc,scopes}

\NiceMatrixOptions{cell-space-limits=1pt}

\sisetup{parse-numbers=false}

\renewcommand{\tabularxcolumn}[1]{m{#1}}

\hypersetup{colorlinks}

\endinput
