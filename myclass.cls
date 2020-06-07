% to do
%
%
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[2020/03/11 Skripsi class]

\LoadClass[a4paper, 12pt]{report}

%------------------------------------------------------------
% Require Package
%------------------------------------------------------------
% to add indent for first paragraph
\RequirePackage{indentfirst}
% to justify
\RequirePackage{ragged2e}
% Times New Roman Font like
\RequirePackage{newtxtext, newtxmath}
% to use or import image
\RequirePackage{graphicx}
% to set space of paragraph line
\RequirePackage{setspace}
\onehalfspacing
% to costumize Table of contents
\RequirePackage{tocloft}
% to costumize footer and header
\RequirePackage{fancyhdr}
% Hyperlink
\RequirePackage[pdftex,bookmarks=true,hidelinks]{hyperref}


% To Setting footer, header and page number
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{ %style for chapter page
    \fancyhf{} % clear all header and footer fields
    \fancyfoot[R]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{empty}{ %style for cover
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

%------------------------------------------------------------
%Layout
%------------------------------------------------------------
\setlength{\topmargin}{0cm}
\setlength{\headheight}{1cm}
\setlength{\headsep}{0.5cm}
\setlength{\topskip}{1ex}
\setlength{\oddsidemargin}{1.46cm}
\setlength{\evensidemargin}{1.46cm}
\setlength{\textwidth}{14.3cm}
\setlength{\textheight}{22.7cm}
\setlength{\footskip}{1cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\parindent}{3em} %Indent approx 6 character



\def\prefacename{PRAKATA}%
\def\contentsname{DAFTAR ISI}%
\def\listfigurename{DAFTAR GAMBAR}%
\def\listtablename{DAFTAR TABEL}%
\def\listappendixname{DAFTAR LAMPIRAN}%
\def\nomenclaturename{DAFTAR LAMBANG DAN SINGKATAN}%
\def\abstractname{INTISARI}%
\def\partname{BAGIAN}%
\def\chaptername{BAB}%
\def\appendixname{LAMPIRAN}%
\def\refname{DAFTAR PUSTAKA}%
\def\bibname{DAFTAR PUSTAKA}%
\def\indexname{Indek}%
\def\figurename{Gambar}%
\def\tablename{Tabel}%
\def\pagename{Halaman}%


%------------------------------------------------------------]
%Define thesis's inputs
%------------------------------------------------------------
\gdef\@university{Universitas Hasanuddin}
\gdef\@city{Makassar}
\newcommand{\titleind}[1]{\gdef\@titleind{#1}}
\newcommand{\@titleind}{}
\newcommand{\titleeng}[1]{\gdef\@titleeng{#1}}
\newcommand{\@titleeng}{}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\@fullname}{}
\newcommand{\idnum}[1]{\gdef\@idnum{#1}}
\newcommand{\@idnum}{}
\newcommand{\examdate}[1]{\gdef\@examdate{#1}}
\newcommand{\@examdate}{\number\day~\ifcase\month\or
Januari\or Februari\or Maret\or April\or Mei\or Juni\or
Juli\or Agustus\or September\or Oktober\or November\or Desember\fi
\space \number\year}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\@degree}{}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\@yearsubmit}{}
\newcommand{\program}[1]{\gdef\@program{#1}}
\newcommand{\@program}{}
\newcommand{\headprogram}[1]{\gdef\@headprogram{#1}}
\newcommand{\@headprogram}{}
\newcommand{\dept}[1]{\gdef\@dept{#1}}
\newcommand{\@dept}{}
\newcommand{\faculty}[1]{\gdef\@faculty{#1}}
\newcommand{\@faculty}{}
\newcommand{\firstsupervisor}[1]{\gdef\@firstsupervisor{#1}}
\newcommand{\@firstsupervisor}{}
\newcommand{\secondsupervisor}[1]{\gdef\@secondsupervisor{#1}}
\newcommand{\@secondsupervisor}{}
\newcommand{\firstexaminer}[1]{\gdef\@firstexaminer{#1}}
\newcommand{\@firstexaminer}{}
\newcommand{\secondexaminer}[1]{\gdef\@secondexaminer{#1}}
\newcommand{\@secondexaminer}{}
\newcommand{\thirdexaminer}[1]{\gdef\@thirdexaminer{#1}}
\newcommand{\@thirdexaminer}{}


%------------------------------------------------------------
%Define cover Seminar Proposal
%------------------------------------------------------------
\def\coverproposal{
    \textit{Seminar 1}
    \thispagestyle{empty}
    \pagenumbering{roman}
    \setcounter{page}{1}
    \begin{center}
        \begin{singlespace}
            \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
            \vspace{1.0cm}
            \MakeUppercase{\normalfont\slshape\bfseries\@titleeng}\par\nobreak
            \vfill
            \includegraphics[height=6cm]{logoUH}
            \vfill
            {\normalfont
                Oleh\\
                \@fullname\\
                \@idnum}\\
                \vspace{1.5cm}
            {\normalfont
            \begin{tabular}{p{2cm}p{4cm}p{7cm}}
                & Pembimbing Utama &: \@firstsupervisor\\
                & Pembimbing Pertama  &: \@secondsupervisor\\
                & Penguji  &: 1.\@firstexaminer\\
                & & \hspace{1.8mm} 2.\@secondexaminer\\
            \end{tabular}
            \vspace{2.0cm}\\
            \MakeUppercase{\normalfont\bfseries Program Studi \@program}\\
            \MakeUppercase{\normalfont\bfseries Departemen \@dept}\\
            \MakeUppercase{\normalfont\bfseries\@faculty}\\
            \MakeUppercase{\normalfont\bfseries\@university}\\
            \MakeUppercase{\normalfont\bfseries\@city}\\
            \vspace{0.5cm}
            {\normalfont\bfseries\@yearsubmit}}\\
        \end{singlespace}
    \end{center}
    \newpage
}


%------------------------------------------------------------
%Define cover Skripsi
%------------------------------------------------------------
\def\cover{%
    \thispagestyle{empty}%
    \pagenumbering{roman}
    \setcounter{page}{1}
    \begin{center}
        \begin{singlespace}
            \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
            \vspace{1.0cm}
            \MakeUppercase{\normalfont\slshape\bfseries\@titleeng}\par\nobreak
            \vfill
            \MakeUppercase{\normalfont\bfseries Skripsi}\\
            \vspace{1.5cm}
            \includegraphics[scale=0.3]{logoUH}
            \vfill
            {\normalfont
            \@fullname\\
            \@idnum}\\
            \vspace{1.5cm}
            {\normalfont
            \MakeUppercase{\normalfont\bfseries Program Studi \@program}\\
            \MakeUppercase{\normalfont\bfseries Departemen \@dept}\\
            \MakeUppercase{\normalfont\bfseries\@faculty}\\
            \MakeUppercase{\normalfont\bfseries\@university}\\
            \MakeUppercase{\normalfont\bfseries\@city}\\
            \vspace{0.5cm}
            {\normalfont\bfseries\@yearsubmit}}\\
        \end{singlespace}
    \end{center}
}


% Setting figure and table name
\renewcommand \thefigure {\@arabic\c@chapter.\@arabic\c@section}
\renewcommand \thetable {\@arabic\c@chapter.\@arabic\c@section}


%------------------------------------------------------------
%Redefine chapter and sections
%------------------------------------------------------------
% \setcounter{secnumdepth}{2}
% \renewcommand \thepart {\@Roman \c@part}
\renewcommand \thechapter {\@Roman\c@chapter}
\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
\renewcommand \thesubsection {\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection}
\renewcommand \thesubsubsection {\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection.\@arabic\c@subsubsection}
\renewcommand{\@makechapterhead}[1]{%
    {\parindent \z@ \centering \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \large\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 0\p@
    \fi
        \interlinepenalty\@M
        \large \bfseries #1\par\nobreak
        \vskip 15\p@
    }
}
\renewcommand{\section}{
    \@startsection {section}{1}{\z@}
        {-3.5ex \@plus -1ex \@minus -.2ex}
        {2.3ex \@plus.2ex}
        {\normalfont\normalsize\bfseries}
}
\renewcommand{\subsection}{
    \@startsection{subsection}{2}{\z@}
        {-3.25ex\@plus -1ex \@minus -.2ex}
        {1.5ex \@plus .2ex}
        {\normalfont\normalsize\bfseries}
}
\renewcommand{\subsubsection}{
    \@startsection{subsubsection}{2}{\z@}
        {-3.25ex\@plus -1ex \@minus -.2ex}
        {1.5ex \@plus .2ex}
        {\normalfont\normalsize\bfseries}
}
\renewcommand{\@makeschapterhead}[1]{%
    {\parindent \z@ \centering \normalfont
    \large\bfseries #1
    \par\nobreak
    \vskip 20\p@}
}



% costumize Table of contents
\renewcommand{\cftchappresnum}{BAB }
\renewcommand{\cftchapnumwidth}{3.7em}
\renewcommand{\cftchapdotsep}{\cftdotsep}
% table of contents
\renewcommand{\cftbeforetoctitleskip}{-0.25cm}
\renewcommand{\cftaftertoctitleskip}{0.75cm}
\renewcommand\cfttoctitlefont{\hfill\Large\bfseries\MakeUppercase}
\renewcommand\cftaftertoctitle{\hfill\mbox{}}
% list of figures
\renewcommand{\cftbeforeloftitleskip}{-0.25cm}
\renewcommand{\cftafterloftitleskip}{0.75cm}
\renewcommand\cftloftitlefont{\hfill\Large\bfseries\MakeUppercase}
\renewcommand\cftafterloftitle{\hfill\mbox{}}
% list of tables
\renewcommand{\cftbeforelottitleskip}{-0.25cm}
\renewcommand{\cftafterlottitleskip}{0.75cm}
\renewcommand\cftlottitlefont{\hfill\Large\bfseries\MakeUppercase}
\renewcommand\cftafterlottitle{\hfill\mbox{}}


% figure
% usage begin{afigure}{caption}
\newenvironment{afigure}[1]
    {\newcommand{\tmpcaption}{#1} \begin{figure}[h]}
    {\caption{\tmpcaption} \end{figure}}

% usage begin{atable}{caption}
\newenvironment{atable}[1]
    {\begin{table}[h] \caption{#1} \begin{center} }
    {\end{center} \vspace{-4mm} \end{table}}
