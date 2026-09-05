#set page(
  paper: "a4",
  margin: (top: 1.35cm, bottom: 1.35cm, left: 1.75cm, right: 1.75cm),
  footer: [
    #set text(size: 8.5pt, fill: rgb("#78716c"))
    #grid(
      columns: (1fr, 1fr),
      align(left)[*Ananya Pradhan* --- Curriculum Vitae],
      align(right)[Page #context counter(page).display("1 / 1", both: true)]
    )
  ]
)

#set text(
  font: ("Libertinus Serif", "Charter", "Palatino"),
  size: 9.6pt,
  fill: rgb("#1c1917"),
  spacing: 120%,
  lang: "en"
)

#set par(justify: true, leading: 0.65em)

// Styling Helpers
#let primary-color = rgb("#15325b")
#let secondary-color = rgb("#44403c")
#let line-color = rgb("#d6d3d1")
#let accent-color = rgb("#991b1b")

#let cv-section(title) = {
  v(8pt)
  text(font: ("Libertinus Serif", "Charter"), size: 11.2pt, weight: "bold", fill: primary-color, smallcaps(title))
  v(1.5pt)
  line(length: 100%, stroke: 0.8pt + primary-color)
  v(3pt)
}

#let cv-item(title, date, institution, location, details) = {
  block(width: 100%, breakable: false)[
    #grid(
      columns: (1fr, auto),
      text(weight: "bold", fill: rgb("#1c1917"), title),
      text(weight: "bold", fill: primary-color, date)
    )
    #if institution != "" or location != "" [
      #grid(
        columns: (1fr, auto),
        text(style: "italic", fill: secondary-color, institution),
        text(style: "italic", fill: secondary-color, location)
      )
    ]
    #v(2pt)
    #details
    #v(5pt)
  ]
}

// ── HEADER ──
#align(center)[
  #text(size: 19pt, weight: "bold", fill: primary-color, tracking: 1.2pt)[ANANYA PRADHAN] \
  #v(2.5pt)
  #text(size: 9.8pt, weight: "medium", fill: rgb("#292524"))[
    Development Economist & Quantitative Labour Researcher
  ] \
  #v(2pt)
  #text(size: 8.7pt, fill: secondary-color)[
    Research Associate, V.V. Giri National Labour Institute, Ministry of Labour & Employment, Govt. of India \
    Research Contributor, PLFS Data Story (India Labour Observatory & Digital Labour Tech) \
    Alumna, Centre for Informal Sector and Labour Studies (CISLS), Jawaharlal Nehru University (JNU), New Delhi
  ] \
  #v(3.5pt)
  #text(size: 8.7pt, fill: primary-color)[
    #link("mailto:pradhan.ananya1994\@gmail.com")[pradhan.ananya1994\@gmail.com] #h(6pt)|#h(6pt)
    +91-8130706869 #h(6pt)|#h(6pt)
    #link("https://ananya-econ.github.io")[ananya-econ.github.io] #h(6pt)|#h(6pt)
    #link("https://github.com/ananya-econ")[github.com/ananya-econ] #h(6pt)|#h(6pt)
    New Delhi / Noida, India
  ]
]

#v(2pt)

// ── PROFILE ──
#cv-section("Profile & Research Agenda")
Quantitative Development Economist and Labour Researcher with postgraduate degrees from Jawaharlal Nehru University (JNU) and Utkal University, UGC-NET qualified in Economics, with over *3 years of cumulative research experience* in empirical micro-econometrics, primary digital survey design (SurveyCTO, KoBoToolbox), automated Stata High-Frequency Check (HFC) data quality pipelines, and applied labour market research. Contributed empirical research to the PLFS 2024–25 data story _"India's Labour Market in 2025: Structural Cleavages, Gender Gaps, and the Educated Youth Paradox"_ (first published at #link("https://digitallabour.tech")[Digital Labour Tech] and featured on the #link("https://indialabourobservatory.com")[India Labour Observatory]). Currently Research Associate at the *V.V. Giri National Labour Institute* (Ministry of Labour & Employment, Govt. of India), evaluating Digital Public Infrastructure (DPI, e-Shram), social security floors, Direct Benefit Transfers (DBT), and international labour governance across BRICS economies. Proven background leading multi-site CAPI field operations, administering gender-disaggregated household and worker surveys, and executing Oaxaca-Blinder wage decompositions on national microdata.

// ── RESEARCH INTERESTS ──
#cv-section("Research Interests")
#text(size: 9.1pt)[
  *Primary:* Empirical Labour Economics $dot$ Gender Wage Discrimination & Structural Cleavages $dot$ Informal & Platform Labour \
  *Policy & Governance:* Digital Public Infrastructure (DPI, e-Shram, DBT) $dot$ Social Protection Floors $dot$ BRICS Labour Regimes \
  *Methods:* Applied Micro-econometrics (Oaxaca-Blinder) $dot$ Primary Field Surveys & CAPI $dot$ Automated Stata HFC Quality Pipelines
]

