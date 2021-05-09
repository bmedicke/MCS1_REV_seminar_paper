%%
%% This is file `twbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% twbook.dtx  (with options: `class')
%% 
%% Dies ist ein automatisch generierter File
%% 
%% Diese Klasse dient der Definition einer einheitlichen Corporate Identity an der FH Technikum Wien.
%% Die genaue Beschreibung entnehmen Sie bitte der beigelegten Dokumentation twbook.pdf.
%% Diese wurde ebenso automatisch generiert.
%% 
%% Aktuelle SVN-Version der Datei: 149
%% 
%% Copyright (C) 2014-2015 Richard Otrebski
%% <otrebski@technikum-wien.at>
%% Copyright (C) 2013 Dr. Andreas Drauschke
%% <andreas.drauschke@technikum-wien.at>
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twbook}[2013/03/25 v0.03 Standard LaTeX Dokumenten-Klasse fuer Dokumente der FH Technikum Wien]


\newcommand{\sprache}{english}
\DeclareOption{german}{\renewcommand*{\sprache}{german}}
\DeclareOption{ngerman}{\renewcommand*{\sprache}{ngerman}}
\DeclareOption{english}{\renewcommand*{\sprache}{english}}

\newcommand{\institution}{Technikum}
\newcommand{\degreecourse}{TW}
\DeclareOption{ACADEMY}{\renewcommand*{\degreecourse}{Academy}%
\renewcommand*{\institution}{Academy}}
\DeclareOption{BBE}{\renewcommand*{\degreecourse}{BBE}}
\DeclareOption{BEE}{\renewcommand*{\degreecourse}{BEE}}
\DeclareOption{BEL}{\renewcommand*{\degreecourse}{BEL}}
\DeclareOption{BEW}{\renewcommand*{\degreecourse}{BEW}}
\DeclareOption{BIC}{\renewcommand*{\degreecourse}{BIC}}
\DeclareOption{BIF}{\renewcommand*{\degreecourse}{BIF}}
\DeclareOption{BIW}{\renewcommand*{\degreecourse}{BIW}}
\DeclareOption{BMB}{\renewcommand*{\degreecourse}{BMB}}
\DeclareOption{BMR}{\renewcommand*{\degreecourse}{BMR}}
\DeclareOption{BSA}{\renewcommand*{\degreecourse}{BSA}}
\DeclareOption{BST}{\renewcommand*{\degreecourse}{BST}}
\DeclareOption{BVU}{\renewcommand*{\degreecourse}{BVU}}
\DeclareOption{BWI}{\renewcommand*{\degreecourse}{BWI}}
\DeclareOption{MBE}{\renewcommand*{\degreecourse}{MBE}}
\DeclareOption{MEE}{\renewcommand*{\degreecourse}{MEE}}
\DeclareOption{MES}{\renewcommand*{\degreecourse}{MES}}
\DeclareOption{MGR}{\renewcommand*{\degreecourse}{MGR}}
\DeclareOption{MGS}{\renewcommand*{\degreecourse}{MGS}}
\DeclareOption{MIC}{\renewcommand*{\degreecourse}{MIC}}
\DeclareOption{MIE}{\renewcommand*{\degreecourse}{MIE}}
\DeclareOption{MIT}{\renewcommand*{\degreecourse}{MIT}}
\DeclareOption{MIW}{\renewcommand*{\degreecourse}{MIW}}
\DeclareOption{MMB}{\renewcommand*{\degreecourse}{MMB}}
\DeclareOption{MMR}{\renewcommand*{\degreecourse}{MMR}}
\DeclareOption{MSC}{\renewcommand*{\degreecourse}{MSC}}
\DeclareOption{MSE}{\renewcommand*{\degreecourse}{MSE}}
\DeclareOption{MST}{\renewcommand*{\degreecourse}{MST}}
\DeclareOption{MTE}{\renewcommand*{\degreecourse}{MTE}}
\DeclareOption{MTI}{\renewcommand*{\degreecourse}{MTI}}
\DeclareOption{MTM}{\renewcommand*{\degreecourse}{MTM}}
\DeclareOption{MTU}{\renewcommand*{\degreecourse}{MTU}}
\DeclareOption{MWI}{\renewcommand*{\degreecourse}{MWI}}

