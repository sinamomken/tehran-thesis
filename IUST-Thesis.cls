
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
\ProvidesClass{VThesis}
              [10/21/2011 v0.4
 Persian thesis document class in XeLaTeX for University of Tabriz projects/theses/dissertations]
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
\newcommand{\firstPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
\centerline{{\includegraphics[width=5cm]{logo}}}
\par
\vspace{-5mm}
{\large\bfseries\@faculty}
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
} % end of firstPage

\newcommand{\besmPage}{
%% صفحه سفید
\newpage
%\pagestyle{empty}\noindent\\ 
%% بسم الله الرحمن الرحیم
\newpage
\thispagestyle{empty}
%\hfill
\begin{center}
\includegraphics[width=10cm]{besm}
\end{center}
}

%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
\newpage
\setcounter{page}{1}
%\thispagestyle{empty}

\begin{center}
{\Large \titlefont
 تأییدیه‌ی هیأت داوران جلسه‌ی دفاع از \@projectLabel
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

% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont
تأییدیه‌ی صحت و اصالت نتایج \\
 }
\vspace{.5cm}
باسمه تعالی 
\vspace{.5cm}
\end{center}
\doublespacing 

اینجانب 
\@name \ \@surname \ 
به شماره دانشجویی 
\@studentID {}
دانشجوی رشته 
\@subject {}
مقطع تحصیلی 
\@degree {}
تأیید می‌نمایم كه كلیه‌ی نتایج این \@projectLabel{} حاصل كار اینجانب و بدون هرگونه دخل و تصرف است و موارد نسخه‌برداری‌شده از آثار دیگران را با ذكر كامل مشخصات منبع ذكر كرده‌ام. درصورت اثبات خلاف مندرجات فوق، به تشخیص دانشگاه مطابق با ضوابط و مقررات حاكم ( قانون حمایت از حقوق مؤلفان و مصنفان و قانون ترجمه و تكثیر كتب و نشریات و آثار صوتی، ضوابط و مقررات آموزشی، پژوهشی و انضباطی ... ) با اینجانب رفتار خواهد شد و حق هرگونه اعتراض درخصوص احقاق حقوق مكتسب و تشخیص و تعیین تخلف و مجازات را از خویش سلب می‌نمایم. در ضمن، مسؤولیت هرگونه پاسخگویی به اشخاص اعم از حقیقی و حقوقی و مراجع ذی‌صلاح (اعم از اداری و قضایی) به عهده‌ی اینجانب خواهد بود و دانشگاه هیچ‌گونه مسؤولیتی در این خصوص نخواهد داشت.

\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{lr}
نام و نام خانوادگی:   & 	\@name{} \@surname \\
 تاریخ و امضا: & \\
\end{tabular}
\end{flushleft}
}

% مجوز بهره‌برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont
مجوز بهره‌برداری از پایان‌نامه \\
 }
\vspace{.5cm}
\end{center}
\doublespacing 

بهره‌برداری از این پایان‌نامه در چهارچوب مقررات كتابخانه و با توجه به محدودیتی كه توسط استاد راهنما به شرح زیر تعیین می‌شود، بلامانع است:

\noindent$\Box$ بهره‌برداری از این پایان‌نامه برای همگان بلامانع است.\\
$\Box$ بهره‌برداری از این پایان‌نامه با اخذ مجوز از استاد راهنما، بلامانع است.\\
$\Box$ بهره‌برداری از این پایان‌نامه تا تاریخ .................................... ممنوع است.\\

\vspace{.5cm}
\begin{flushleft}
\begin{tabular}{l p{.25\textwidth}}
% چون & در ماکروی دخل جدول مشکل ایجاد می‌کرد مجبور شدم دو تیکه بنویسم
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		استاد راهنما:
	\else
		اساتید راهنما: 
	\fi
\fi
&
\ifx\@firstsupervisor\undefined%
	\relax
\else
	\ifx\@secondsupervisor\undefined%
		\@firstsupervisor
	\else
		\@firstsupervisor{} \newline \@secondsupervisor
	\fi
\fi \\
  تاریخ: & \\
	 امضا: &\\
\end{tabular}
\end{flushleft}
}

% \def\frame{\newpage
% \thispagestyle{empty}
% \begin{framed}\thispagestyle{empty}}
% \def\endframe{\thispagestyle{empty}\end{framed}
% \thispagestyle{empty}
% \newpage
% }
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

%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300
\font\supervisorfont=cmbxti10

\newcommand{\latinfirstPage}{%
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

\begin{titlepage}
\vspace{-10mm}
{\includegraphics[height=4.5cm]{logo-en}}
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
	A Thesis Submitted in Partial Fulfillment of the Requirement for the Degree of 
	 \if@mscthesis
	Master of Science
	\else
	 Doctor of Philosophy
	\fi
	in  \@latinsubject 
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

%% M.Amintoosi
%% 
%% Copyright © 2011-2012      by Vahid Damanafshan     
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi for his invaluable hints.
%%
%% End of file `tehran-thesis.cls'.