// ── APPOINTMENTS ──
#cv-section("Research & Professional Appointments")

#cv-item(
  "Research Contributor",
  "2025",
  "India Labour Observatory & Digital Labour Tech",
  "New Delhi, India",
  [
    - Contributed empirical analysis to the PLFS 2024--25 data story _"India's Labour Market in 2025: Structural Cleavages, Gender Gaps, and the Educated Youth Paradox"_, first published at #link("https://digitallabour.tech")[Digital Labour Tech] and featured on the #link("https://indialabourobservatory.com")[India Labour Observatory].
    - Analyzed gender gaps in labour force participation, structural wage disparities, and youth unemployment patterns using Periodic Labour Force Survey unit-level microdata.
  ]
)

#cv-item(
  "Research Associate",
  "Mar 2026 -- Present",
  "V.V. Giri National Labour Institute (VVGNLI) --- Ministry of Labour & Employment, Govt. of India",
  "NOIDA, India",
  [
    - *Project:* _Shaping the Future of Labour in BRICS: The Role of Artificial Intelligence (AI) and Emerging Technologies_.
    - Lead researcher investigating government social security schemes, digital welfare delivery, and Direct Benefit Transfer (DBT) programs for unorganised and platform workers, benchmarked against the ILO Social Security Floor.
    - Evaluating Digital Public Infrastructure (DPI) integrations (e-Shram, MGNREGS, DBT portals), assessing welfare access, aggregator onboarding, and structural gender barriers in digital welfare access.
    - Conducting comparative cross-country policy research on AI adoption, digital welfare registries, and informal worker protections across BRICS member states (Brazil, Russia, India, China, South Africa).
    - Designed and programmed CAPI survey instruments (SurveyCTO / KoBoToolbox) with validation logic, audit logging, and gender-disaggregated modules for national-level policy evaluation.
    - Engineered automated Stata High-Frequency Check (HFC) scripts to continuously monitor enumerator productivity, detect statistical anomalies, and guarantee publication-ready microdata.
    - Coordinated technical proceedings and prepared presentations for the Final Meeting of the BRICS Labour Research Network under India's Presidency.
  ]
)

#cv-item(
  "Field Investigator",
  "Jan 2026 -- Mar 2026",
  "ICSSR-Sponsored National Research Project, Christ University",
  "Ghaziabad / Uttar Pradesh, India",
  [
    - *Project:* _Sustainability of Digital Jobs --- Assessing Youth Livelihood Opportunities in Uttar Pradesh_.
    - Administered structured CAPI surveys via KoBoToolbox across geographically dispersed districts in Uttar Pradesh, managing data capture for 100+ respondents with gender-disaggregated modules on youth digital employment.
    - Implemented real-time daily data auditing and error correction protocols, maintaining zero sample attrition across survey waves.
    - Coordinated local district administrative clearances and respondent mobilization under strict research ethics protocols.
  ]
)

#cv-item(
  "Field Investigator / Research Assistant",
  "Nov 2024 -- Jan 2025",
  "Centre for Informal Sector and Labour Studies (CISLS), Jawaharlal Nehru University",
  "New Delhi, India",
  [
    - *Project:* _Mixed-Methods Empirical Study on Platform-Based Labour and Gender in Delhi NCR_.
    - Designed, coded, and pilot-tested survey instruments with built-in validation constraints, skip logic, and geo-referencing.
    - Administered 60 in-depth primary interviews across Delhi NCR app-based delivery and transport gig workers, analyzing algorithmic control, piece-rate volatility, and gendered barriers to entry. Assisted in Stata cleaning, coding, and econometric analysis.
  ]
)