\newcommand{\doctype}{}
\newcommand{\doctypeprint}{}
\DeclareOption{Bachelor}{\renewcommand*{\doctype}{BACHELORARBEIT}}
\DeclareOption{Master}{\renewcommand*{\doctype}{MASTERARBEIT}}
\DeclareOption{Seminar}{\renewcommand*{\doctype}{SEMINARARBEIT}}
\DeclareOption{Projekt}{\renewcommand*{\doctype}{PROJEKTBERICHT}}
\DeclareOption{Praktikum}{\renewcommand*{\doctype}{PRAKTIKUMSBERICHT}}
\DeclareOption{Labor}{\renewcommand*{\doctype}{LABORPROTOKOLL}}

\newcommand{\cover}{FH/PICs/TW}

\ProcessOptions\relax

\LoadClass[a4paper,fontsize=11pt,twoside=false,%
headings=normal,toc=listof,listof=entryprefix,%
listof=nochaptergap,bibliography=totoc,%
numbers=noendperiod]{scrbook}
\RequirePackage{scrhack}
\RequirePackage{color,xcolor}
\RequirePackage{xifthen}
\RequirePackage{ifpdf}
\RequirePackage{ifdraft}
\RequirePackage{wallpaper}
\RequirePackage{palatino}
%\RequirePackage{scrpage2}
\usepackage{scrlayer-scrpage}
\RequirePackage{acronym}
\RequirePackage{amsmath,amssymb,amsfonts,amstext}
\RequirePackage[\sprache]{babel}
\Ifstr{\sprache}{ngerman}
{%
 %ngerman
 %change \sprache to german to translate everything else; babel's already loaded
 \renewcommand*{\sprache}{german}
}%
{%
 %german & english
 %Do nothing; everything's fine
}%
\RequirePackage{array}
\RequirePackage{tikz}
\usetikzlibrary{external}
\RequirePackage{caption}
\DeclareCaptionLabelSeparator{periodcolon}{.: }
\captionsetup{labelsep=colon}
\renewcommand*{\figureformat}{\figurename~\thefigure}
\renewcommand*{\tableformat}{\tablename~\thetable}
\RequirePackage{iftex}
\ifPDFTeX
 % PDFLaTeX
 \ifpdf
   \RequirePackage[pdftex]{hyperref}
   \RequirePackage{graphicx}
 \else
   \RequirePackage[dvips]{hyperref}
   \RequirePackage[dvips]{graphicx}
 \fi
