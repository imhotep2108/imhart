\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{chw}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage{babel}
\RequirePackage{geometry}
\RequirePackage{ragged2e}
\RequirePackage{xcolor}
\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{tikz}
\RequirePackage{derivative}
\RequirePackage{nicematrix}
\RequirePackage{siunitx}
\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{mdframed}
\RequirePackage{hyperref}

\babelprovide[import,onchar=ids fonts]{chinese}
\babelprovide[import,main]{english}

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

\setlocalecaption{english}{problem}{Problem}
\setlocalecaption{english}{remark}{Remark}
\setlocalecaption{english}{solution}{Solution}

\geometry{a4paper}

\definecolor{prussian}{HTML}{003153}
\definecolor{marrs}{HTML}{008c8c}

\everymath{\displaystyle}
\allowdisplaybreaks

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\mspan}{span}
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

\theoremstyle{definition}
\newtheorem{problem}{\problemname}

\theoremstyle{remark}
\newtheorem*{remark}{\remarkname}

\newenvironment{solution}[1][\solutionname]{%
    \par
    \normalfont \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep
                \itshape
        #1\@addpunct{.}]\ignorespaces
}{\endtrivlist\@endpefalse}

\usetikzlibrary{calc,scopes}

\NiceMatrixOptions{cell-space-limits=1pt}

\sisetup{parse-numbers=false}

\renewcommand{\tabularxcolumn}[1]{m{#1}}

\advance\@enumdepth1
\let\theenumi\theproblem

\mdfsetup{
    framemethod=tikz,
    skipabove=0.5\baselineskip,
    skipbelow=0.5\baselineskip,
    roundcorner=5pt
}

\surroundwithmdframed[
    linecolor=\ifodd\theproblem prussian\else marrs\fi,
    backgroundcolor=\ifodd\theproblem prussian!5\else marrs!5\fi
]{problem}

\hypersetup{colorlinks}

\endinput