#cv-item(
  "Research Support --- Rural Communities & Livelihood Documentation",
  "Oct 2018 -- Dec 2019",
  "CIVICUS (via Video Volunteers)",
  "Odisha, India",
  [
    - Translated, transcribed, and synthesized primary field documentation from Odia and Bengali to English for an international civil society advocacy consortium.
    - Documented livelihoods, community resource rights, food security, and collective bargaining among marginalized farming, marine fishing, and women's Self-Help Groups (SHGs) across coastal and tribal Odisha.
  ]
)

// ── PRIMARY FIELDWORK & SURVEY ADMINISTRATION ──
#cv-section("Primary Fieldwork & Survey Administration Experience")

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    *Uttar Pradesh Youth Livelihoods (ICSSR, 2026)* \
    100+ structured CAPI interviews across multiple UP districts; youth digital skilling, platform livelihoods, and gender divides. \
    #v(2pt)
    *Delhi NCR Platform Workers (JNU, 2024--25)* \
    60 in-depth surveys of gig/platform workers; algorithmic dispatching, wage deductions, and working-hour distributions. \
    #v(2pt)
    *Munirka Urban Informal Workers (Delhi, 2018)* \
    35 structured interviews with informal workers (mess workers, security guards, domestic staff) assessing wage exploitation and living conditions.
  ],
  [
    *Kalahandi & Niyamgiri Hills (Odisha, 2018)* \
    Participatory rural appraisal & interviews with Dongaria Kondh tribal households; tenurial rights, bauxite mining resistance, and forest economies. \
    #v(2pt)
    *Kendrapara Women's SHGs (Odisha, 2016)* \
    Focus Group Discussions (FGDs) with women's micro-credit groups; agricultural credit linkages, bank linkage schemes, and debt cycles. \
    #v(2pt)
    *Khamarsahi Village Caste & Labour Study (Odisha, 2016)* \
    Field research on Scheduled Caste agricultural labourers; wage discrimination, tied labour, and social exclusion.
  ]
)

#pagebreak()

// ── PUBLICATIONS & PAPERS ──
#cv-section("Publications, Working Papers & Public Datasets")

#cv-item(
  "India's Labour Market in 2025: Structural Cleavages, Gender Gaps, and the Educated Youth Paradox",
  "2026",
  "Data Story, Digital Labour Tech & India Labour Observatory (with Abhinav Kumar)",
  "Research Publication",
  [
    Empirical investigation of Periodic Labour Force Survey (PLFS 2024--25) microdata diagnosing structural gender participation gaps, educated youth unemployment, and social group wage disparities. First published at Digital Labour Tech and featured on the India Labour Observatory. \
    #link("https://indialabourobservatory.com/stories/indias-labour-market-in-2025/")[View Interactive Story & Data ↗]
  ]
)


#cv-item(
  "Global Value Chains in Extractive Industries: Mining, Labour Precarity, and Value Capture in Odisha",
  "2021",
  "Working Paper (Seminar Paper, CISLS, JNU --- Advised by Prof. Praveen Jha)",
  "Research Paper",
  [
    Empirical political economy inquiry into transnational bauxite mining and alumina refining (Vedanta Limited) in Lanjigarh and Niyamgiri, Odisha. Draws on 35 semi-structured worker interviews, 5 FGDs, and Indian Bureau of Mines longitudinal data to analyze multi-tiered subcontracting, labour control regimes, and agrarian dispossession. \
    #link("https://ananya-econ.github.io/assets/papers/gvc_writing_sample.pdf")[Download Working Paper PDF ↗]
  ]
)

#cv-item(
  "Gender-Based Wage Discrimination in India: An Oaxaca-Blinder Decomposition Analysis",
  "2019",
  "M.A. Thesis, Centre for Informal Sector and Labour Studies (CISLS), JNU",
  "New Delhi, India",
  [
    Econometric decomposition using Periodic Labour Force Survey unit-level data in Stata. Partitioned the male-female wage gap into explained human capital endowments and unexplained structural discrimination coefficients across formal salaried and informal casual employment.
  ]
)

#cv-item(
  "Caste System and Patterns of Discrimination in Rural Labour Markets",
  "2016",
  "Field Research Monograph, Centre for Study of Discrimination and Exclusion (CSDE), JNU",
  "Supervised by Prof. Y. Chinna Rao",
  [
    Empirical investigation of caste hierarchies, debt interlinkages, and agricultural wage discrimination among Scheduled Caste informal workers in Khamarsahi village, Kendrapara, Odisha.
  ]
)

