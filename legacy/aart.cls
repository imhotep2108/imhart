\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aart}

\newif\ifaart@twoside
\newif\ifaart@twocol
\newif\ifaart@bib
\newif\ifaart@idx
\newif\ifaart@hyper

\aart@twosidetrue
\aart@twocoltrue
\aart@bibtrue
\aart@idxtrue
\aart@hypertrue

\DeclareOption{oneside}{\aart@twosidefalse}
\DeclareOption{onecol}{\aart@twocolfalse}
\DeclareOption{nobib}{\aart@bibfalse}
\DeclareOption{noidx}{\aart@idxfalse}
\DeclareOption{nohyper}{\aart@hyperfalse}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage{babel}
\RequirePackage{csquotes}
\RequirePackage[CJK,Cyrillics,Latin]{ucharclasses}

\RequirePackage{xcolor}
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{ragged2e}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}

\RequirePackage{mathtools}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{derivative}
\RequirePackage{siunitx}
\RequirePackage{tikz}
\RequirePackage{chemmacros}
\RequirePackage{chemfig}
\RequirePackage{modiagram}

\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}

\RequirePackage{authblk}
\ifaart@bib
\RequirePackage{biblatex}
\fi
\ifaart@idx
\RequirePackage[%nonewpage
]{imakeidx}
\fi

\ifaart@hyper
\RequirePackage{hyperref}
\fi

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

\ifaart@twoside
\PassOptionsToClass{twoside}{article}
\fi

\babelprovide[import]{chinese}
\babelprovide[import,main]{english}
\babelprovide[import]{french}
\babelprovide[import]{russian}

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
    % SmallCapsFont   = *,
    % BoldItalicFont  = *
]{FandolSong-Regular}
\babelfont[chinese]{sf}[
    Extension       = .otf,
    BoldFont        = FandolHei-Bold,
    % ItalicFont      = *,
    % SmallCapsFont   = *,
    % BoldItalicFont  = *
]{FandolHei-Regular}
\babelfont[chinese]{tt}[
    Extension       = .otf,
    % BoldFont        = *,
    % ItalicFont      = *,
    % SmallCapsFont   = *,
    % BoldItalicFont  = *
]{FandolFang-Regular}

\setlocalecaption{chinese}{theorem}{定理}
\setlocalecaption{chinese}{lemma}{引理}
\setlocalecaption{chinese}{corollary}{推论}
\setlocalecaption{chinese}{proposition}{命题}
\setlocalecaption{chinese}{definition}{定义}
\setlocalecaption{chinese}{solution}{解答}

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
\setlocalecaption{french}{solution}{Solution}

\setlocalecaption{russian}{theorem}{Теорема}
\setlocalecaption{russian}{definition}{Определение}
\setlocalecaption{russian}{solution}{Решение}

\newif\ifaartlang@save
\newif\ifaartlang@set

\setTransitionsForCJK{%
    \ifaartlang@save
        \ifaartlang@set
            \edef\langname{\languagename}%
        \fi
    \else
        \edef\langname{\languagename}%
    \fi
    \selectlanguage{chinese}\aartlang@savetrue\aartlang@setfalse%
}{%
    \edef\selectlang{\noexpand\selectlanguage{\langname}}\selectlang\aartlang@savefalse\aartlang@settrue%
}
\setTransitionsForCyrillics{%
    \ifaartlang@save
        \ifaartlang@set
            \edef\langname{\languagename}%
        \fi
    \else
        \edef\langname{\languagename}%
    \fi
    \selectlanguage{russian}\aartlang@savetrue\aartlang@setfalse%
}{%
    \edef\selectlang{\noexpand\selectlanguage{\langname}}\selectlang\aartlang@savefalse\aartlang@settrue%
}

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

\geometry{a4paper}

\ifaart@twocol
\geometry{margin=1in}
\setlength{\columnseprule}{0.4pt}
\AddToHook{begindocument/end}{\begin{multicols}{2}}
\AddToHook{enddocument}{\end{multicols}}
\fi

\pagestyle{fancy}

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Mathematics and Science %%%%%%%%%%%%%%%%

\allowdisplaybreaks

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
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

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}
}

\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket},partial=upright}

\setmathfont[StylisticSet=2]{NewCMMath-Book.otf}
\setmathfont[range={scr,bfscr},StylisticSet=1]{NewCMMath-Book.otf}
\setmathfont[range=bb,StylisticSet=3]{NewCMMath-Book.otf}

\providecommand*{\eu}{\ensuremath{\symup{e}}}
\providecommand*{\iu}{\ensuremath{\symup{i}}}
\providecommand*{\piu}{\ensuremath{\symup{\pi}}}

\theoremstyle{plain}
\newtheorem{theorem}{\theoremname}
\newtheorem{lemma}{\lemmaname}
\newtheorem{corollary}{\corollaryname}
\newtheorem{proposition}{\propositionname}
\newtheorem{conjecture}{\conjecturename}
\newtheorem{criterion}{\criterionname}
\newtheorem{assertion}{\assertionname}

\theoremstyle{definition}
\newtheorem{definition}{\definitionname}
\newtheorem{condition}{\conditionname}
\newtheorem{problem}{\problemname}
\newtheorem{example}{\examplename}
\newtheorem{exercise}{\exercisename}
\newtheorem{algorithm}{\algorithmname}
\newtheorem{question}{\questionname}
\newtheorem{axiom}{\axiomname}
\newtheorem{property}{\propertyname}
\newtheorem{assumption}{\assumptionname}
\newtheorem{hypothesis}{\hypothesisname}

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

\sisetup{parse-numbers=false}

\usetikzlibrary{calc,scopes}

%%%%%%%%%%%%%%%% Mathematics and Science %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Floats and Captions %%%%%%%%%%%%%%%%

\renewcommand{\tabularxcolumn}[1]{m{#1}}

%%%%%%%%%%%%%%%% Floats and Captions %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Front Matter and Back Matter %%%%%%%%%%%%%%%%

\ifaart@bib
\ExecuteBibliographyOptions{autolang=other}
\addbibresource{refs.bib}
\DeclarePrintbibliographyDefaults{heading=bibintoc}
\nocite{*}
\fi

\ifaart@idx
% \indexsetup{noclearpage}
\makeindex[intoc,columns=\ifaart@twocol1\else2\fi]
\fi

%%%%%%%%%%%%%%%% Front Matter and Back Matter %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% hyperref %%%%%%%%%%%%%%%%

\ifaart@hyper
\hypersetup{colorlinks}
\fi

%%%%%%%%%%%%%%%% hyperref %%%%%%%%%%%%%%%%

\endinput

Known Issues

- Two sides
- Header
- index
