\ProvidesClass{resume}

\LoadClass[12pt, UTF8, AutoFakeBold]{ctexart}

\RequirePackage{xifthen}
\RequirePackage{fancyhdr}
\RequirePackage{mhchem}
\RequirePackage{titlesec}
\RequirePackage[
    a4paper,
    left=0.7in,
    right=0.7in,
    top=0.5in,
    bottom=0.5in,
    nohead
]{geometry}
\RequirePackage[
    colorlinks=true,
    linkcolor=black,
    urlcolor=black
]{hyperref}
\RequirePackage{enumitem}
\setlist{noitemsep}
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}

\setlength{\parindent}{0pt}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[L]{\small 最近更新: \today}
\renewcommand{\headrulewidth}{0pt}


\titleformat{\section}{\Large\scshape\raggedright}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0cm}{*1}{*1}

\titleformat{\subsection}{\raggedright}{}{0em}{}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}

\newcommand{\datedsection}[2]{\section[#1]{#1 \hfill #2}}
\newcommand{\datedsubsection}[3]{\subsection[#1]{#1 ~{\small #2}\hfill #3}}
\newcommand{\datedline}[2]{{\par #1 \hfill #2 \par}}
\newcommand{\role}[2]{~ {\textit{#1} ~ #2}\vspace{0.5ex}}

\newcommand{\name}[1]{
    \centering{\Huge\scshape{#1}}
    \vspace{1.2ex}
}
\newcommand{\contactinfo}[4]{
    \centering{\sffamily{\ {#1} \textperiodcentered\ \ {#2}}
    \ifthenelse{\isempty{#3}}
        {  }
        {\textpriodcentered\ \ {#3} }
    \ifthenelse{\isempty{#4}}
        {  }
        {\textpriodcenterd\ \ {#4} }
    }
    \vspace{0.7ex}
}