\else
 \ifXeTeX
   % XeTeX
   \RequirePackage{hyperref}
   \RequirePackage{graphicx}
 \else
   \ifLuaTeX
     % LuaTeX
     \RequirePackage{hyperref}
     \RequirePackage{graphicx}
   \else
     % Some obscure Engine!
     \ClassError{twbook}{%
      The TeX-Engine you are using is not supported!\MessageBreak%
      Try a different Engine!\Messagebreak%
      Maybe PDFTeX, XeTeX or LuaTeX!
     }{%
      Something is wrong with the Tex-Engine you are using.\MessageBreak%
      We don't support that one!}
   \fi
\fi
\fi

\providecommand*{\@noopterr}[1]{}
\renewcommand*{\@noopterr}[1]{%
   \PackageWarning{babel}%
   {You haven't loaded the option #1\space yet.\MessageBreak%
   Rerun to set the right option.\MessageBreak%
   Sie haben die Option #1\space aktuell nicht geladen.\MessageBreak%
   Kompilieren Sie noch einmal um die korrekte Option zu setzen}}

\definecolor{TWgreen}{RGB}{140,177,16}
\definecolor{TWblue}{RGB}{0,101,156}
\definecolor{TWgray}{RGB}{113,120,125}

\hypersetup{colorlinks=true, linkcolor=black, linkbordercolor=white,%
citecolor=black, citebordercolor=white,%
filecolor=black, filebordercolor=white,%
urlcolor=TWblue, urlbordercolor=white}
\urlstyle{sf}

\addtocounter{tocdepth}{0}
\addtokomafont{pagenumber}{\sffamily}
\pagestyle{scrheadings}
\clearscrheadings
\ihead[]{}
\chead[]{}
\ohead[]{}
\ifoot[]{}
\cfoot[]{}
\ofoot[\footnotesize\pagemark]{\footnotesize\pagemark}
\renewcommand*{\chapterpagestyle}{plain}

\RequirePackage{remreset}
 \@removefromreset{figure}{chapter}
 \@removefromreset{table}{chapter}
 \@removefromreset{equation}{chapter}

\renewcommand*{\theequation}{\protect\small\arabic{equation}\protect\normalsize}
\renewcommand*{\thefigure}{\protect\small\arabic{figure}\protect\normalsize}
\renewcommand*{\thetable}{\protect\small\arabic{table}\protect\normalsize}
\setkomafont{caption}{\protect\small}
\setkomafont{captionlabel}{\protect\small}

\renewcommand*{\extrarowheight}{3pt}
\addtolength{\textheight}{5\baselineskip}
\addtolength{\textwidth}{38pt}
\setlength{\headheight}{1.3\baselineskip}
\renewcommand*{\baselinestretch}{1.21% \changes{v0.3}{2013/03/24}{Dokumentation implementiert}
}
\sloppy\tolerance=10000

\Ifstr{\doctype}{}
{
  \addtolength{\oddsidemargin}{-33pt}
  \addtolength{\evensidemargin}{-33pt}
  \setkomafont{chapter}{\color{TWblue}\mdseries\Huge}
  \setkomafont{section}{\color{TWblue}\mdseries\huge}
  \setkomafont{subsection}{\color{TWblue}\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}
{
  \addtolength{\oddsidemargin}{-19pt}
  \addtolength{\evensidemargin}{-19pt}
  \setkomafont{chapter}{\mdseries\huge}
  \setkomafont{section}{\mdseries\LARGE}
  \setkomafont{subsection}{\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}

\renewcommand*\chapter{\par\global\@topnum\z@\@afterindentfalse%
\secdef\@chapter\@schapter}

\Ifstr{\sprache}{english}{%
  \Ifstr{\doctype}{BACHELORARBEIT}{%
    \renewcommand*{\doctype}{BACHELORTHESIS}}{}
  \Ifstr{\doctype}{MASTERARBEIT}{%
    \renewcommand*{\doctype}{MASTERTHESIS}}{}
  \Ifstr{\doctype}{SEMINARARBEIT}{%
    \renewcommand*{\doctype}{SEMINAR PAPER}}{}
  \Ifstr{\doctype}{PROJEKTBERICHT}{%
    \renewcommand*{\doctype}{PROJECT REPORT}}{}
  \Ifstr{\doctype}{PRAKTIKUMSBERICHT}{%
    \renewcommand*{\doctype}{INTERNSHIP REPORT}}{}
  \Ifstr{\doctype}{LABORPROTOKOLL}{%
    \renewcommand*{\doctype}{LABORATORY REPORT}}}{}

  \renewcommand*{\doctypeprint}{\doctype}
  \Ifstr{\doctypeprint}{MASTERTHESIS}{%
    \renewcommand*{\doctypeprint}{MASTER THESIS}}{}
  \Ifstr{\doctypeprint}{BACHELORTHESIS}{%
    \renewcommand*{\doctypeprint}{BACHELOR PAPER}}{}

\Ifstr{\sprache}{german}{%
\Ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{FH/PICs/BBE}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
  \Ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{FH/PICs/BEE}%
\renewcommand*{\degreecourse}{Urbane Erneuerbare Energietechniken}}{}
\Ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{FH/PICs/BEL}%
\renewcommand*{\degreecourse}{Elektronik}}{}
\Ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{FH/PICs/BEW}%
\renewcommand*{\degreecourse}{Elektronik/\allowbreak{}Wirtschaft}}{}
\Ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{FH/PICs/BIC}%
\renewcommand*{\degreecourse}{Informations- und %
  Kommunikationssysteme}}{}
\Ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{FH/PICs/BIF}%
\renewcommand*{\degreecourse}{Informatik}}{}
\Ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{FH/PICs/BIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\Ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{FH/PICs/BMR_MMR}%
\renewcommand*{\degreecourse}{Mechatronik/\allowbreak{}Robotik}}{}
\Ifstr{\degreecourse}{BMB}{\renewcommand*{\cover}{FH/PICs/BMB}%
\renewcommand*{\degreecourse}{Maschinenbau}}{}
\Ifstr{\degreecourse}{BSA}{\renewcommand*{\cover}{FH/PICs/BSA}%
\renewcommand*{\degreecourse}{Smart Homes und Assistive Technologies}}{}
\Ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{FH/PICs/BST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\Ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{FH/PICs/BVU}%
\renewcommand*{\degreecourse}{Verkehr und Umwelt}}{}
\Ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{FH/PICs/BWI_MWI}
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}{}
\Ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{FH/PICs/MBE}%
\renewcommand*{\degreecourse}{Medical Engineering \& e-Health}}{}
\Ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{FH/PICs/MEE}%
\renewcommand*{\degreecourse}{Erneuerbare Urbane Energiesysteme}}{}
\Ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{FH/PICs/MES}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\Ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{FH/PICs/MGR}%
\renewcommand*{\degreecourse}{Gesundheits- und %
  Rehabilitationstechnik}}{}
\Ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{FH/PICs/MGS}%
\renewcommand*{\degreecourse}{Game Engineering und Simulation}}{}
\Ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{FH/PICs/MIC}%
\renewcommand*{\degreecourse}{IT-Security}}{}
\Ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{FH/PICs/MIE}%
\renewcommand*{\degreecourse}{Industrielle Elektronik}}{}
\Ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{FH/PICs/MIT}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\Ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{FH/PICs/MIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\Ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{FH/PICs/BMR_MMR}%
\renewcommand*{\degreecourse}{Mechatronik/\allowbreak{}Robotik}}{}
\Ifstr{\degreecourse}{MSC}{\renewcommand*{\cover}{FH/PICs/MIT}%
\renewcommand*{\degreecourse}{Integrative Stadtentwicklung -- Smart City}}{}
\Ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{FH/PICs/MSE}%
\renewcommand*{\degreecourse}{Softwareentwicklung}}{}
\Ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{FH/PICs/MST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\Ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{FH/PICs/MTE_en}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\Ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{FH/PICs/MTI}%
\renewcommand*{\degreecourse}{Telekommunikation und %
  Internettechnologien}}{}
\Ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{FH/PICs/MTM}%
\renewcommand*{\degreecourse}{Innovations- und %
  Technologiemanagement}}{}
\Ifstr{\degreecourse}{MTU}{\renewcommand*{\cover}{FH/PICs/MTU}%
\renewcommand*{\degreecourse}{Technisches Umweltmanagement und %
  {\"O}kotoxikologie}}{}
\Ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{FH/PICs/BWI_MWI}%
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}
}{}

\Ifstr{\sprache}{english}{%
\Ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{FH/PICs/BBE}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
\Ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{FH/PICs/BEE}%
\renewcommand*{\degreecourse}{Urban Renewable Energy Technologies}}{}
\Ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{FH/PICs/BEL}%
\renewcommand*{\degreecourse}{Electronic Engineering}}{}
\Ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{FH/PICs/BEW_en}%
\renewcommand*{\degreecourse}{Electronics and Business}}{}
\Ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{FH/PICs/BIC}%
\renewcommand*{\degreecourse}{Information and Communication Systems %
and Services}}{}
\Ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{FH/PICs/BIF}%
\renewcommand*{\degreecourse}{Computer Science}}{}
\Ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{FH/PICs/BIW}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\Ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{FH/PICs/BMR_MMR}%
\renewcommand*{\degreecourse}{Mechatronics/\allowbreak{}Robotics}}{}
\Ifstr{\degreecourse}{BMB}{\renewcommand*{\cover}{FH/PICs/BMB}%
\renewcommand*{\degreecourse}{Maschinenbau}}{}
\Ifstr{\degreecourse}{BSA}{\renewcommand*{\cover}{FH/PICs/BSA}%
\renewcommand*{\degreecourse}{Smart Homes und Assistive Technologies}}{}
\Ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{FH/PICs/BST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\Ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{FH/PICs/BVU}%
\renewcommand*{\degreecourse}{Transport and Environment}}{}
\Ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{FH/PICs/BWI_MWI_en}%
\renewcommand*{\degreecourse}{Business Informatics}}{}
\Ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{FH/PICs/MBE}%
\renewcommand*{\degreecourse}{Medical Engineering \& e-Health}}{}
\Ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{FH/PICs/MEE}%
\renewcommand*{\degreecourse}{Renewable Urban Energy Systems}}{}
\Ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{FH/PICs/MES}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\Ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{FH/PICs/MGR}%
\renewcommand*{\degreecourse}{Healthcare and Rehabilitation %
  Technology}}{}
\Ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{FH/PICs/MGS}%
\renewcommand*{\degreecourse}{Game Engineering and Simulation %
  Technology}}{}
\Ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{FH/PICs/MIC_en}%
\renewcommand*{\degreecourse}{IT-Security}}{}
\Ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{FH/PICs/MIE}%
\renewcommand*{\degreecourse}{Industrial Electronics}}{}
\Ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{FH/PICs/MIT}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\Ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{FH/PICs/MIW}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\Ifstr{\degreecourse}{MMB}{\renewcommand*{\cover}{FH/PICs/BMB}%
\renewcommand*{\degreecourse}{Maschinenbau}}{}
\Ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{FH/PICs/BMR_MMR}%
\renewcommand*{\degreecourse}{Mechatronics/\allowbreak{}Robotics}}{}
\Ifstr{\degreecourse}{MSC}{\renewcommand*{\cover}{FH/PICs/MIT}%
\renewcommand*{\degreecourse}{Smart City}}{}
\Ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{FH/PICs/MSE}%
\renewcommand*{\degreecourse}{Software Engineering}}{}
\Ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{FH/PICs/MST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\Ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{FH/PICs/MTE}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\Ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{FH/PICs/MTI_en}%
\renewcommand*{\degreecourse}{Telecommunications- and Internet %
  Technologies}}{}
\Ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{FH/PICs/MTM}%
\renewcommand*{\degreecourse}{Innovation and Technology Management}}{}
\Ifstr{\degreecourse}{MTU}{\renewcommand*{\cover}{FH/PICs/MTU}%
\renewcommand*{\degreecourse}{Environmental Management and %
  Ecotoxicolgy}}{}
\Ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{FH/PICs/BWI_MWI_en}%
\renewcommand*{\degreecourse}{Information Systems Management}}{}
}{}
\Ifstr{\doctype}{}{}{\Ifstr{\institution}{Technikum}%
  {\renewcommand*{\cover}{FH/PICs/Arbeiten.jpg}}%
  {\renewcommand*{\cover}{FH/PICs/Arbeiten_Academy.jpg}}}
