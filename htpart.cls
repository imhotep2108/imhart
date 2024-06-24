\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{htpart}

\newif\ifhtpcls@en
\newif\ifhtpcls@zh
\newif\ifhtpcls@fr
\newif\ifhtpcls@de
\newif\ifhtpcls@ru
\newif\ifhtpcls@es
\newif\ifhtpcls@plain
\newif\ifhtpcls@minion
\newif\ifhtpcls@notosans
\newif\ifhtpcls@cambria
\newif\ifhtpcls@twosid
\newif\ifhtpcls@twocol
\newif\ifhtpcls@hdr
\newif\ifhtpcls@bib
\newif\ifhtpcls@idx
\newif\ifhtpcls@hyp

\htpcls@plaintrue
\htpcls@entrue

\DeclareOption{zh}{\htpcls@enfalse\htpcls@zhtrue}
\DeclareOption{fr}{\htpcls@enfalse\htpcls@frtrue}
\DeclareOption{de}{\htpcls@enfalse\htpcls@detrue}
\DeclareOption{ru}{\htpcls@enfalse\htpcls@rutrue}
\DeclareOption{es}{\htpcls@enfalse\htpcls@estrue}
\DeclareOption{antique}{\htpcls@plainfalse\htpcls@miniontrue}
\DeclareOption{modern}{\htpcls@plainfalse\htpcls@notosanstrue}
\DeclareOption{minion}{\htpcls@plainfalse\htpcls@miniontrue}
\DeclareOption{notosans}{\htpcls@plainfalse\htpcls@notosanstrue}
\DeclareOption{cambria}{\htpcls@plainfalse\htpcls@minionfalse\htpcls@notosansfalse\htpcls@cambriatrue}
\DeclareOption{basic}{\htpcls@twosidtrue\htpcls@hdrtrue\htpcls@hyptrue}
\DeclareOption{exten}{\htpcls@twosidtrue\htpcls@twocoltrue\htpcls@hdrtrue\htpcls@bibtrue\htpcls@idxtrue\htpcls@hyptrue}
\DeclareOption{twosid}{\htpcls@twosidtrue}
\DeclareOption{twocol}{\htpcls@twocoltrue}
\DeclareOption{hdr}{\htpcls@hdrtrue}
\DeclareOption{bib}{\htpcls@bibtrue}
\DeclareOption{idx}{\htpcls@idxtrue}
\DeclareOption{hyp}{\htpcls@hyptrue}
\ExecuteOptions{}
\ProcessOptions\relax

\LoadClass[\ifhtpcls@twosid twoside\else oneside\fi]{article}

\RequirePackage{babel}
\RequirePackage{csquotes}
\ifhtpcls@zh
\RequirePackage[fontset=none,heading=true]{ctex}
\else
\RequirePackage{xeCJK}
\fi

\RequirePackage{geometry}
\RequirePackage{multicol}
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
\RequirePackage{titling}
\ifhtpcls@bib
\RequirePackage{biblatex}
\fi
\ifhtpcls@idx
\RequirePackage{imakeidx}
\fi

\ifhtpcls@hyp
\RequirePackage{hyperref}
\RequirePackage{bookmark}
\fi
\RequirePackage{cleveref}

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

\ifhtpcls@en
\babelprovide[import,main]{english}
\babelprovide[import]{chinese}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}
\fi
\ifhtpcls@zh
\babelprovide[import,main]{chinese}
\babelprovide[import]{english}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}
\fi
\ifhtpcls@fr
\babelprovide[import,main]{french}
\babelprovide[import]{chinese}
\babelprovide[import]{english}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}
\fi
\ifhtpcls@de
\babelprovide[import,main]{german}
\babelprovide[import]{chinese}
\babelprovide[import]{english}
\babelprovide[import]{french}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}
\fi
\ifhtpcls@ru
\babelprovide[import,main]{russian}
\babelprovide[import]{chinese}
\babelprovide[import]{english}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{spanish}
\fi
\ifhtpcls@es
\babelprovide[import,main]{spanish}
\babelprovide[import]{chinese}
\babelprovide[import]{english}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\fi

