%===========================================================
% Journal Article LaTeX Class Style
%
% Original author:
% Frits Wenneker (http://www.howtotex.com) with extensive modifications by
% Vel (vel@LaTeXTemplates.com)
%
% Modified by:
% Dir Sulaiman
% https://github.com/dirsulaiman/skripsi
% 
% License:
% BSD 3-Clause "New" or "Revised" License
% https://github.com/dirsulaiman/skripsi/blob/master/LICENSE
%-----------------------------------------------------------

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
\ProvidesClass{lib/journal}
\LoadClass[twoside,twocolumn, a4paper]{article}

\RequirePackage{blindtext} % Package to generate dummy text throughout this template 
\RequirePackage{indentfirst}

% \RequirePackage[sc]{mathpazo} % Use the Palatino font
\RequirePackage[T1]{fontenc} % Use 8-bit encoding that has 256 glyphs
\linespread{1.05} % Line spacing - Palatino needs more space between lines
\RequirePackage{microtype} % Slightly tweak font spacing for aesthetics

\RequirePackage[hmarginratio=1:1,top=32mm, left=25mm,columnsep=20pt]{geometry} % Document margins
\RequirePackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} % Custom captions under/above floats in tables or figures
\RequirePackage{booktabs} % Horizontal rules in tables

\RequirePackage{enumitem} % Customized lists
\setlist[itemize]{noitemsep} % Make itemize lists more compact

\RequirePackage{abstract} % Allows abstract customization
\renewcommand{\abstractnamefont}{\normalfont\bfseries} % Set the "Abstract" text to bold
\renewcommand{\abstracttextfont}{\normalfont\small\itshape} % Set the abstract itself to small italic text

\RequirePackage{titlesec} % Allows customization of titles
\renewcommand\thesection{\Roman{section}} % Roman numerals for the sections
\renewcommand\thesubsection{\roman{subsection}} % roman numerals for subsections
\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{} % Change the look of the section titles
\titleformat{\subsection}[block]{\large}{\thesubsection.}{1em}{} % Change the look of the section titles

\RequirePackage{fancyhdr} % Headers and footers
\pagestyle{fancy} % All pages have headers and footers
\fancyhead{} % Blank out the default header
\fancyfoot{} % Blank out the default footer
\fancyhead[C]{Running title $\bullet$ May 2016 $\bullet$ Vol. XXI, No. 1} % Custom header text
\fancyfoot[RO,LE]{\thepage} % Custom footer text

\RequirePackage{titling} % Customizing the title section

% to justify
\RequirePackage{ragged2e}

% Prevent hyphenating the words
\RequirePackage[none]{hyphenat}
\sloppy

% Times New Roman Font like
\RequirePackage{newtxtext, newtxmath}

% to use or import image
\RequirePackage{graphicx}
\RequirePackage[export]{adjustbox}

% to use color in table
\RequirePackage[table]{xcolor}

% use CSV to generate table
\RequirePackage{csvsimple}

% to hide Hyperlink color
\RequirePackage[pdftex,bookmarks=true,hidelinks]{hyperref}

% Counter for figure, table and equation
\RequirePackage{chngcntr}

% Setup the caption of figure, table and equation
% \RequirePackage[font=small, labelfont={it},textfont={it}, justification=centering]{caption}

% Setup label of enumerate item
\RequirePackage{enumitem} 
% \renewcommand{\theenumi}{\Alph{enumi}}

% use listings for code script
\RequirePackage{listings}
\RequirePackage{color}

% float [H]
\RequirePackage{float}


%===========================================================
% Package Daftar Pustaka, bentuk citasi
% Config
% - style, citestyle = {authoryear, numeric, apa, mla}
% - sorting {year,name,title} = ynt
%-----------------------------------------------------------
\usepackage[
    backend=biber,
    style=authoryear,
    citestyle=authoryear-comp,
    sorting=nty,
    giveninits=false,
    maxbibnames=3
    ]{biblatex}
\addbibresource{bibtex/daftar-pustaka.bib}

% redefine "et al" in bib to "dkk"
\DefineBibliographyStrings{english}{andothers={dkk\adddot}}
% force to use quote in title field of bibliographi
\DeclareFieldFormat
  [article,inbook,incollection,inproceedings,patent,thesis,masterthesis,misc,unpublished, book]
  {title}{\mkbibquote{#1\isdot}}

% new citation style
\let\oldcitate\cite
\newcommand*\thecite[1]{\hyperlink{cite.\therefsection @#1}{(\citeauthor*{#1} \citeyear{#1})}}
\renewcommand*\cite[1]{\hyperlink{cite.\therefsection @#1}{(\citeauthor*{#1} \citeyear{#1})}}
%-----------------------------------------------------------
% End Biblatex Config
%===========================================================