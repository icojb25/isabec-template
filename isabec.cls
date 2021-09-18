%% This is file isabec.cls - version 0.1 
%% J Bergh, dated 18 Sep. 2021
%% Modified from Aptara Inc.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{isabec}[2015/09/24 v1.0 Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@issuemup
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\DeclareOption{issuemup}{\global\@issuemuptrue}
\AtEndDocument{\label{lastpage}}
\ExecuteOptions{letterpaper,twoside,final}%
\ProcessOptions

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\if@twocolumn
  \setlength\parindent{10\p@}
\else
  \setlength\parindent{10\p@}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{12\p@}
\setlength\headsep   {25\p@}
\setlength\topskip   {10\p@}
\setlength\footskip{30\p@}
\if@compatibility \setlength\maxdepth{4\p@} \else
\setlength\maxdepth{.5\topskip} \fi
\if@compatibility
  \if@twocolumn
    \setlength\textwidth{31pc}
  \else
    \setlength\textwidth{31pc}%
  \fi
\else
  \setlength\textwidth{31pc}%
\fi
\if@compatibility\else
  \@settopoint\textwidth
\fi
\if@compatibility
  \setlength\textheight{46\baselineskip}%
\else
   \setlength\textheight{46\baselineskip}%
\fi
\addtolength\textheight{\topskip}
\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
  \setlength\marginparsep{10\p@}%
\fi
\setlength\marginparpush{5\p@}
%%%
\if@compatibility
  \if@twoside
     \setlength\oddsidemargin   {44\p@}
     \setlength\evensidemargin  {82\p@}
     \setlength\marginparwidth {107\p@}
  \else
     \setlength\oddsidemargin   {63\p@}
     \setlength\evensidemargin  {63\p@}
     \setlength\marginparwidth  {90\p@}
  \fi
  \if@twocolumn
     \setlength\oddsidemargin  {30\p@}
     \setlength\evensidemargin {30\p@}
     \setlength\marginparwidth {48\p@}
  \fi
\else
  \if@twoside
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.5\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.6\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
  \else
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.5\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.5\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
    \addtolength\marginparwidth {-.4in}
  \fi
  \ifdim \marginparwidth >2in
     \setlength\marginparwidth{2in}
  \fi
  \@settopoint\oddsidemargin
  \@settopoint\marginparwidth
  \setlength\evensidemargin  {\paperwidth}
  \addtolength\evensidemargin{-2in}
  \addtolength\evensidemargin{-\textwidth}
  \addtolength\evensidemargin{-\oddsidemargin}
  \@settopoint\evensidemargin
\fi
\if@compatibility
  \setlength\topmargin{27pt}
\else
  \setlength\topmargin{\paperheight}
  \addtolength\topmargin{-2in}
  \addtolength\topmargin{-\headheight}
  \addtolength\topmargin{-\headsep}
  \addtolength\topmargin{-\textheight}
  \addtolength\topmargin{-\footskip}     % this might be wrong!
  \addtolength\topmargin{-.5\topmargin}%
  \@settopoint\topmargin
\fi
\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{12\p@ \@plus 4\p@ \@minus 2\p@}%
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep0pt%
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep3\p@}%
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep0pt%
              \itemsep3\p@}%
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep3\p@}%
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

