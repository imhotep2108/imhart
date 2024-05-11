\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{htpart}

\newif\ifhtpart@twoside
\newif\ifhtpart@twocol
\newif\ifhtpart@bib
\newif\ifhtpart@idx
\newif\ifhtpart@hyper

\htpart@twosidetrue
\htpart@twocoltrue
\htpart@bibtrue
\htpart@idxtrue
\htpart@hypertrue

\DeclareOption{oneside}{\htpart@twosidefalse}
\DeclareOption{onecol}{\htpart@twocolfalse}
\DeclareOption{nobib}{\htpart@bibfalse}
\DeclareOption{noidx}{\htpart@idxfalse}
\DeclareOption{nohyper}{\htpart@hyperfalse}
\ProcessOptions\relax

\LoadClass[\ifhtpart@twoside twoside\else oneside\fi]{article}

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
\ifhtpart@bib
\RequirePackage{biblatex}
\fi
\ifhtpart@idx
\RequirePackage[%nonewpage
]{imakeidx}
\fi

\ifhtpart@hyper
\RequirePackage{hyperref}
\fi

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

\babelprovide[import,main]{english}
\babelprovide[import]{chinese}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}

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

\setlocalecaption{chinese}{theorem}{定理}
\setlocalecaption{chinese}{lemma}{引理}
\setlocalecaption{chinese}{corollary}{推论}
\setlocalecaption{chinese}{proposition}{命题}
\setlocalecaption{chinese}{conjecture}{猜想}
\setlocalecaption{chinese}{definition}{定义}
\setlocalecaption{chinese}{problem}{问题}
\setlocalecaption{chinese}{example}{例子}
\setlocalecaption{chinese}{exercise}{练习}
\setlocalecaption{chinese}{axiom}{公理}
\setlocalecaption{chinese}{remark}{注释}
\setlocalecaption{chinese}{solution}{解答}

\setlocalecaption{french}{theorem}{Théorème}
\setlocalecaption{french}{lemma}{Lemme}
\setlocalecaption{french}{corollary}{Corollaire}
\setlocalecaption{french}{proposition}{Proposition}
\setlocalecaption{french}{conjecture}{Conjecture}
\setlocalecaption{french}{definition}{Définition}
\setlocalecaption{french}{problem}{Problème}
\setlocalecaption{french}{example}{Exemple}
\setlocalecaption{french}{exercise}{Exercice}
\setlocalecaption{french}{axiom}{Axiome}
\setlocalecaption{french}{remark}{Remarque}
\setlocalecaption{french}{solution}{Solution}

\setlocalecaption{german}{theorem}{Satz}
\setlocalecaption{german}{lemma}{Lemma}
\setlocalecaption{german}{corollary}{Korollar}
\setlocalecaption{german}{proposition}{Proposition}
\setlocalecaption{german}{conjecture}{Vermutung}
\setlocalecaption{german}{definition}{Definition}
\setlocalecaption{german}{problem}{Problem}
\setlocalecaption{german}{example}{Beispiel}
\setlocalecaption{german}{exercise}{Übung}
\setlocalecaption{german}{axiom}{Axiom}
\setlocalecaption{german}{remark}{Bemerkung}
\setlocalecaption{german}{solution}{Lösung}

\setlocalecaption{russian}{theorem}{Теорема}
\setlocalecaption{russian}{lemma}{Лемма}
\setlocalecaption{russian}{corollary}{Следствием}
\setlocalecaption{russian}{proposition}{Предложение}
\setlocalecaption{russian}{conjecture}{Гипотеза}
\setlocalecaption{russian}{definition}{Определение}
\setlocalecaption{russian}{problem}{Задача}
\setlocalecaption{russian}{example}{Пример}
\setlocalecaption{russian}{exercise}{Упражнение}
\setlocalecaption{russian}{axiom}{Аксиома}
\setlocalecaption{russian}{remark}{Замечание}
\setlocalecaption{russian}{solution}{Решение}

\setlocalecaption{spanish}{theorem}{Teorema}
\setlocalecaption{spanish}{lemma}{Lema}
\setlocalecaption{spanish}{corollary}{Corolario}
\setlocalecaption{spanish}{proposition}{Proposición}
\setlocalecaption{spanish}{conjecture}{Conjetura}
\setlocalecaption{spanish}{definition}{Definición}
\setlocalecaption{spanish}{problem}{Problema}
\setlocalecaption{spanish}{example}{Ejemplo}
\setlocalecaption{spanish}{exercise}{Ejercicio}
\setlocalecaption{spanish}{axiom}{Axioma}
\setlocalecaption{spanish}{remark}{Observación}
\setlocalecaption{spanish}{solution}{Solución}

\newif\ifhtpartlang@save
\newif\ifhtpartlang@set

\setTransitionsForCJK{%
    \ifhtpartlang@save
        \ifhtpartlang@set
            \edef\langname{\languagename}%
        \fi
    \else
        \edef\langname{\languagename}%
    \fi
    \selectlanguage{chinese}\htpartlang@savetrue\htpartlang@setfalse%
}{%
    \edef\selectlang{\noexpand\selectlanguage{\langname}}\selectlang\htpartlang@savefalse\htpartlang@settrue%
}
\setTransitionsForCyrillics{%
    \ifhtpartlang@save
        \ifhtpartlang@set
            \edef\langname{\languagename}%
        \fi
    \else
        \edef\langname{\languagename}%
    \fi
    \selectlanguage{russian}\htpartlang@savetrue\htpartlang@setfalse%
}{%
    \edef\selectlang{\noexpand\selectlanguage{\langname}}\selectlang\htpartlang@savefalse\htpartlang@settrue%
}

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

\geometry{a4paper}
\ifhtpart@twocol
\geometry{margin=1in}
\fi

\ifhtpart@twocol
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

\ifhtpart@bib
\ExecuteBibliographyOptions{autolang=other}
\addbibresource{refs.bib}
\DeclarePrintbibliographyDefaults{heading=bibintoc}
\nocite{*}
\fi

\ifhtpart@idx
% \indexsetup{noclearpage}
\makeindex[intoc,columns=\ifhtpart@twocol1\else2\fi]
\fi

%%%%%%%%%%%%%%%% Front Matter and Back Matter %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% hyperref %%%%%%%%%%%%%%%%

\ifhtpart@hyper
\hypersetup{colorlinks}
\fi

%%%%%%%%%%%%%%%% hyperref %%%%%%%%%%%%%%%%

\endinput

Known Issues

- Twoside
- Header
- Index