\ifhtpcls@plain
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
\fi
\ifhtpcls@minion
\babelfont{rm}[
    Extension       = .otf,
    BoldFont        = MinionPro-Bold,
    ItalicFont      = MinionPro-Italic,
    BoldItalicFont  = MinionPro-BoldItalic
]{MinionPro-Regular}
\babelfont{sf}[
    Extension       = .otf,
    BoldFont        = MyriadPro-Bold,
    ItalicFont      = MyriadPro-Italic,
    BoldItalicFont  = MyriadPro-BoldItalic
]{MyriadPro-Regular}
\babelfont{tt}[
    Extension       = .otf,
    BoldFont        = CourierStd-Bold,
    ItalicFont      = CourierStd-Oblique,
    BoldItalicFont  = CourierStd-BoldOblique
]{CourierStd-Regular}
\fi
\ifhtpcls@notosans
\renewcommand\familydefault{\sfdefault}
\babelfont{rm}[
    Extension       = .ttf,
    BoldFont        = NotoSerif-Bold,
    ItalicFont      = NotoSerif-Italic,
    BoldItalicFont  = NotoSerif-BoldItalic
]{NotoSerif-Regular}
\babelfont{sf}[
    Extension       = .otf,
    BoldFont        = NotoSans-Bold,
    ItalicFont      = NotoSans-Italic,
    BoldItalicFont  = NotoSans-BoldItalic
]{NotoSans-Regular}
\babelfont{tt}[
    Extension       = .ttf,
    BoldFont        = NotoSansMono-Bold,
    ItalicFont      = NotoSansMono-Regular,
    BoldItalicFont  = NotoSansMono-Bold
]{NotoSansMono-Regular}
\fi
\ifhtpcls@cambria
\babelfont{rm}[
    Extension       = .ttf,
    BoldFont        = Cambria-Bold,
    ItalicFont      = Cambria-Italic,
    BoldItalicFont  = Cambria-BoldItalic
]{Cambria-Regular}
\babelfont{sf}[
    Extension       = .ttf,
    BoldFont        = Calibri-Bold,
    ItalicFont      = Calibri-Italic,
    BoldItalicFont  = Calibri-BoldItalic
]{Calibri-Regular}
\babelfont{tt}[
    Extension       = .ttf,
    BoldFont        = Consola-Bold,
    ItalicFont      = Consola-Italic,
    BoldItalicFont  = Consola-BoldItalic
]{Consola-Regular}
\fi

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
\setlocalecaption{chinese}{summary}{总结}
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
\setlocalecaption{french}{summary}{Résumé}
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
\setlocalecaption{german}{summary}{Zusammenfassung}
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
\setlocalecaption{russian}{summary}{Резюме}
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
\setlocalecaption{spanish}{summary}{Resumen}
\setlocalecaption{spanish}{solution}{Solución}

\DeclareQuoteStyle{chinese}{\textquotedblleft}{\textquotedblright}{\textquoteleft}{\textquoteright}

