\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lib/myskripsi}[2020/03/11 Skripsi Class]
\LoadClass[a4paper, 12pt]{report}

%=============================================================================
% Require Package
%-----------------------------------------------------------------------------
% to add indent for first paragraph
\RequirePackage{indentfirst}

% to justify
\RequirePackage{ragged2e}

% Prevent hyphenating the words
\usepackage[none]{hyphenat}
\sloppy

% Times New Roman Font like
\RequirePackage{newtxtext, newtxmath}

% to use or import image
\RequirePackage{graphicx}

% to use color in table
\RequirePackage[table]{xcolor}

% use CSV to generate table
\usepackage{csvsimple}

% to set space of paragraph line
\RequirePackage{setspace}
\onehalfspacing

% to costumize Table of contents
\RequirePackage{tocloft}

% to costumize footer and header
\RequirePackage{fancyhdr}

% to hide Hyperlink color
\RequirePackage[pdftex,bookmarks=true,hidelinks]{hyperref}

% Counter for figure, table and equation
\RequirePackage{chngcntr}

% Setup the caption of figure, table and equation
\RequirePackage[font=small, labelfont={it},textfont={it}, justification=centering]{caption}

% Setup label of enumerate item
\RequirePackage{enumitem} 
% \renewcommand{\theenumi}{\Alph{enumi}}

% use Watermark
\RequirePackage[pages=some]{background}
%-----------------------------------------------------------------------------
% End Require Package
%=============================================================================


%=============================================================================
% Setting footer, header and page number
%-----------------------------------------------------------------------------
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
%-----------------------------------------------------------------------------
% End Setting footer, header and page number
%=============================================================================


