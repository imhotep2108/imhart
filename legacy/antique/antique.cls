\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{antique}

\LoadClass{letter}

\RequirePackage{babel}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{xltabular}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{typewriter}
\RequirePackage{ducksay}
\RequirePackage{coffeestains}
% \RequirePackage{hyperref}

\babelprovide[import,main]{english}
\babelprovide[import]{french}
\babelprovide[import]{german}
\babelprovide[import]{russian}
\babelprovide[import]{spanish}

\geometry{letterpaper}
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\raggedright

\renewcommand{\tabularxcolumn}[1]{m{#1}}

\ExplSyntaxOn
\NewExpandableDocumentCommand\rand{mmm}{\fp_eval:n{randint(#2,#3)/#1}}
\ExplSyntaxOff
\NewDocumentCommand\coffeestain{mmmmmm}{
    \if#11\coffeestainA{#2}{#3}{#4}{#5}{#6}
    \fi
    \if#12\coffeestainB{#2}{#3}{#4}{#5}{#6}
    \fi
    \if#13\coffeestainC{#2}{#3}{#4}{#5}{#6}
    \fi
    \if#14\coffeestainD{#2}{#3}{#4}{#5}{#6}
    \fi
}
\AddToHook{shipout/foreground}{
    \coffeestain{\rand{1}{1}{8}}{
        \rand{100}{0}{50}
    }{
        1
    }{
        \rand{1}{0}{360}
    }{
        \rand{100}{-475}{475}in
    }{
        \rand{100}{-600}{600}in
    }
}

\endinput