\newcommand*{\@supervisor}{}
\newcommand*{\@supervisordesc}{}
\newcommand{\supervisor}[2][]{\gdef\@supervisordesc{#1}\gdef\@supervisor{#2}}
\newcommand*{\@secondsupervisor}{}
\newcommand*{\@secondsupervisordesc}{}
\newcommand{\secondsupervisor}[2][]{\gdef\@secondsupervisordesc{#1}\gdef\@secondsupervisor{#2}}
\newcommand*{\@studentnumber}{}
\newcommand{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@place}{}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand*{\@kurzfassung}{}
\newcommand{\kurzfassung}[1]{\gdef\@kurzfassung{#1}}
\newcommand*{\@schlagworte}{}
\newcommand{\schlagworte}[1]{\gdef\@schlagworte{#1}}
\newcommand*{\@outline}{}
\newcommand{\outline}[1]{\gdef\@outline{#1}}
\newcommand*{\@keywords}{}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\@acknowledgements}{}
\newcommand{\acknowledgements}[1]{\gdef\@acknowledgements{#1}}

\providecommand{\sc}{}
\renewcommand{\sc}{\normalfont\scshape}
\renewcommand*{\familydefault}{\sfdefault}\selectfont
\normalfont\selectfont

\renewcommand{\and}{\newline}
\renewcommand*\maketitle[1][1]{%
\begin{titlepage}
\pagestyle{empty}
\tikzifexternalizing{}{%
  \ThisTileWallPaper{\paperwidth}{\paperheight}{\cover}%
}

\Ifstr{\doctype}{}
{
\color{TWblue}
\null\vspace{125pt}
    \setcounter{page}{-9}

\hspace*{-26pt}\begin{minipage}{0.66\linewidth}
  \huge\sffamily \scalebox{1.75}{\begin{minipage}{\linewidth}\@title\end{minipage}}
\end{minipage}\vspace{23pt}

\hspace*{-24.75pt}\begin{minipage}{0.66\linewidth}
  \huge\sffamily \scalebox{1.25}{\begin{minipage}{\linewidth}\@extratitle\end{minipage}}
\end{minipage}\vspace{47pt}
\setcounter{page}{0}}
{
  \ifdraft{\color{red}}{\color{black}}
  \null\vspace{8pt}
  \setcounter{page}{-9}

\ifdraft{\hspace*{-30pt}\scalebox{1.85}{\sffamily\textbf\doctypeprint -- DRAFT}}{\hspace*{-30pt}\scalebox{1.85}{\sffamily\textbf\doctypeprint}}
\vspace{17pt}

\hspace*{-34pt}\scalebox{1.5}{%
  \Ifstr{\degreecourse}{Technisches Umweltmanagement und
    {\"O}kotoxikologie}
  {
    \begin{minipage}{0.64\linewidth}
      \Ifstr{\sprache}{german}{\Ifstr{\doctype}{MASTERARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Master of Science in Engineering\grqq{}\\im Studiengang }{\Ifstr{\doctype}{BACHELORARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Bachelor of Science in Engineering\grqq{}\\im Studiengang }{Im Studiengang}}}{\Ifstr{\doctype}{MASTERTHESIS}{Thesis submitted in partial fulfillment of the requirements for the degree of Master of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\Ifstr{\doctype}{BACHELORTHESIS}{Term paper submitted in partial fulfillment of the requirements for the degree of Bachelor of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{In}}}
      \degreecourse
    \end{minipage}\vspace{5pt}}
  {
    \begin{minipage}{0.64\linewidth}
      \Ifstr{\sprache}{german}{\Ifstr{\doctype}{MASTERARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Master of Science in Engineering\grqq{}\\im Studiengang }{\Ifstr{\doctype}{BACHELORARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Bachelor of Science in Engineering\grqq{}\\im Studiengang }{Im Studiengang}}}{\Ifstr{\doctype}{MASTERTHESIS}{Thesis submitted in partial fulfillment of the requirements for the degree of Master of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\Ifstr{\doctype}{BACHELORTHESIS}{Term paper submitted in partial fulfillment of the requirements for the degree of Bachelor of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{In}}}
      \degreecourse\vspace{5pt}
    \end{minipage}}}

  \vspace{54.7pt}
  \hspace*{-30pt}\begin{minipage}{0.9625\linewidth}
   \huge\bfseries\sffamily \@title
\end{minipage}\vspace{47pt}

\Large
\hspace*{-34pt}%
\Ifstr{\sprache}{german}{Ausgef{\"u}hrt von:~}{By:~}%
\begin{minipage}[t]{0.5\linewidth}\@author\end{minipage}%
\vspace{0.33\baselineskip}%

\hspace*{-34pt}%
\Ifstr{\sprache}{german}{Personenkennzeichen:~}{Student Number:~}%
\begin{minipage}[t]{0.25\linewidth}\@studentnumber\end{minipage}%
\vspace{\baselineskip}%

\hspace*{-34pt}%
\ifx\@secondsupervisor\@empty%
\ifx\@supervisordesc\@empty%
\Ifstr{\sprache}{german}{BegutachterIn:~}{Supervisor:~}%
\else%
\@supervisordesc:~%
\fi%
\begin{minipage}[t]{0.6\linewidth}%
\bgroup\@supervisor\egroup%
\end{minipage}\vspace{0.8\baselineskip}%
\else%
\ifx\@supervisordesc\@empty%
\Ifstr{\sprache}{german}{\gdef\@supervisordesc{BegutachterInnen}}{\gdef\@supervisordesc{Supervisors}}%
\fi%
\ifx\@secondsupervisordesc\@empty%
\gdef\@secondsupervisordesc{}%
\fi%
\newlength\TWLength%
\newlength\TWLengthA%
\newlength\TWLengthB%
\settowidth\TWLengthA{\@supervisordesc:}%
\settowidth\TWLengthB{\@secondsupervisordesc:}%
\ifdim \TWLengthA>\TWLengthB%
\setlength\TWLength\TWLengthA%
\else%
\setlength\TWLength\TWLengthB%
\fi%
\begin{minipage}[t]{\TWLength}%
\@supervisordesc:\\%
\ifx\@secondsupervisordesc\@empty%
\else%
\@secondsupervisordesc:%
\fi%
\end{minipage}~%
\begin{minipage}[t]{0.6\linewidth}%
\bgroup\@supervisor\egroup\\%
\bgroup\@secondsupervisor\egroup%
\end{minipage}\vspace{0.8\baselineskip}%
\fi%

\hspace*{-34pt}%
\@place%
\Ifstr{\sprache}{german}{, den~}{,~}\today%

\clearpage
\color{black}\normalsize\mdseries

\Ifstr{\doctype}{PROJEKTBERICHT}{
\ifx\@kurzfassung\@empty
\else\clearpage
\chapter*{Kurzfassung}
\@kurzfassung
\ifx\@schlagworte\@empty
\else\vfill\paragraph*{Schlagworte:}\@schlagworte
\fi
\fi}{}
\Ifstr{\doctype}{PROJECT REPORT}{
\ifx\@outline\@empty
\else\clearpage
\chapter*{Abstract}
\@outline
\ifx\@keywords\@empty
\else\vfill\paragraph*{Keywords:}\@keywords
\fi
\fi}{}

\Ifstr{\doctype}{SEMINARARBEIT}{
\ifx\@kurzfassung\@empty
\else\clearpage
\chapter*{Kurzfassung}
\@kurzfassung
\ifx\@schlagworte\@empty
\else\vfill\paragraph*{Schlagworte:}\@schlagworte
\fi
\fi
\ifx\@outline\@empty
\else\clearpage
\chapter*{Abstract}
\@outline
\ifx\@keywords\@empty
\else\vfill\paragraph*{Keywords:}\@keywords
\fi
\fi}{}
\Ifstr{\doctype}{SEMINAR PAPER}{
\ifx\@outline\@empty
\else\clearpage
\chapter*{Abstract}
\@outline
\ifx\@keywords\@empty
\else\vfill\paragraph*{Keywords:}\@keywords
\fi
\fi
\ifx\@kurzfassung\@empty
\else\clearpage
\chapter*{Kurzfassung}
\@kurzfassung
\ifx\@schlagworte\@empty
\else\vfill\paragraph*{Schlagworte:}\@schlagworte
\fi
\fi}{}

\Ifstr{\doctype}{BACHELORARBEIT}{
  \chapter*{Eidesstattliche Erkl{\"a}rung}
    \glqq Ich, als Autor / als Autorin und Urheber / Urheberin der
    vorliegenden Arbeit, best{\"a}tige mit meiner Unterschrift die
    Kenntnisnahme der einschl{\"a}gigen urheber- und hochschulrechtlichen
    Bestimmungen (vgl. Urheberrechtsgesetz idgF sowie Satzungsteil
    Studienrechtliche Bestimmungen / Pr{\"u}fungsordnung der FH Technikum
    Wien idgF).\\[\baselineskip]
    Ich erkl{\"a}re hiermit, dass ich die vorliegende Arbeit selbst{\"a}ndig
    angefertigt und Gedankengut jeglicher Art aus fremden sowie
    selbst verfassten Quellen zur G{\"a}nze zitiert habe. Ich bin mir
    bei Nachweis fehlender Eigen- und Selbstst{\"a}ndigkeit sowie dem
    Nachweis eines Vorsatzes zur Erschleichung einer positiven
    Beurteilung dieser Arbeit der Konsequenzen bewusst, die von der
    Studiengangsleitung ausgesprochen werden k{\"o}nnen (vgl. Satzungsteil
    Studienrechtliche Bestimmungen / Pr{\"u}fungsordnung der FH Technikum
    Wien idgF).\\[\baselineskip]
    Weiters best{\"a}tige ich, dass ich die vorliegende Arbeit bis dato
    nicht ver{\"o}ffentlicht und weder in gleicher noch in {\"a}hnlicher
    Form einer anderen Pr{\"u}fungsbeh{\"o}rde vorgelegt habe. Ich versichere,
    dass die abgegebene Version jener im Uploadtool
    entspricht.\grqq\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Unterschrift
\ifx\@kurzfassung\@empty
\ifx\@schlagworte\@empty
\else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
\fi
\else\clearpage
\chapter*{Kurzfassung}
\@kurzfassung
\ifx\@schlagworte\@empty
\else\vfill\paragraph*{Schlagworte:}\@schlagworte
\fi
\fi

\ifx\@outline\@empty
\ifx\@keywords\@empty
\else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
\fi
\else\clearpage
\chapter*{Abstract}
\@outline
\ifx\@keywords\@empty
\else\vfill\paragraph*{Keywords:}\@keywords
\fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
\chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\Ifstr{\doctype}{MASTERARBEIT}{
  \chapter*{Eidesstattliche Erkl{\"a}rung}
    \glqq Ich, als Autor / als Autorin und Urheber / Urheberin der
    vorliegenden Arbeit, best{\"a}tige mit meiner Unterschrift die
    Kenntnisnahme der einschl{\"a}gigen urheber- und hochschulrechtlichen
    Bestimmungen (vgl. Urheberrechtsgesetz idgF sowie Satzungsteil
    Studienrechtliche Bestimmungen / Pr{\"u}fungsordnung der FH Technikum
    Wien idgF).\\[\baselineskip]
    Ich erkl{\"a}re hiermit, dass ich die vorliegende Arbeit selbst{\"a}ndig
    angefertigt und Gedankengut jeglicher Art aus fremden sowie
    selbst verfassten Quellen zur G{\"a}nze zitiert habe. Ich bin mir
    bei Nachweis fehlender Eigen- und Selbstst{\"a}ndigkeit sowie dem
    Nachweis eines Vorsatzes zur Erschleichung einer positiven
    Beurteilung dieser Arbeit der Konsequenzen bewusst, die von der
    Studiengangsleitung ausgesprochen werden k{\"o}nnen (vgl. Satzungsteil
    Studienrechtliche Bestimmungen / Pr{\"u}fungsordnung der FH Technikum
    Wien idgF).\\[\baselineskip]
    Weiters best{\"a}tige ich, dass ich die vorliegende Arbeit bis dato
    nicht ver{\"o}ffentlicht und weder in gleicher noch in {\"a}hnlicher
    Form einer anderen Pr{\"u}fungsbeh{\"o}rde vorgelegt habe. Ich versichere,
    dass die abgegebene Version jener im Uploadtool
    entspricht.\grqq\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Unterschrift
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\Ifstr{\doctype}{BACHELORTHESIS}{
  \chapter*{Declaration}
    ``As author and creator of this work to hand, I confirm with my
    signature knowledge of the relevant copyright regulations
    governed by higher education acts (see  Urheberrechtsgesetz
    /Austrian copyright law as amended as well as the Statute on
    Studies Act Provisions / Examination Regulations of the UAS
    Technikum Wien as amended).\\[\baselineskip]
    I hereby declare that I completed the present work independently
    and that any ideas, whether written by others or by myself, have
    been fully sourced and referenced. I am aware of any consequences
    I may face on the part of the degree program director if there
    should be evidence of missing autonomy and independence or
    evidence of any intent to fraudulently achieve a pass mark for
    this work (see Statute on Studies Act Provisions / Examination
    Regulations of the UAS Technikum Wien as amended).\\[\baselineskip]
    I further declare that up to this date I have not published the work to
    hand nor have I presented it to another examination board in the same or
    similar form. I affirm that the version submitted matches the version in
    the upload tool.``\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Signature
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\Ifstr{\doctype}{MASTERTHESIS}{
  \chapter*{Declaration}
    ``As author and creator of this work to hand, I confirm with my
    signature knowledge of the relevant copyright regulations
    governed by higher education acts (see  Urheberrechtsgesetz
    /Austrian copyright law as amended as well as the Statute on
    Studies Act Provisions / Examination Regulations of the UAS
    Technikum Wien as amended).\\[\baselineskip]
    I hereby declare that I completed the present work independently
    and that any ideas, whether written by others or by myself, have
    been fully sourced and referenced. I am aware of any consequences
    I may face on the part of the degree program director if there
    should be evidence of missing autonomy and independence or
    evidence of any intent to fraudulently achieve a pass mark for
    this work (see Statute on Studies Act Provisions / Examination
    Regulations of the UAS Technikum Wien as amended).\\[\baselineskip]
    I further declare that up to this date I have not published the work to
    hand nor have I presented it to another examination board in the same or
    similar form. I affirm that the version submitted matches the version in
    the upload tool.``\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Signature
  \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}}}}}
  \end{titlepage}
 }

\Ifstr{\doctype}{}
{
  \renewcommand*{\labelitemi}{
    \huge\raisebox{0.2ex}{$\centerdot$}\hspace{-5pt}}
  \renewcommand*{\labelitemii}{
    \huge\raisebox{-0.15ex}{-}\hspace{-5pt}}
  \renewcommand*{\labelitemiii}{
    \LARGE\raisebox{0.3ex}{$\centerdot$}\hspace{-5pt}}
}{}
%% Verfasser der Änderung: Otrebski
\endinput 
\endinput
%%
%% End of file `twbook.cls'.