%=============================================================================
% Page Layout, Margin
%-----------------------------------------------------------------------------
\setlength{\topmargin}{0cm}
\setlength{\headheight}{1cm}
\setlength{\headsep}{0.2cm}
\setlength{\topskip}{1ex}
\setlength{\oddsidemargin}{1.2cm}
\setlength{\evensidemargin}{1.2cm}
\setlength{\textwidth}{14.3cm}
\setlength{\textheight}{22.7cm}
\setlength{\footskip}{1cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
%to set indent approx 6 character
\setlength{\parindent}{3em} 
%-----------------------------------------------------------------------------
% End Page Layout, Margin
%=============================================================================


%=============================================================================
% Set Watermark
%-----------------------------------------------------------------------------
\backgroundsetup{
  scale=1,       %% change accordingly
  angle=0,       %% change accordingly
  opacity=.2,    %% change accordingly
  contents={\includegraphics[width=14cm]{images/logoUH.png}}
}
\newcommand\addwatermark{\BgThispage}
%-----------------------------------------------------------------------------
% End Set Watermark
%=============================================================================


%=============================================================================
% Redefition Terms
%-----------------------------------------------------------------------------
\def\prefacename{PRAKATA}
\def\contentsname{DAFTAR ISI}
\def\listfigurename{DAFTAR GAMBAR}
\def\listtablename{DAFTAR TABEL}
\def\listappendixname{DAFTAR LAMPIRAN}
\def\nomenclaturename{DAFTAR LAMBANG DAN SINGKATAN}
\def\abstractname{INTISARI}
\def\partname{BAGIAN}
\def\chaptername{BAB}
\def\appendixname{LAMPIRAN}
\def\refname{DAFTAR PUSTAKA}
\def\bibname{DAFTAR PUSTAKA}
\def\indexname{Indek}
\def\figurename{Gambar}
\def\tablename{Tabel}
\def\pagename{Halaman}
%-----------------------------------------------------------------------------
% End Redefinition Terms
%=============================================================================


%=============================================================================
% Define thesis's inputs
%-----------------------------------------------------------------------------
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
\newcommand{\@examdate}{\number\day~\ifcase\month\or Januari\or Februari\or Maret\or April\or Mei\or Juni\or Juli\or Agustus\or September\or Oktober\or November\or Desember\fi
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
%-----------------------------------------------------------------------------
% End Define thesis's inputs
%=============================================================================


%=============================================================================
% Define Cover Seminar Proposal/Hasil
%-----------------------------------------------------------------------------
\def\coverproposal{
    \thispagestyle{empty}
    \pagenumbering{roman}
    \setcounter{page}{1}
    \begin{center}
        \begin{singlespace}
            \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
            \vspace{1.0cm}
            \MakeUppercase{\normalfont\slshape\bfseries\@titleeng}\par\nobreak
            \vfill
            \includegraphics[height=4.85cm]{images/logoUH}
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
%-----------------------------------------------------------------------------
% End Define Cover Seminar Proposal/Hasil
%=============================================================================


%=============================================================================
% Define Title Page
%-----------------------------------------------------------------------------
\def\titlepage{
    \begin{center}
        \BgThispage
        \addcontentsline{toc}{chapter}{HALAMAN SAMPUL}
        \begin{singlespace}
            \MakeUppercase{\normalfont\bfseries\@titleind}\\
            \vspace{2cm}
            \bfseries{SKRIPSI}
            \vspace{3cm}

            \normalfont{Diajukan sebagai salah satu syarat untuk memperoleh gelar Sarjana Komputer pada Program Studi Ilmu Komputer Departemen Matematika Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Hasanuddin Makassar}\\
            \vspace{3cm}

            {\normalfont
                \@fullname\\
                \@idnum}\\
                \vspace{1.5cm}

            {\normalfont
                \vspace{2.0cm}
                \MakeUppercase{\normalfont\bfseries Program Studi \@program}\\
                \MakeUppercase{\normalfont\bfseries Departemen \@dept}\\
                \MakeUppercase{\normalfont\bfseries\@faculty}\\
                \MakeUppercase{\normalfont\bfseries\@university}\\
                \MakeUppercase{\normalfont\bfseries\@city}\\
                \vspace{0.5cm}
                {\normalfont\bfseries\@yearsubmit}
            }\\
        \end{singlespace}
    \end{center}
    \newpage
}
%-----------------------------------------------------------------------------
% End Define Title Page
%=============================================================================


%=============================================================================
% Define Authentication Page
%-----------------------------------------------------------------------------
\def\authenticationpage{
    \BgThispage
    \addcontentsline{toc}{chapter}{LEMBAR PERNYATAAN KEOTENTIKAN}
    \begin{center}
        \begin{singlespace}
            \MakeUppercase{\normalfont\large\bfseries\expandafter{LEMBAR PERNYATAAN KEOTENTIKAN}}\\
            \BgThispage
            \vspace{2cm}

            \normalfont{Saya yang bertanda tangan di bawah ini menyatakan dengan sungguh-sungguh bahwa skripsi yang saya buat dengan judul:}\\
            \vspace{3cm}

            \bfseries{\@titleind}\\
            \vspace{3cm}

            \normalfont{adalah benar hasi karya saya sendiri bukan hasil plagiat dan belum pernah dipublikasikan dalam bentuk apapun}\\
            \vspace{2.0cm}
        \end{singlespace}
    \end{center}
    \begin{flushright}
        Makassar, 14 September\\
        \vspace{3cm}
        {\@fullname}\\
        NIM. {\@idnum}
    \end{flushright}
    \newpage
}
%-----------------------------------------------------------------------------
% End Define Authentication Page
%=============================================================================


%=============================================================================
% Define Approval Page
%-----------------------------------------------------------------------------
\def\approvalpage{%
    \BgThispage
    \addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
    \begin{center}
        \begin{singlespace}
            \MakeUppercase{\normalfont\large\bfseries\expandafter{HALAMAN PENGESAHAN}}\\
            \vspace{1.0cm}
            \MakeUppercase{\normalfont\large\bfseries\expandafter{Skripsi}}\\
            \vspace{0.5cm}
            \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
            \vspace{1.0cm}
            Disusun oleh\\
            \vspace{0.5cm}
            \@fullname\\
            \@idnum\\
            \vspace{1.0cm}
            Telah dipertahankan di depan Tim Penguji\\
            pada tanggal \expandafter{\@examdate}\\
            \vspace{0.5cm}
            Susunan Tim Penguji\\
            \vspace{2.5cm}
            \begin{tabular}{p{7cm}p{7cm}}
                \@firstsupervisor&\@firstexaminer\\
                Pembimbing1&Penguji
            \end{tabular}

            \vspace{2.0cm}
            \begin{tabular}{p{7cm}p{7cm}}
                \@secondsupervisor&\@secondexaminer\\
                Pembimbing2&Penguji
            \end{tabular}

            \bigskip
            \vspace{2.0cm}
            \begin{tabular}{p{7cm}p{7cm}}
                &\@thirdexaminer\\
                &Penguji
            \end{tabular}
        \end{singlespace}
    \end{center}
    \newpage
}
%-----------------------------------------------------------------------------
% End Define Approval Page
%=============================================================================


%=============================================================================
% Define Cover Skripsi
%-----------------------------------------------------------------------------
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
            \includegraphics[height=4.85cm]{images/logoUH}
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
%-----------------------------------------------------------------------------
% End Define Cover Skripsi
%=============================================================================


%=============================================================================
% Redefine chapter and sections
%-----------------------------------------------------------------------------
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
%-----------------------------------------------------------------------------
% End Redefine chapter and sections
%=============================================================================


%=============================================================================
% Setting Tabble of Content, list of figure, list of table
%-----------------------------------------------------------------------------
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
%-----------------------------------------------------------------------------
% End Setting Tabble of Content, list of figure, list of table
%=============================================================================


%=============================================================================
% Set Table, Figure Environment
%-----------------------------------------------------------------------------
\counterwithin{figure}{section}
\counterwithin{table}{section}
\counterwithin{equation}{section}
%\@addtoreset {figure}{section}
%\renewcommand \thefigure {
%    \ifnum \c@section>\z@ 
%        .\@arabic\c@figure
%    \fi 
%        \@arabic\c@chapter.\@arabic\c@figure}
%\renewcommand \thetable {\@arabic\c@chapter.\@arabic\c@section}

% new environment for Figure
\newenvironment{afigure}
    {\begin{figure}[ht]}
    {\end{figure}}

% new environment for Table
\newenvironment{atable}
    {\begin{table}[ht] \renewcommand{\arraystretch}{1.5} \centering \small}
    {\end{table}}
%-----------------------------------------------------------------------------
% End Set Table, Figure Environment
%=============================================================================