%%%%%%%%%%%%%%%%%% Font Definition
\def\titlefont{\sffamily\fontsize{24}{27}\selectfont\bfseries\raggedright}
\def\subtitlefont{\sffamily\fontsize{14}{16}\selectfont\raggedright}
\def\authorfont{\reset@font\sffamily\fontsize{9.5}{12}\selectfont\bfseries\raggedright}
\def\affilfont{\reset@font\sffamily\fontsize{9.5}{11}\selectfont\raggedright}
\def\rhfont{\fontsize{9.5}{11}\selectfont}
\def\rrhfont{\fontsize{9.5}{11}\selectfont}
\def\rffont{\fontsize{9.5}{11}\selectfont}
\def\sluglinefont{\fontsize{9.5}{11}\selectfont\scshape}
\def\foliofont{\fontsize{9.5}{11}\selectfont\scshape}
\def\historyfont{\fontsize{7.5}{8}\selectfont}
\def\copyrightfont{\reset@font\fontsize{7}{8}\selectfont}
\def\absheadfont{\sffamily\fontsize{14}{16}\selectfont\raggedright}
\def\abstractfont{\fontsize{10}{12}\selectfont}
\def\sectionfont{\sffamily\fontsize{14}{16}\selectfont\bfseries\raggedright}
\def\subsectionfont{\sffamily\fontsize{10.75}{12.5}\selectfont\bfseries\raggedright}
\def\subsubsectionfont{\sffamily\fontsize{10.25}{12.5}\selectfont\bfseries\itshape\raggedright}
\def\paragraphfont{\bfseries}
%
\def\figcaptionfont{\sffamily\fontsize{8}{10}\selectfont\mathversion{normal}}
\def\figcaptionnumfont{\sffamily\fontsize{8}{10}\selectfont\mathversion{bold}}
%
\def\tablecaptionfont{\sffamily\fontsize{10}{12}\bfseries\selectfont\mathversion{bold}}% 
\def\tablecaptionnumfont{\sffamily\fontsize{10}{12}\bfseries\selectfont\mathversion{bold}}
\def\tableheadfont{\fontsize{10}{12}\selectfont\bfseries\mathversion{bold}}
\def\tablefont{\fontsize{10}{12}\selectfont}
\def\tabnotefont{\fontsize{8}{10}\selectfont}%
%
\def\deflistfont{\fontsize{10}{12}\selectfont}% 
\def\bibliofont{\fontsize{9}{11}\selectfont\mathversion{normal}}

%%%%%%%%%%%%%%%%%% 
\def\jmonth#1{\gdef\@jmonth{#1}}\jmonth{}
\def\jyear#1{\gdef\@jyear{#1}}\jyear{}
\def\jnumber#1{\gdef\@jnumber{#1}}\jnumber{}
\def\jtitle#1{\gdef\@jtitle{#1}}\jtitle{ISABE-\@jyear-\@jnumber}

\def\oddfolio{{\foliofont\thepage}}
\def\evenfolio{{\foliofont\thepage}}
\def\endpage#1{\gdef\@endpage{#1}}\endpage{0}
\def\doi#1{\gdef\@doi{#1}}\doi{}
\def\volume#1{\gdef\@volume{#1}}\volume{00}
\def\issue#1{\gdef\@issue{#1}}\issue{00}
\def\title#1{\gdef\@title{#1}}\title{}
\def\subtitle#1{\gdef\@subtitle{#1}}\subtitle{}
\def\email#1{\par#1}
%
\def\author#1{\global\advance\authorcount\@ne%
    \expandafter\gdef\csname author\romannumeral\the\authorcount\endcsname{#1}%
    \affil{}}

\def\affil#1{\expandafter\gdef\csname affil\romannumeral\the\authorcount\endcsname{#1}}

\newcount\authorcount
\newcount\tempcount
\def\@authors{%
  \ifnum\authorcount>\z@%
    \loop%
       \ifnum\authorcount>\z@%
         \advance\tempcount\@ne%
                \noindent\csname author\romannumeral\the\tempcount\endcsname\vskip4pt\par%
                {\affilfont\csname affil\romannumeral\the\tempcount\endcsname}\vskip10pt\par%
         \advance\authorcount\m@ne%
    \repeat%
  \fi%
\global\authorcount\z@%
\global\tempcount\z@%
}


\def\copyrightstatement#1{\gdef\@copyrightstatement{#1}}
\copyrightstatement{The International Society of Air Breathing Engines}
\def\doi#1{\gdef\@doi{#1}}\doi{}