\ifhtpcls@plain
\setCJKmainfont[
    Extension       = .otf,
    BoldFont        = FandolSong-Bold,
    ItalicFont      = FandolKai-Regular,
    SmallCapsFont   = FandolSong-Regular,
    BoldItalicFont  = FandolKai-Regular
]{FandolSong-Regular}
\setCJKsansfont[
    Extension       = .otf,
    BoldFont        = FandolHei-Bold,
    ItalicFont      = FandolHei-Regular,
    SmallCapsFont   = FandolHei-Regular,
    BoldItalicFont  = FandolHei-Bold
]{FandolHei-Regular}
\setCJKmonofont[
    Extension       = .otf,
    BoldFont        = FandolFang-Regular,
    ItalicFont      = FandolFang-Regular,
    SmallCapsFont   = FandolFang-Regular,
    BoldItalicFont  = FandolFang-Regular
]{FandolFang-Regular}
\fi
\ifhtpcls@minion
\setCJKmainfont[
    Extension       = .otf,
    BoldFont        = AdobeSongStd-Light,
    ItalicFont      = AdobeKaitiStd-Regular,
    SmallCapsFont   = AdobeSongStd-Light,
    BoldItalicFont  = AdobeKaitiStd-Regular
]{AdobeSongStd-Light}
\setCJKsansfont[
    Extension       = .otf,
    BoldFont        = AdobeHeitiStd-Regular,
    ItalicFont      = AdobeHeitiStd-Regular,
    SmallCapsFont   = AdobeHeitiStd-Regular,
    BoldItalicFont  = AdobeHeitiStd-Regular
]{AdobeHeitiStd-Regular}
\setCJKmonofont[
    Extension       = .otf,
    BoldFont        = AdobeFangsongStd-Regular,
    ItalicFont      = AdobeFangsongStd-Regular,
    SmallCapsFont   = AdobeFangsongStd-Regular,
    BoldItalicFont  = AdobeFangsongStd-Regular
]{AdobeFangsongStd-Regular}
\fi
\ifhtpcls@notosans
\setCJKmainfont[
    Extension       = .otf,
    BoldFont        = NotoSerifCJKsc-Bold,
    ItalicFont      = NotoSerifCJKsc-Regular,
    SmallCapsFont   = NotoSerifCJKsc-Regular,
    BoldItalicFont  = NotoSerifCJKsc-Bold
]{NotoSerifCJKsc-Regular}
\setCJKsansfont[
    Extension       = .otf,
    BoldFont        = NotoSansCJKsc-Bold,
    ItalicFont      = NotoSansCJKsc-Regular,
    SmallCapsFont   = NotoSansCJKsc-Regular,
    BoldItalicFont  = NotoSansCJKsc-Bold
]{NotoSansCJKsc-Regular}
\setCJKmonofont[
    Extension       = .otf,
    BoldFont        = NotoSansMonoCJKsc-Bold,
    ItalicFont      = NotoSansMonoCJKsc-Regular,
    SmallCapsFont   = NotoSansMonoCJKsc-Regular,
    BoldItalicFont  = NotoSansMonoCJKsc-Bold
]{NotoSansMonoCJKsc-Regular}
\fi
\ifhtpcls@cambria
\setCJKmainfont[
    Extension       = .ttf,
    BoldFont        = MicrosoftYaHei-Bold,
    ItalicFont      = MicrosoftYaHei-Regular,
    SmallCapsFont   = MicrosoftYaHei-Regular,
    BoldItalicFont  = MicrosoftYaHei-Bold
]{MicrosoftYaHei-Regular}
\setCJKsansfont[
    Extension       = .ttf,
    BoldFont        = MicrosoftYaHei-Bold,
    ItalicFont      = MicrosoftYaHei-Regular,
    SmallCapsFont   = MicrosoftYaHei-Regular,
    BoldItalicFont  = MicrosoftYaHei-Bold
]{MicrosoftYaHei-Regular}
\setCJKmonofont[
    Extension       = .ttf,
    BoldFont        = MicrosoftYaHei-Bold,
    ItalicFont      = MicrosoftYaHei-Regular,
    SmallCapsFont   = MicrosoftYaHei-Regular,
    BoldItalicFont  = MicrosoftYaHei-Bold
]{MicrosoftYaHei-Regular}
\fi

%%%%%%%%%%%%%%%% Preamble %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

\geometry{a4paper}
\ifhtpcls@twocol
\geometry{margin=1in}
\fi

\setlength{\columnseprule}{0.4pt}

\ifhtpcls@twocol
\AddToHook{begindocument/end}{\begin{multicols}{2}}
\AddToHook{enddocument}{\end{multicols}}
\fi

\ifhtpcls@hdr
\AddToHook{begindocument}{
    \pagestyle{fancy}
    \ifhtpcls@twosid
    \fancyfoot[OR,EL]{\thepage}
    \fancyfoot[OC]{\ifdefined\thetitle\thetitle\fi}
    \fancyfoot[EC]{Imhotep}
    \else
    \fancyfoot[R]{\thepage}
    \fancyfoot[C]{\ifdefined\thetitle\thetitle\fi}
    \fi
}
\fi

%%%%%%%%%%%%%%%% Page and Text %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Mathematics and Science %%%%%%%%%%%%%%%%

\allowdisplaybreaks

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\mspan}{span}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\tr}{tr}
% need to complete %

