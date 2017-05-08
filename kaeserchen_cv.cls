\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kaeserchen_cv}[2017/05/07 Custom CV class]

\LoadClass{article}

\renewcommand{\familydefault}{\sfdefault}

\RequirePackage[explicit]{titlesec}
\RequirePackage{geometry}
\RequirePackage[scaled=0.9]{helvet}
\RequirePackage[T1]{fontenc}
\RequirePackage[usenames, dvipsnames]{color}
\RequirePackage{array,ragged2e}
\RequirePackage{tabularx}
\RequirePackage{cite}
\RequirePackage[super,sort&compress]{natbib}

\definecolor{highlight}{RGB}{149, 165, 166}
\setlength\parindent{0pt}

% Fill a line to the right.
\def\Vhrulefill{\leavevmode\leaders\hrule height 0.7ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt}
\titleformat{\section}
    {\Large\scshape\raggedright\bfseries\color{highlight}}
    {}{0pt}
    {#1 ~ \Vhrulefill}

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

% Reduce spacing
\titlespacing\section{0pt}{8pt plus 2pt minus 2pt}{2pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{8pt plus 2pt minus 2pt}{2pt plus 2pt minus 2pt}

% Name section, takes first name and last name.
\newcommand{\name}[2]{
  \centerline{\Huge\scshape\raggedright{#1} \Huge\scshape\raggedright\bfseries{#2}}
}

% Subtitle, takes job titles.
\newcommand{\subtitle}[2]{
    \vspace{1mm}
    \centerline{
        {#1} 
        {\textperiodcentered} 
        {#2}}
}

% Contact section, takes email address, phone number.
\newcommand{\contact}[3]{
    \vspace{1mm}
    \centerline{
        \textcolor{highlight}{#1} 
        {\color{highlight}\textperiodcentered} 
        \textcolor{highlight}{#2}}
}

\newcommand{\boldscshape}[1]{
    {\scshape\textbf{#1}}
}

% Experiences Format.
\newcommand{\experienceentry}[5]{
    \boldscshape{#1} | {#2} \hfill \textcolor{highlight}{#3} | \textcolor{highlight}{#4} \\
    {#5}
}

% Education Format.
\newcommand{\educationentry}[5]{
    \boldscshape{#1} | {#2} \hfill \textcolor{highlight}{#3} | \textcolor{highlight}{#4} \\
    {#5}
}

% Bold names in citations.
\newcommand{\boldname}[1]{\textbf{#1}}

% Define an environment for awards 
\newenvironment{awardssection}{
    \begin{tabular*}{0.98\textwidth}{rl@{\extracolsep{\fill}}r}
}{
    \end{tabular*}
}

\newcommand{\award}[3]{
    {#1} & \textbf{#2} & \textit{#3} \\
}

% Define an environment for skills 
\newenvironment{skillssection}{
    \begin{tabular}{>{\bfseries}r l}
}{
    \end{tabular}
}

\newcommand{\skill}[2]{
    \textbf{#1} & {#2} \\
}
