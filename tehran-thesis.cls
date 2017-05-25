
%%
%%  This is file `tehran-thesis.cls',
%%  It is a modification IUST-Thesis by Mahmood Amintoosi which itself is a change of Tabriz_thesis by Vahid Damanafshan.
%%  Author: Sina Momken, sina.momken@gmail.com
%%	Base author: Mahmood Amintoosi, m.amintoosi@gmail.com
%%  https://github.com/sinamomken/tehran-thesis
%%	Ver 0.1, May 2017

%% Original Copyright
%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2011-2012 Vahid Damanafshan
%%  
%%   http://damanafshan.tk      
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tehran-thesis}
              [05/09/2017 v0.1
 Persian thesis document class in XeLaTeX for University of Tehran projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه }}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی ارشد}
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% جلد پایان‌نامه (زرکوب) به فارسی
\newcommand{\coverPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
\centerline{{\includegraphics[width=5cm]{logo}}}
%\par
%\vspace{-5mm}
\centerline{\bf \@university}
\centerline{\large\bfseries\@faculty}
\vskip 1.5cm
{\huge\titlefont \@title}\par
\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژه کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel\ \ \writtenfor
	\@degree{} 
	}
	{\large\bfseries{در رشته \@subject}}
	\vskip .2cm
	\centerline{\large \bfseries%
		گرایش \@field}
\fi	
\vskip 1cm
\par
{\Large\bfseries{\large\bfseries   \@name\ \ \@surname}}
\par
\vskip 1cm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}


\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of coverPage
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\besmPage}{
%% صفحه سفید
\newpage
\pagestyle{empty}\noindent\\ 
%% بسم الله الرحمن الرحیم
\newpage
\thispagestyle{empty}
%\hfill
\begin{center}
\includegraphics[width=10cm]{besm}
\end{center}
%% صفحه سفید
\newpage
\pagestyle{empty}\noindent\\ 
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% فرم داخلی جلد به فارسی (دارای استاد مشاور)
\newcommand{\titlePage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
\centerline{{\includegraphics[width=5cm]{logo}}}
%\par
%\vspace{-5mm}
\centerline{\bf \@university}
\centerline{\large\bfseries\@faculty}
\vskip 1.5cm
{\huge\titlefont \@title}\par
\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژه کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel\ \ \writtenfor
	\@degree{} 
	}
	{\large\bfseries{در رشته \@subject}}
	\vskip .2cm
	\centerline{\large \bfseries%
		گرایش \@field}
\fi	
\vskip 1cm
\par
{\Large\bfseries{\large\bfseries   \@name\ \ \@surname}}
\par
\vskip 15mm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
استادان مشاور
\par
{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of titlePage
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
\newpage
\setcounter{page}{1}
%\thispagestyle{empty}

\begin{center}
{\Large \titlefont
گواهی دفاع از \@projectLabel{} \@degree{}
 }
\end{center}
\vspace{.5cm}

نام دانشكده: \@faculty

نام دانشجو: \@name{} \@surname

عنوان \@projectLabel: \@title

تاریخ دفاع: \@thesisdate

رشته: \@subject

%\vspace{.5cm}
گرایش: \@field
}
%%%%%%%%%%%%%%%%%%%%%%%%%
%% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont
تعهدنامه اصالت اثر \\
 }
\vspace{.5cm}
باسمه تعالی 
\vspace{.5cm}
\end{center}
\doublespacing 

اینجانب 
\@name \ \@surname \
تائید می‌كنم كه مطالب مندرج در این \@projectLabel{} حاصل كار پژوهشی اینجانب است و به دستاوردهای پژوهشی ديگران كه در این نوشته از آنها استفاده شده است مطابق مقررات ارجاع گرديده است. این پایان نامه قبلاً برای احراز هیچ مدرک هم‌سطح یا بالاتر ارائه نشده است.

\vspace{1cm}
\begin{center}
\begin{tabular}{lr}
نام و نام خانوادگی دانشجو:   & 	\@name{} \@surname \\
 تاریخ و امضای دانشجو: & \\
\end{tabular}
\end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% مجوز بهره‌برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
\newpage
\ \vfill
\vspace{-12cm}
\tikzstyle{tmpvip}=%
[ultra thick,rectangle,draw=black!72,rounded corners=2mm,%
inner xsep=-1.3cm,inner ysep=0.4cm]
\begin{center}
\begin{tikzpicture}
\node[tmpvip](mainbox){%
\begin{minipage}{0.7\textwidth}
\begin{persian}
\begin{center}

\textbf{کلیه حقوق مادی  و معنوی این اثر}
 
\textbf{متعلّق به دانشگاه تهران می‌باشد.}

\end{center}
\end{persian}
\end{minipage}};
%\node[viptitle] at (mainbox.west){\ding{'153}};
\end{tikzpicture}
\end{center}
\ \vfill
}

% \def\frame{\newpage
% \thispagestyle{empty}
% \begin{framed}\thispagestyle{empty}}
% \def\endframe{\thispagestyle{empty}\end{framed}
% \thispagestyle{empty}
% \newpage
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% چکیده فارسی
\newcommand\abstractPage{\newpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\bfseries چکیده}
\vspace{5mm}
\par
\noindent
\@fa-abstract
\vspace{8mm}
\par
\noindent
\textbf{واژگان کلیدی:} 
\@keywords
\newpage
}

% \def\latinabstract{\newpage
% \thispagestyle{empty}
% \vskip 15mm
% \begin{center}%{\Large\bfseries \@latintitle \\[5mm]}
% {\bfseries Abstract}
% \end{center}
% \vspace{5mm}}

% \def\endlatinabstract{\newpage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% قدردانی (فارسی)
\def\acknowledgementpage{\newpage
\thispagestyle{empty}
\centerline{\Large \bfseries قدردانی}
\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{%\nastaliq \scriptsize 
\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

% \def\abstract{
% \newpage
% \subsection*{چکیده}\small
% \@normalsize
% \@fa-abstract
% }
% \def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Latin Abstract and Title pages

%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300

\font\supervisorfont=cmbxti10

\newcommand{\latinTitlePage}{%
%% Latin abstract Page
\newpage\clearpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\bfseries Abstract:}
\vspace{5mm}
\par
\noindent
\@en-abstract
\vspace{8mm}
\par
\noindent
\textbf{Keywords:} 
\@latinkeywords

%% Latin title page
\begin{titlepage}
\vspace{-10mm}
{\includegraphics[width=5cm]{logo-en}}
\centerline{\bf \@latinuniversity} 
\large\bfseries
\@latinfaculty\space 
\vskip 1cm
{%\latintitlefont 
\Huge
\@latintitle}
%\baselineskip=.750cm \par
\vskip 15mm
{
\large
\if@bscthesis 
    Bachelor of Science Thesis
	in  \@latinsubject 
\else
	A Thesis submitted to the Graduate Studies Office
    \\In partial fulfillment of the requirements for
    \\The degree of 
	\if@mscthesis
	 Master of Science
	\else
	 Doctor of Philosophy
	\fi
	\\in  \@latinsubject{} - \@latinfield{}
	%\baselineskip=.750cm
	%\addtolength{\baselineskip}{-5mm}
\fi
}
\vskip 15mm
{\bfseries\latinby}\par
{\large %\supervisorfont
\rm\@latinname \; \@latinsurname}\par

\vskip 15mm

\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor:
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors:
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor:
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors:
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm

\par
\vskip 1cm

{\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% Author: Sina Momken
%%
%% Base author: M.Amintoosi
%% 
%% Copyright © 2011-2012 by Vahid Damanafshan     
%% 
%% Distributable under GNU GENERAL PUBLIC LICENSE Version 3.
%% 
%% This work is "maintained" by Sina Momken.
%% 
%% 
%% 
%% 
%% Special thanks to Mahmood Amintoosi, Vahid Damanafshan and Vafa Khalighi for their invaluable work.
%%
%% End of file `tehran-thesis.cls'.
