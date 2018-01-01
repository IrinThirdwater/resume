\ProvidesClass{resume}
\LoadClass[11pt]{article}

\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{blindtext}
\RequirePackage{tcolorbox}
\RequirePackage{indentfirst}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{colortbl}
\RequirePackage{pbox}

\newcommand{\name}[1]{
    \begin{center}
        \Large \bf \sc {#1}
    \end{center}
}

\RequirePackage{titlesec}
\titleformat{\section}
    {\vspace{0.5em} \bf \large}
    {}
    {0pt}
    {\hspace{0em}}
    [\titlerule]

\setenumerate[1]{label=,leftmargin=*}

\newcommand{\email}[1]{
    \href{mailto:#1}{#1}
}

%
% Experience and Education arguments
%
% #1 Date range
% #2 Duration
% #3 Role/Qualification
% #4 Institution
% #5 Location
% #6 Description
%
\newcommand{\experience}[6]{
    \begin{tabularx}{\textwidth}{ p{3.7cm} @{\hspace{1em}}X }
        \multirow{3}{*}[0.7em]{\pbox{3.6cm}{\relax\ifvmode\centering\fi #1 \\ \small(#2)}} & {\textit{#3}} \\
        & \cellcolor{gray!10} #4 \hfill #5 \\
        & #6 \\
    \end{tabularx}
    \vspace{0.1em}
}
\newcommand{\education}[6]{
    \experience{#1}{#2}{#3}{#4}{#5}{#6}
}