#cv-item(
  "Modes of Production, Globalisation, and Labour Processes: A Relational Political Economy Analysis",
  "2018",
  "Working Paper / Academic Essay, CISLS, Jawaharlal Nehru University",
  "New Delhi, India",
  [
    Relational political economy analysis tracing class differentiation from primitive accumulation to contemporary international financial capital, transnational corporate monopolisation, and structural informalisation. \
    #link("https://ananya-econ.github.io/assets/papers/class_political_economy.pdf")[Download Paper PDF ↗]
  ]
)

// ── EDUCATION ──
#cv-section("Education")

#cv-item(
  "M.A. in Labour and Development Studies",
  "2017 -- 2019",
  "Centre for Informal Sector and Labour Studies (CISLS), Jawaharlal Nehru University (JNU)",
  "New Delhi, India",
  [
    - *Grade:* 6.25 / 9.0 (First Class equivalent)
    - *Core Coursework:* Advanced Development Economics, Rural Labour Markets, Advanced Research Methods, Applied Statistics & Econometrics, Political Economy of Development, Informal Sector in Developing Economies.
    - *Thesis:* _Gender-Based Wage Discrimination in India: An Oaxaca-Blinder Decomposition Analysis using PLFS Data_.
  ]
)

#cv-item(
  "M.A. in Analytical and Applied Economics",
  "2015 -- 2017",
  "Department of Analytical and Applied Economics, Utkal University",
  "Bhubaneswar, Odisha",
  [
    - *Grade:* 65.67% (First Class)
    - *Core Coursework:* Econometric Theory, Mathematical Economics, Microeconomic Theory, Macroeconomics, Public Economics, Development Policy.
  ]
)

#cv-item(
  "B.A. in Economics (First Class Honours with Distinction)",
  "2011 -- 2014",
  "Utkal University",
  "Bhubaneswar, Odisha",
  [
    - *Honours:* First Class with Distinction
    - *Subjects:* Economic Theory, Indian Economy, Monetary Economics, Quantitative Techniques.
  ]
)

// ── CERTIFICATIONS & TRAINING ──
#cv-section("Certifications & Specialized Methodological Training")

- *UGC-NET Qualified in Economics* (University Grants Commission, National Eligibility Test for Assistant Professorship).
- *Designing and Running Randomized Evaluations* --- J-PAL / MITx (Coursework in power calculations, cluster RCT designs, balance checks, and field protocols --- in progress).
- *Data Analysis for Social Scientists* --- MITx (Probability, regression, causal inference, and hypothesis testing --- in progress).
- *Survey Methodology, Sampling Techniques & Field Protocols* --- Society for Social and Economic Research (SSER), New Delhi (2018).
- *Post Graduate Diploma in Computer Applications (PGDCA)* (Database architecture, programming fundamentals, spreadsheet algorithms).

// ── TECHNICAL & ECONOMETRIC TOOLKIT ──
#cv-section("Computational & Methodological Toolkit")

#grid(
  columns: (auto, 1fr),
  gutter: 8pt,
  [*Econometrics & Stats:*],
  [Stata (Primary: reproducible `.do` scripting, High-Frequency Checks [HFCs], panel FE/RE, Oaxaca-Blinder decompositions, PLFS microdata harmonisation), R (`dplyr`, `tidyr`, `ggplot2`, spatial sf), Python (`pandas`, `numpy`, `statsmodels`, `Playwright`, `BeautifulSoup`).],
  
  [*Digital Survey CAPI:*],
  [SurveyCTO & KoBoToolbox / ODK (Advanced XLSForm programming, complex constraint logic, cascading selects, GPS geotrace/geopoint, audit log monitoring, server pipelines).],

  [*Geospatial / GIS:*],
  [QGIS (Thematic cartography, shapefile manipulation, district boundary mapping), Google Earth Pro (spatial referencing, ground truth verification).],

  [*Typesetting & Code:*],
  [Typst (Modern vector publishing), Quarto (`.qmd`), LaTeX, Git / GitHub version control, Markdown, HTML5/CSS3.],

  [*Languages:*],
  [*Odia* (Native --- full professional proficiency in speaking, reading, and writing),    *English* (Bilingual --- academic writing and presentation proficiency),    *Hindi* (Professional working proficiency --- fluent field administration and translation),    *Bengali* (Working reading and speaking proficiency).]
)

#v(10pt)
#align(center)[#text(size: 8.5pt, fill: rgb("#78716c"))[_Academic and professional references available upon request._]]
