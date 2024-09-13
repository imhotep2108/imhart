\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{spec}

\newif\ifspec@full

\DeclareOption{full}{\spec@fulltrue}
\ExecuteOptions{}
\ProcessOptions\relax

\LoadClass{amsart}

\def\datename{\textit{Date}:}
\def\problemname{Problem}
\def\remarkname{Remark}
\def\proofname{Proof}
\def\solutionname{Solution}

\RequirePackage[english]{babel}

\RequirePackage{mathtools}

\RequirePackage{accents}
\RequirePackage{cancel}
\RequirePackage{derivative}
\RequirePackage[parse-numbers = false]{siunitx}

\allowdisplaybreaks

\let\Im\relax
\let\Re\relax

\DeclareMathOperator{\Im}{Im}
\DeclareMathOperator{\Re}{Re}

\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\tr}{tr}

\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Hom}{Hom}

\DeclarePairedDelimiterX\oldabs[1]\lvert\rvert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldnorm[1]\lVert\rVert{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldfloor[1]\lfloor\rfloor{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldceil[1]\lceil\rceil{\ifblank{#1}{\:\cdot\:}{#1}}
\DeclarePairedDelimiterX\oldnint[1]\lfloor\rceil{\ifblank{#1}{\:\cdot\:}{#1}}

\DeclarePairedDelimiter\oldbra\langle\rvert
\DeclarePairedDelimiter\oldket\lvert\rangle
\DeclarePairedDelimiterX\oldbraket[3]\langle\rangle{\ifblank{#2}{#1\delimsize\vert\mathopen{}#3}{#1\delimsize\vert\mathopen{}#2\delimsize\vert\mathopen{}#3}}
\DeclarePairedDelimiterX\oldketbra[2]\lvert\rvert{#1\delimsize\rangle\delimsize\langle\mathopen{}#2}

\DeclarePairedDelimiterXPP\oldeval[3]{}.\rvert{\ifblank{#2}{}{_{#2}}\ifblank{#3}{}{^{#3}}}{#1}

\DeclarePairedDelimiterX\oldset[2]\lbrace\rbrace{\ifblank{#2}{#1}{#1\:\delimsize\vert\:\mathopen{}#2}}

\NewDocumentCommand\abs{O{}o}{\IfNoValueTF{#2}{\oldabs*{#1}}{\oldabs[#1]{#2}}}
\NewDocumentCommand\norm{O{}o}{\IfNoValueTF{#2}{\oldnorm*{#1}}{\oldnorm[#1]{#2}}}
\NewDocumentCommand\floor{O{}o}{\IfNoValueTF{#2}{\oldfloor*{#1}}{\oldfloor[#1]{#2}}}
\NewDocumentCommand\ceil{O{}o}{\IfNoValueTF{#2}{\oldceil*{#1}}{\oldceil[#1]{#2}}}
\NewDocumentCommand\nint{O{}o}{\IfNoValueTF{#2}{\oldnint*{#1}}{\oldnint[#1]{#2}}}

\NewDocumentCommand\bra{om}{\IfNoValueTF{#1}{\oldbra*{#2}}{\oldbra[#1]{#2}}}
\NewDocumentCommand\ket{om}{\IfNoValueTF{#1}{\oldket*{#2}}{\oldket[#1]{#2}}}
\NewDocumentCommand\braket{omO{}m}{\IfNoValueTF{#1}{\oldbraket*{#2}{#3}{#4}}{\oldbraket[#1]{#2}{#3}{#4}}}
\NewDocumentCommand\ketbra{omm}{\IfNoValueTF{#1}{\oldketbra*{#2}{#3}}{\oldketbra[#1]{#2}{#3}}}

\NewDocumentCommand\eval{omO{}O{}}{\IfNoValueTF{#1}{\oldeval*{#2}{#3}{#4}}{\oldeval[#1]{#2}{#3}{#4}}}

\NewDocumentCommand\set{omO{}}{\IfNoValueTF{#1}{\oldset*{#2}{#3}}{\oldset[#1]{#2}{#3}}}

\def\eu{\symup{e}}
\def\iu{\symup{i}}
\def\piu{\symup{\pi}}
\def\gammau{\symup{\gamma}}

\def\coloniff{\DOTSB\;:\Longleftrightarrow\;}
\def\iffcolon{\DOTSB\;\Longleftrightarrow:\;}

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}%
}

\RequirePackage{thmtools}

\theoremstyle{definition}
\newtheorem{problem}{\problemname}
\theoremstyle{remark}
\newtheorem*{remark}{\remarkname}

\advance\@enumdepth1
\renewcommand*{\theenumi}{\theproblem}

\ifspec@full
    \def\thmt@problem@postheadhook{\setcounter{enumii}{0}\bookmark[dest = \@currentHref, rellevel = 1, keeplevel]{\problemname\space\theproblem}}
    
    \renewenvironment{proof}[1][\proofname]{\par
        \pushQED{\endocg\qed}%
        \normalfont \topsep6\p@\@plus6\p@\relax
        \trivlist
        \item[\hskip\labelsep
                    \itshape
                    \switchocg{\theenumi\theenumii}{#1\@addpunct{.}}]\ignorespaces\leavevmode\ocg{\proofname\space\theenumi\theenumii}{\theenumi\theenumii}{0}
    }{\popQED\endtrivlist\@endpefalse}
    
    \newenvironment{solution}[1][\solutionname]{\par
        \pushQED{\endocg}%
        \normalfont \topsep6\p@\@plus6\p@\relax
        \trivlist
        \item[\hskip\labelsep
                    \itshape
                    \switchocg{\theenumi\theenumii}{#1\@addpunct{.}}]\ignorespaces\leavevmode\ocg{\solutionname\space\theenumi\theenumii}{\theenumi\theenumii}{0}
    }{\popQED\endtrivlist\@endpefalse}
\else
    \newenvironment{solution}[1][\solutionname]{\par
        \pushQED{}%
        \normalfont \topsep6\p@\@plus6\p@\relax
        \trivlist
        \item[\hskip\labelsep
                    \itshape
            #1\@addpunct{.}]\ignorespaces
    }{\popQED\endtrivlist\@endpefalse}
\fi

\RequirePackage{graphicx}
\RequirePackage{booktabs}

\RequirePackage{enumitem}

\RequirePackage{csquotes}

\RequirePackage{ragged2e}

\RequirePackage{geometry}

\geometry{papersize = {156mm, 234mm}, heightrounded}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\unimathsetup{math-style = ISO, bold-style = ISO, partial = upright, warnings-off = {mathtools-colon, mathtools-overbracket}}

\setmainfont{EBGaramond}[Ligatures = Rare, Numbers = OldStyle, Style = Swash]
\setmathfont{Garamond-Math}[StylisticSet = {6, 8}]

\ifspec@full
    \RequirePackage[colorlinks]{hyperref}
    \RequirePackage[numbered]{bookmark}
    \RequirePackage[noabbrev]{cleveref}
    
    \RequirePackage[realmainfile]{currfile}
    \RequirePackage{embedall}
    \RequirePackage{ocgx2}
    
    \embedfile{spec.cls}
    
    \global\let\@allans\@empty
    \DeclareRobustCommand*{\allans}[1]{\gdef\@allans{#1}}
    
    \AddToHook{shipout/background}{\ocg{Hide}{hide}{0}\put(0,-2\baselineskip){\qquad\actionsocg{}{show}{hide, \@allans}{Hide All}}\endocg\ocg{Show}{show}{1}\put(0,-2\baselineskip){\qquad\actionsocg{}{hide, \@allans}{show}{Show All}}\endocg}
\fi

\endinput