\DeclarePairedDelimiterX{\oldabs}[1]{\lvert}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\abs}{sO{}}{\IfBooleanTF{#1}{\oldabs{#2}}{\oldabs*{#2}}}
\DeclarePairedDelimiterX{\oldbra}[1]{\langle}{\rvert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\bra}{sO{}}{\IfBooleanTF{#1}{\oldbra{#2}}{\oldbra*{#2}}}
\DeclarePairedDelimiterX{\oldbraket}[2]{\langle}{\rangle}{\ifblank{#2}{\,\cdot\,\middle\vert\,\cdot\,}{#1\middle\vert#2}}
\NewDocumentCommand{\braket}{sO{}O{}}{\IfBooleanTF{#1}{\oldbraket{#2}{#3}}{\oldbraket*{#2}{#3}}}
\DeclarePairedDelimiterX{\oldceil}[1]{\lceil}{\rceil}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\ceil}{sO{}}{\IfBooleanTF{#1}{\oldceil{#2}}{\oldceil*{#2}}}
\DeclarePairedDelimiterX{\oldfloor}[1]{\lfloor}{\rfloor}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\floor}{sO{}}{\IfBooleanTF{#1}{\oldfloor{#2}}{\oldfloor*{#2}}}
\DeclarePairedDelimiterX{\oldket}[1]{\lvert}{\rangle}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\ket}{sO{}}{\IfBooleanTF{#1}{\oldket{#2}}{\oldket*{#2}}}
\DeclarePairedDelimiterX{\oldketbra}[2]{\lvert}{\rvert}{\ifblank{#2}{\,\cdot\,\middle\rangle\middle\langle\,\cdot\,}{#1\middle\rangle\middle\langle#2}}
\NewDocumentCommand{\ketbra}{sO{}O{}}{\IfBooleanTF{#1}{\oldketbra{#2}{#3}}{\oldketbra*{#2}{#3}}}
\DeclarePairedDelimiterX{\oldnorm}[1]{\lVert}{\rVert}{\ifblank{#1}{\,\cdot\,}{#1}}
\NewDocumentCommand{\norm}{sO{}}{\IfBooleanTF{#1}{\oldnorm{#2}}{\oldnorm*{#2}}}
\DeclarePairedDelimiterX{\oldset}[2]{\lbrace}{\rbrace}{\ifblank{#2}{#1}{\,#1:#2\,}}
\NewDocumentCommand{\set}{smO{}}{\IfBooleanTF{#1}{\oldset{#2}{#3}}{\oldset*{#2}{#3}}}
% need to complete %

\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
    \hskip -\arraycolsep
    \let\@ifnextchar\new@ifnextchar
    \array{#1}
}

\unimathsetup{warnings-off={mathtools-colon,mathtools-overbracket},partial=upright}

\ifhtpcls@plain
\setmathfont[Extension=.otf,StylisticSet=2]{NewCMMath-Book}
\setmathfont[Extension=.otf,range={scr,bfscr},StylisticSet=1]{NewCMMath-Book}
\setmathfont[Extension=.otf,range=bb,StylisticSet=3]{NewCMMath-Book}
\fi
\ifhtpcls@minion
\setmathfont[
    Extension=.otf,
    SizeFeatures={
        {Size=8.4-,TextStyle},
        {Size=6-8.4,Font=MinionMath-Capt,ScriptStyle},
        {Size=-6,Font=MinionMath-Tiny,ScriptScriptStyle}
    }
]{MinionMath-Regular}
\fi
\ifhtpcls@notosans
\setmathfont[Extension=.otf,StylisticSet=2]{NotoSansMath-Regular}
\setmathfont[Extension=.otf,range={cal,bfcal},StylisticSet=1]{NotoSansMath-Regular}
\fi
\ifhtpcls@cambria
\setmathfont[Extension=.ttf]{CambriaMath-Regular}
\fi

\providecommand*{\eu}{\ensuremath{\symup{e}}}
\providecommand*{\iu}{\ensuremath{\symup{i}}}
\providecommand*{\gammau}{\ensuremath{\symup{\gamma}}}
\providecommand*{\piu}{\ensuremath{\symup{\pi}}}
% need to complete %

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

\usetikzlibrary{scopes,calc,intersections}
\usetikzlibrary{3d}
\usetikzlibrary{cd}

\tikzset{every picture/.style={line cap=round,line join=round,smooth}}

%%%%%%%%%%%%%%%% Mathematics and Science %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Floats and Captions %%%%%%%%%%%%%%%%

\renewcommand{\tabularxcolumn}[1]{m{#1}}

%%%%%%%%%%%%%%%% Floats and Captions %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% Front Matter and Back Matter %%%%%%%%%%%%%%%%

\ifhtpcls@bib
\ExecuteBibliographyOptions{autolang=other}
\addbibresource{refs.bib}
\DeclarePrintbibliographyDefaults{heading=bibintoc}
\nocite{*}
\fi

\ifhtpcls@idx
\indexsetup{noclearpage,firstpagestyle=\ifhtpcls@hdr fancy\else plain\fi}
\makeindex[intoc,columns=\ifhtpcls@twocol1\else2\fi]
\fi

%%%%%%%%%%%%%%%% Front Matter and Back Matter %%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% hyperref %%%%%%%%%%%%%%%%

\ifhtpcls@hyp
\hypersetup{colorlinks}
\bookmarksetup{numbered}
\fi

%%%%%%%%%%%%%%%% hyperref %%%%%%%%%%%%%%%%

\endinput