\def\slugline{\vbox{\parindent0pt\sluglinefont\hsize\textwidth%
      \rule{\textwidth}{1pt}\vskip1.5pt\par%
      \hbox to \textwidth{{\@jtitle}\quad\quad \if@issuemup\@jmonth\ \@jyear\enspace Volume\ \@volume\enspace No\ \@issue\fi\hfill \thepage}\vskip-3pt\par%
      \rule{\textwidth}{1pt}\vskip3pt\par%
      {\copyrightfont \copyright\ \@copyrightstatement\space\par
      \ifx\@doi\@empty\else doi:\space\@doi\par\fi}% 
}}

\newbox\temphistbox

\def\historydate#1{\gdef\@historydate{#1}}\historydate{}
\def\history{\vbox{\parindent0pt\vspace*{11pt}\historyfont\hsize\textwidth%
                        \setbox\temphistbox\vbox{\centering\historyfont 
                        ISABE-\@jyear\par}
                        \rule{\textwidth}{1pt}\ifdim\ht\temphistbox>8pt\vskip-2pt\else\vskip1pt\fi\par%
                        \vbox to 0pt{\centering\historyfont ISABE-\@jyear\par}%
                        \ifdim\ht\temphistbox>8pt\vskip11.65pt\else\vskip8.65pt\fi\par%
                        \rule{\textwidth}{1pt}\par}}


\def\ps@plain{\let\@mkboth\@gobbletwo%
       \def\@oddfoot{\history}%  
       \let\@evenfoot\@oddfoot%{}%
       \def\@evenhead{\slugline}%
       \def\@oddhead{\slugline}}%

\def\oddheadline{\vbox{\parindent0pt\sluglinefont\hsize\textwidth%
      \rule{\textwidth}{1pt}\vskip1.5pt\par%
      \hbox to \textwidth{\leftmark\hfill {\rightmark}\hfill\oddfolio}%
      \vskip-3pt\par%
      \rule{\textwidth}{1pt}\par}}

\def\evenheadline{\vbox{\parindent0pt\sluglinefont\hsize\textwidth%
      \rule{\textwidth}{1pt}\vskip1.5pt\par%
      \hbox to \textwidth{\evenfolio\hfill\if@issuemup{\@jmonth\ \@jyear}\fi}\vskip-11pt\par
      \hbox{\centerline{ISABE \@jyear}}\vskip-3pt\par%
      \rule{\textwidth}{1pt}\par}}


%%%%%%%%%%%%%%%%%%

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \let\@evenfoot\@oddfoot
    \def\@evenhead{\evenheadline}%
    \def\@oddhead{\oddheadline}%
  }
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    }

\newcommand\maketitle{\par
  \begingroup
    \thispagestyle{plain}
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hbox{%
                \@textsuperscript{\normalfont\@thefnmark\space}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \@thanks
  \endgroup
%  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}


\def\@maketitle{%
  \newpage
  \null
  \vskip12pt%
  \let \footnote \thanks
    \ifx\@title\@empty\else{\titlefont \@title \par}\vskip13pt\fi%
    \ifx\@subtitle\@empty\relax\else\vskip-6.5pt{\subtitlefont\@subtitle\par}\vskip13pt\fi%
    \ifx\@authors\@empty\else{\authorfont \@authors \par}\fi%
    \vskip 0pt%
  \par
}


\def\@seccntformat#1{\csname the#1\endcsname}

\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\ifnum#2=\@ne\unskip.0\fi\enspace\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}

\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname\nobreakspace\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-18\p@ \@plus -2\p@ \@minus -2\p@}%
                                   {5.5\p@}%
                                   {\sectionfont}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-18\p@ \@plus -2\p@ \@minus -2\p@}%
                                     {4.75\p@}%
                                     {\subsectionfont}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-18\p@ \@plus -2\p@ \@minus -2\p@}%
                                     {4.9\p@}%
                                     {\subsubsectionfont}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                     {-18\p@ \@plus2\p@ \@minus2\p@}%
                                    {4\p@}%
                                    {\paragraphfont}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {1.7em}
