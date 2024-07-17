\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assign}

\newif\ifassign@en
\newif\ifassign@fr
\newif\ifassign@es
\newif\ifassign@ru

\newif\ifassign@nat

\newif\ifassign@ara
\newif\ifassign@cjk

\DeclareOption{en}{\assign@entrue}
\DeclareOption{fr}{\assign@frtrue}
\DeclareOption{es}{\assign@estrue}
\DeclareOption{ru}{\assign@rutrue}

\DeclareOption{nat}{\assign@nattrue}

\DeclareOption{default}{\PassOptionsToClass{default}{fontsetup}}
\DeclareOption{ebgaramond}{\PassOptionsToClass{ebgaramond}{fontsetup}}
\DeclareOption{libertinus}{\PassOptionsToClass{libertinus}{fontsetup}}

\DeclareOption{ara}{\assign@aratrue}
\DeclareOption{cjk}{\assign@cjktrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax

\LoadClass[reqno]{amsart}

\RequirePackage{polyglossia}
\RequirePackage[a4paper]{geometry}
\RequirePackage{ragged2e}
\RequirePackage{xcolor}
\RequirePackage{mathtools}
\RequirePackage{thmtools}
\RequirePackage{tikz}
\RequirePackage{derivative}
\RequirePackage{nicematrix}
\ifassign@nat
\RequirePackage{siunitx}
\RequirePackage{chemmacros}
\RequirePackage{chemfig}
\RequirePackage{modiagram}
\fi
\RequirePackage{graphicx}
\RequirePackage{xltabular}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage{mdframed}
\RequirePackage[colorlinks]{hyperref}
\RequirePackage[upint,newcmbb]{fontsetup}
\ifassign@ara
\RequirePackage{arabxetex}
\fi
\ifassign@cjk
\RequirePackage{xeCJK}
\fi

\ifassign@en
\setdefaultlanguage{english}
\renewcommand{\datename}{\textit{Date}:}
\providecommand{\problemname}{Problem}
\providecommand{\solutionname}{Solution}
\fi
\ifassign@fr
\setdefaultlanguage[frenchpart=false]{french}
\renewcommand{\datename}{\textit{Date} :}
\providecommand{\problemname}{Problème}
\providecommand{\solutionname}{Solution}
\fi
\ifassign@ru
\setdefaultlanguage[mathfunctions=false]{russian}
\renewcommand{\datename}{\textit{Дата}:}
\providecommand{\problemname}{Проблема}
\providecommand{\solutionname}{Решение}
\fi
\ifassign@es
\setdefaultlanguage{spanish}
\renewcommand{\datename}{\textit{Fecha}:}
\providecommand{\problemname}{Problema}
\providecommand{\solutionname}{Solución}
\fi

\setotherlanguage{english}
\setotherlanguage[frenchpart=false]{french}
\setotherlanguage{spanish}
\setotherlanguage[mathfunctions=false]{russian}
\setotherlanguage{arabic}
\setotherlanguage{chinese}

\definecolor{prussian}{HTML}{003153}
\definecolor{marrs}{HTML}{008c8c}

\everymath{\displaystyle}
\allowdisplaybreaks

\setmathfont[range={scr,bfscr},StylisticSet=1]{NewCMMath-Book.otf}

\delimiterfactor=1080
\delimitershortfall=0pt

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\tr}{tr}

\DeclarePairedDelimiterX{\abs}[1]{\lvert}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX{\floor}[1]{\lfloor}{\rfloor}{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX{\norm}[1]{\lVert}{\rVert}{\ifblank{#1}{\,\cdot\,}{#1}}
\DeclarePairedDelimiterX{\set}[2]{\lbrace}{\rbrace}{\ifblank{#2}{#1}{\,#1:#2\,}}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}
}

\providecommand*{\eu}{\ensuremath{\symup{e}}}
\providecommand*{\piu}{\ensuremath{\symup{\pi}}}

\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem{proposition}{Proposition}
\newtheorem{conjecture}{Conjecture}
\newtheorem{criterion}{Criterion}
\newtheorem{assertion}{Assertion}

\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem{condition}{Condition}
\newtheorem{problem}{\problemname}
\newtheorem{example}{Example}
\newtheorem{exercise}{Exercise}
\newtheorem{algorithm}{Algorithm}
\newtheorem{question}{Question}
\newtheorem{axiom}{Axiom}
\newtheorem{property}{Property}
\newtheorem{assumption}{Assumption}
\newtheorem{hypothesis}{Hypothesis}

\theoremstyle{remark}
\newtheorem*{remark}{Remark}
\newtheorem*{note}{Note}
\newtheorem*{notation}{Notation}
\newtheorem*{claim}{Claim}
\newtheorem*{summary}{Summary}
\newtheorem*{acknowledgment}{Acknowledgment}
\newtheorem*{case}{Case}
\newtheorem*{conclusion}{Conclusion}

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

\ifassign@nat
\sisetup{parse-numbers=false}
\fi

\renewcommand\tabularxcolumn[1]{m{#1}}

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

\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket},partial=upright}

\endinput
