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
\def\college#1{\gdef\@college{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\firstsupervisorrank}[1]{\def\@firstsupervisorrank{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\secondsupervisorrank}[1]{\def\@secondsupervisorrank{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\firstadvisorrank}[1]{\def\@firstadvisorrank{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\secondadvisorrank}[1]{\def\@secondadvisorrank{#1}}
\newcommand{\internaljudge}[1]{\def\@internaljudge{#1}}
\newcommand{\internaljudgerank}[1]{\def\@internaljudgerank{#1}}
\newcommand{\externaljudge}[1]{\def\@externaljudge{#1}}
\newcommand{\externaljudgerank}[1]{\def\@externaljudgerank{#1}}
\newcommand{\externaljudgeuniversity}[1]{\def\@externaljudgeuniversity{#1}}
\newcommand{\graduatedeputy}[1]{\def\@graduatedeputy{#1}}
\newcommand{\graduatedeputyrank}[1]{\def\@graduatedeputyrank{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\long\def\acknowledgement#1{\gdef\@acknowledgement{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\long\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latincollege#1{\gdef\@latincollege{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@irfonts
\@irfontsfalse
\DeclareOption{irfonts}{\@irfontstrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه}}
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
%% جلد زرکوب به فارسی (بدون اساتید مشاور)
\newcommand{\coverPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
% دستورات دوآرمه
\makebox[\textwidth][c]{
\begin{minipage}{0.3\textwidth}
	\raggedleft
	\includegraphics[height=4cm]{logo}
\end{minipage}
\begin{minipage}{0.3\textwidth}
	\begin{center}
		\begin{onehalfspacing}
		{\normalsize \bf \@university \\}
		{\normalsize \bf \@college \\}
		{\large\bfseries\@faculty \\}
		{\large\bfseries\@department}
		\end{onehalfspacing}
	\end{center}
\end{minipage}
\begin{minipage}{0.3\textwidth}
	\raggedright
	\includegraphics[height=4cm]{eng-logo}
\end{minipage}
}
% دستورات تک‌آرمه
%\centerline{{\includegraphics[width=5cm]{logo}}}
%\centerline{\bf \@university}
%\centerline{\large\bfseries\@faculty}
% بعد از آرم‌ها
\vskip 1.5cm
{\huge\titlefont\bfseries \@title}\par
\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژهٔ کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel\ \writtenfor
	\@degree{} 
	}
	{\large\bfseries{در رشتهٔ \@subject}}
	\vskip .2cm
	\centerline{\large \bfseries%
		گرایش \@field}
\fi	
\vskip 1cm
\par
{\Large\bfseries{\@name\ \ \@surname}}
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
\includegraphics[width=10cm]{img/besm}
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
% دستورات دوآرمه
\makebox[\textwidth][c]{
\begin{minipage}{5cm}
	\raggedleft
	\includegraphics[height=4cm]{logo}
\end{minipage}
\begin{minipage}{\textwidth - 8cm}
	\begin{center}
		\begin{onehalfspacing}
		{\normalsize \bf \@university \\}
		{\normalsize \bf \@college \\}
		{\large\bfseries\@faculty \\}
		{\large\bfseries\@department}
		\end{onehalfspacing}
	\end{center}
\end{minipage}
\begin{minipage}{5cm}
	\raggedright
	\includegraphics[height=4cm]{eng-logo}
\end{minipage}
}
% دستورات تک‌آرمه
%\centerline{{\includegraphics[width=5cm]{logo}}}
%\centerline{\bf \@university}
%\centerline{\large\bfseries\@faculty}
% بعد از آرم‌ها
\vskip 1.5cm
{\huge\titlefont\bfseries \@title}\par
\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژهٔ کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel{} \writtenfor
	\@degree{} 
	}
	{\large\bfseries{در رشتهٔ \@subject}}
	\vskip .2cm
	\centerline{\large \bfseries%
		گرایش \@field}
\fi	
\vskip 1cm
\par
{\Large\bfseries{\@name\ \ \@surname}}
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تاییدیه هیات داوران
\newcommand{\davaranPage}{
\newpage
%\setcounter{page}{1}
%\thispagestyle{empty}

\begin{minipage}{4cm}
	\raggedleft
	\includegraphics[height=3cm]{logo}
\end{minipage}
\begin{minipage}{\textwidth - 8cm}
	\begin{center}
		\begin{onehalfspacing}
		{\normalsize \bf \@university \\}
		{\normalsize \bf \@college \\}
		{\large\bfseries\@faculty \\}
		%{\large\bfseries\@department}
		\end{onehalfspacing}
	\end{center}
\end{minipage}
\begin{minipage}{4cm}
	\raggedright
	\includegraphics[height=3cm]{eng-logo}
\end{minipage}

\begin{center}
{\Large\bfseries
	گواهی دفاع از \@projectLabel{} \@degree{}
}
\end{center}
%\vspace{.5cm}
هیأت داوران \@projectLabel{}ٔ \@degree{} آقای~/~خانم \@name{} \@surname{} به شمارهٔ دانشجویی \@studentID{} در رشتهٔ \@subject{}~-~گرایش \@field{} را در تاریخ ............ با عنوان «\@title{}»\\
\makebox[\textwidth][l]{
\parbox{0.7\textwidth}{
\makebox[2cm]{}\hspace{1ex}\makebox[2cm]{به عدد}\makebox[5cm]{به حروف}\\
\makebox[2cm][l]{با نمرهٔ نهایی}\hspace{1ex}\framebox[2cm]{\strut}\framebox[5cm]{\strut}
\\
\\
\makebox[2cm][l]{و درجهٔ}\hspace{1ex}\framebox[3cm]{\strut}\hspace{1ex}
ارزیابی کرد.
}
}

\newcounter{davaranCounter}
\begin{table}[h]
\small
\begin{onehalfspacing}
\begin{tabular}{| >{\centering\arraybackslash}m{0.03\textwidth} | >{\centering\arraybackslash}m{.17\textwidth} | >{\centering\arraybackslash}m{.17\textwidth} |>{\centering\arraybackslash}m{.1\textwidth}|>{\centering\arraybackslash}m{.2\textwidth}|>{\centering\arraybackslash}m{.17\textwidth}|}
\hline
{\bfseries\begin{sideways}ردیف\end{sideways}} & {\bfseries مشخصات هیأت داوران} & {\bfseries نام و نام خانوادگی} & {\bfseries مرتبهٔ دانشگاهی} &	{\bfseries دانشگاه یا مؤسسه} & {\bfseries امضا} \\
\hline
\ifx\@firstsupervisor\undefined
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} &	استاد راهنما & \@firstsupervisor & \@firstsupervisorrank & دانشگاه تهران & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\fi
\ifx\@secondsupervisor\undefined%
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} &	استاد راهنما & \@secondsupervisor & \@secondsupervisorrank & دانشگاه تهران & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\fi
\hline
\ifx\@firstadvisor\undefined%
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} & استاد مشاور & \@firstadvisor & \@firstadvisorrank & دانشگاه تهران & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\fi
\ifx\@secondadvisor\undefined%
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} & استاد مشاور & \@secondadvisor & \@secondadvisorrank & دانشگاه تهران & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\fi
\hline
\ifx\@internaljudge\undefined%
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} & استاد داور داخلی & \@internaljudge & \@internaljudgerank & دانشگاه تهران & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\hline
\fi
\ifx\@externaljudge\undefined%
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} & استاد مدعو & \@externaljudge & \@externaljudgerank & \@externaljudgeuniversity & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\hline
\fi
\ifx\@graduatedeputy\undefined%
\else \stepcounter{davaranCounter}
\arabic{davaranCounter} & نمایندهٔ تحصیلات تکمیلی دانشکده & \@graduatedeputy & \@graduatedeputyrank &  دانشگاه تهران & \rule[-.3\baselineskip]{0pt}{2\normalbaselineskip} \\
\hline
\fi
\end{tabular}
\end{onehalfspacing}
\end{table}

\begin{center}
\noindent
	\begin{minipage}{0.45\textwidth}
		\begin{center}
			نام و نام خانوادگی معاون تحصیلات تکمیلی و پژوهشی دانشکده~/~گروه:\\
			تاریخ و امضا:
		\end{center}
	\end{minipage}
	\hspace{0.08\textwidth}
	\begin{minipage}{0.45\textwidth}
		\begin{center}
			نام و نام خانوادگی معاون آموزشی و تحصیلات تکمیلی پردیس دانشکده‌های فنی:\\
			تاریخ و امضا:
		\end{center}
	\end{minipage}
\end{center}
} % End of davaranPage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
\newpage
%\thispagestyle{empty}
\begin{center}
{\Large \titlefont\bfseries
تعهدنامهٔ اصالت اثر\\
}
\vspace{.5cm}
باسمه تعالی 
\vspace{.5cm}
\end{center}
\doublespacing 

اینجانب 
\@name \ \@surname \
تأیید می‌کنم که مطالب مندرج در این \@projectLabel{} حاصل کار پژوهشی اینجانب است و به دستاوردهای پژوهشی دیگران که در این نوشته از آن‌ها استفاده شده است مطابق مقررات ارجاع گردیده است. این \@projectLabel{} قبلاً برای احراز هیچ مدرک هم‌سطح یا بالاتری ارائه نشده است.

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

\textbf{کلیهٔ حقوق مادی  و معنوی این اثر}
 
\textbf{متعلّق به دانشگاه تهران است.}

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
% بخش تقدیم
%% پایان‌نامه خود را تقدیم کنید! %%
\newcommand{\taghdimPage}
{
\ifx\@dedication\undefined%
    \relax
\else
    \newpage
    \thispagestyle{empty}
    %\vspace{-40mm}
    \@dedication
\fi
}

%% قدردانی (فارسی)
\newcommand{\ghadrdaniPage}
{
\ifx\@acknowledgement\undefined%
	\relax
\else   
	\newpage
	\thispagestyle{empty}
	\centerline{\Large \bfseries قدردانی}
	\vspace{1cm}
	\par\noindent
	\@acknowledgement
% با استفاده از دستور زیر، امضای شما، به طور خودکار، درج می‌شود.
	\signature 
\fi
}

%% چکیده فارسی
\newcommand\abstractPage{
	\newpage
	\thispagestyle{empty}
	\section*{چکیده}
	% \addcontentsline{toc}{section}{چکیده}
	\@fa-abstract
	\par\noindent
	\paragraph{واژگان کلیدی}
	\@keywords
	\newpage
}

\def\latinabstract{
%% Latin abstract Page
\newpage\clearpage
\thispagestyle{empty}
\section*{Abstract}
% \addcontentsline{toc}{section}{چکیده}
\@en-abstract
\par
\noindent
\paragraph{Keywords}
\@latinkeywords
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Latin Abstract and Title pages

\font\supervisorfont=cmbxti10

\newcommand{\latinTitlePage}{%

\latinabstract
%% Latin title page
\begin{titlepage}
\vspace{-10mm}
%% Double logo commands
\makebox[\textwidth][c]{
\begin{minipage}{0.3\textwidth}
	\includegraphics[height=4cm,right]{eng-logo-en}
\end{minipage}
\begin{minipage}{0.5\textwidth}
	\begin{center}
		\begin{onehalfspacing}
		{\normalsize \bf \@latinuniversity \\}
		{\normalsize \bf \@latincollege \\}
		{\large\bfseries\@latinfaculty \\}
		{\large\bfseries\@latindepartment \\}
		\end{onehalfspacing}
	\end{center}
\end{minipage}
\begin{minipage}{0.3\textwidth}
	\includegraphics[height=4cm,left]{logo-en}
\end{minipage}
}
%% Single logo commands
%\centerline{{\includegraphics[width=5cm]{logo-en}}}
%\centerline{\bf \@latinuniversity}
%\centerline{\large\bfseries\@latinfaculty}
%% After logos
\vskip 1.5cm
{%\latintitlefont 
\Huge\latintitlefont\bfseries
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
\rm \Large\bfseries \@latinname \; \@latinsurname}\par

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
\def\writtenfor{برای دریافت درجهٔ }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\AtBeginDocument{
\makeatletter
% تعیین مشخصات فایل PDF
\hypersetup{
pdftitle={\@latintitle},
pdfauthor={\@latinname \@latinsurname},
pdfsubject={Thesis in \@latinsubject},
pdfkeywords={\@latinkeywords},
pdfdirection={R2L}
}
\makeatother
}

%% Author: Sina Momken
%%
%% Base author: M.Amintoosi
%% 
%% Copyright © 2011-2012 by Vahid Damanafshan     
%% 
%% Distributable under GNU GENERAL PUBLIC LICENSE Version 3.
%% 
%% This work is "maintained" by Sina Momken & Hadi Safari.
%% 
%% 
%% 
%% 
%% Special thanks to Mahmood Amintoosi, Vahid Damanafshan and Vafa Khalighi for their invaluable work.
%%
%% End of file `tehran-thesis.cls'.