\else
  \setlength\leftmargini  {1.7em}%
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {1em}%.5em
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newbox\absbox
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{\vfill\par\abstractfont%
      \if@twocolumn
        \section*{\abstractname}%
      \else
          \section*{\abstractname}%
      \fi%

}
      {\par}
\fi
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}


\newenvironment{extract}%
               {\list{}{\listparindent0em%1.5
                        \leftmargin1em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}



\newenvironment{arabiclist}{%
  \labelsep10pt
  \itemsep\z@
  \leftmargini2.1em%
  \def\theenumi{\arabic{enumi}}\def\theenumii{\arabic{enumii}}%
  \def\theenumiii{\arabic{enumiii}}\def\theenumiv{\arabic{enumiv}}%
  \renewcommand\labelenumi{(\arabic{enumi})}
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{romanlist}{%
  \labelsep10pt
  \leftmargini2.5em%
  \def\theenumi{\roman{enumi}}\def\theenumii{\roman{enumii}}%
  \def\theenumiii{\roman{enumiii}}\def\theenumiv{\roman{enumiv}}%
  \renewcommand\labelenumi{(\roman{enumi})}
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{alphalist}{%
  \labelsep10pt
  \leftmargini2.1em%
  \def\theenumi{\alph{enumi}}\def\theenumii{\alph{enumii}}%
  \def\theenumiii{\alph{enumiii}}\def\theenumiv{\alph{enumiv}}%
  \renewcommand\labelenumi{{\reset@font(\alph{enumi})}}
  \renewcommand\labelenumii{\alph{enumii}.}
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{Romanlist}{%
  \labelsep10pt
  \leftmargini2.1em%
  \def\theenumi{\Roman{enumi}}\def\theenumii{\Roman{enumii}}%
  \def\theenumiii{\Roman{enumiii}}\def\theenumiv{\Roman{enumiv}}%
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{Alphalist}{%
  \labelsep10pt
  \leftmargini2.1em%
  \def\theenumi{\Alph{enumi}}\def\theenumii{\Alph{enumii}}%
  \def\theenumiii{\Alph{enumiii}}\def\theenumiv{\Alph{enumiv}}%
  \renewcommand\labelenumi{(\Alph{enumi})}
  \begin{enumerate}%
}{%
  \end{enumerate}}

\newenvironment{unnumlist}{%
   \list{}{%
   \itemsep0pt
   \parsep0pt
   \parskip0pt
   \leftmargin32\p@
   \itemindent-16\p@}
}{\endlist}%
%%

\if@compatibility
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}
}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{0\p@}
\setlength\belowcaptionskip{6\p@}


\def\FigName{figure}
\long\def\@makecaption#1#2{%
    \ifx\FigName\@captype
      \vskip\abovecaptionskip
      \@makefigurecaption{#1}{#2}%
    \else
      \@maketablecaption{#1}{#2}%
      \vskip\belowcaptionskip
    \fi}


\def\@makefigurecaption#1#2{%
    \noindent\figcaptionfont\centering%
    {\figcaptionnumfont#1.\space\figcaptionfont#2}\par}%

\def\x{@{\extracolsep{\fill}}}

\def\@maketablecaption#1#2{%
    \noindent\tablecaptionfont\centering%
    {\tablecaptionnumfont#1}\par{\tablecaptionfont#2}\par
}%

\newbox\tempbox

\def\tabular{\tablefont\let\@halignto\@empty\@tabular}

\newcommand\tch[4]{\multicolumn{#1}{#2}%
   {\tableheadfont\begin{tabular}[#3]{@{}#2@{}}%
    \ignorespaces#4\unskip
    \end{tabular}}}

\newenvironment{tabnote}{\par\vskip2pt\tabnotefont}{\par}


\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\def\@biblabel#1{#1.}%
\newenvironment{thebibliography}[1]
     {\section*{\refname}%
      \bibliofont%
      %\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv\hfill}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \itemsep\z@
            \parsep\z@
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist
}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@
                \columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}

 \renewcommand\thefootnote{\@fnsymbol\c@footnote}%

\renewcommand\footnoterule{%
  \kern-3\p@
    \hrule\@width0\columnwidth%%
  \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hbox{\@makefnmark\space}#1}%
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{REFERENCES}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{APPENDIX}
\newcommand\abstractname{ABSTRACT}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{headings}%
\pagenumbering{arabic}
%\if@twoside
%\else
%  \raggedbottom
%\fi
\sloppy
\flushbottom
\if@twocolumn
  \twocolumn
\else
  \onecolumn
\fi

\usepackage{graphicx}

\def\@eqnnum{{\normalfont \normalcolor \ldots(\theequation)}}


%%%%%%%%%%%%%%%%%%%%% List Paired %%%%%%%%%%%%%%%

\newcount\listpaircount%
\def\listterm#1#2{
\global\advance\listpaircount\@ne%
\expandafter\gdef\csname ltpairterm\romannumeral\the\listpaircount\endcsname{\emph{#1}}%
\expandafter\gdef\csname ltpairdef\romannumeral\the\listpaircount\endcsname{#2}%
}
%
\newdimen\termdimen\termdimen\z@%
\newbox\deftempbox
\newcount\deftmpcnt\deftmpcnt\z@
\newcount\defwidtmpcnt\defwidtmpcnt\z@
%
\newenvironment{deflist}[1][\relax]{\par%
  \global\listpaircount\z@%
  \global\defwidtmpcnt\z@%
  \global\deftmpcnt\z@%
  \deflistfont%
  }{%
  \defwidtmpcnt\listpaircount%
  \@whilenum\defwidtmpcnt>\z@%
  \do{%
    \advance\deftmpcnt\@ne%
    \setbox\deftempbox\hbox{\csname ltpairterm\romannumeral\the\deftmpcnt\endcsname}%
    \ifdim\wd\deftempbox>\termdimen%
      \global\termdimen\wd\deftempbox%
    \fi%
    \advance\defwidtmpcnt\m@ne%
  }
  \deftmpcnt\z@%
  \@whilenum\listpaircount>\z@%
  \do{%
    \advance\deftmpcnt\@ne%
      \@ifundefined{listpairwidth\romannumeral\the\listpaircount}{%
        \par\noindent\leavevmode\@hangfrom{\hbox to 40pt{%
            \csname ltpairterm\romannumeral\the\deftmpcnt\endcsname\hfill}\hskip1em}{\csname ltpairdef\romannumeral\the\deftmpcnt\endcsname\par}}{%
        \par\noindent\leavevmode\@hangfrom{\hbox to \csname listpairwidth\romannumeral\the\listpaircount\endcsname{%
            \csname ltpairterm\romannumeral\the\deftmpcnt\endcsname\hfill}\hskip1em}{\csname ltpairdef\romannumeral\the\deftmpcnt\endcsname\par}}
%%
  \writemaxtermwidth%
  \advance\listpaircount\m@ne%
  }\par}

\def\writemaxtermwidth{%
  \protected@write\@mainaux{}{\string\gdef\string\listpairwidth\romannumeral\the\listpaircount{\the\termdimen}}%
}

%%%%%%%%%%%%%%%%%%%%% End of List Paired %%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%% Enunciations   %%%%%%%%%%%%%%%

\usepackage{amsthm}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}
\newtheorem{definition}{Definition}
\newtheorem{assumption}{Assumption}
\newtheorem{notation}{Notation}
\newtheorem{remark}{Remark}
\newtheorem{note}{Note}
\newtheorem{case}{Case}
\newtheorem{step}{Step}
\newtheorem{problem}{Problem}
\newtheorem{exibition}{Exibition}
\newtheorem{establish}{Establish}
\newtheorem{result}{Result}
\newtheorem{example}{Example}
\newtheorem{claim}{Claim}
\newtheorem{Conjecture}{Conjecture}
\newtheorem{Conjection}{Conjection}

%%%%%%%%%%%%%%%%%%%


\endinput
%%
%% End of file `article.cls'.
