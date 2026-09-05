#set page(
  paper: "a4",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 1.8cm, right: 1.8cm),
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
  v(9pt)
  text(font: ("Libertinus Serif", "Charter"), size: 11.2pt, weight: "bold", fill: primary-color, smallcaps(title))
  v(1.5pt)
  line(length: 100%, stroke: 0.8pt + primary-color)
  v(3.5pt)
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
    Researcher & Core Contributor, India Labour Observatory (#link("https://indialabourobservatory.com")[indialabourobservatory.com]) & Digital Labour Tech \
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
Quantitative Development Economist and Labour Researcher with postgraduate degrees from Jawaharlal Nehru University (JNU) and Utkal University, UGC-NET qualified in Economics, with over *5 years of cumulative experience* in empirical micro-econometrics, primary digital survey design (SurveyCTO, KoBoToolbox), automated Stata High-Frequency Check (HFC) data quality pipelines, and large-scale public data infrastructure. Co-developer and researcher at the *India Labour Observatory* (#link("https://indialabourobservatory.com")[indialabourobservatory.com]) alongside Abhinav Kumar, analyzing official survey microdata covering *1.15 million records* across 36 Indian states. Currently Research Associate at the *V.V. Giri National Labour Institute* (Ministry of Labour & Employment, Govt. of India), evaluating Digital Public Infrastructure (DPI, e-Shram), social security floors, Direct Benefit Transfers (DBT), and international labour governance across BRICS economies. Proven background leading multi-site CAPI field operations, administering gender-disaggregated household and worker surveys, and executing Oaxaca-Blinder wage decompositions on national microdata.

// ── RESEARCH INTERESTS ──
#cv-section("Research Interests")
#text(size: 9.1pt)[
  *Primary:* Empirical Labour Economics $dot$ Gender Wage Discrimination & Structural Cleavages $dot$ Informal & Platform Labour   *Policy & Governance:* Digital Public Infrastructure (DPI, e-Shram, DBT) $dot$ Social Protection Floors $dot$ BRICS Labour Regimes   *Methods:* Applied Micro-econometrics (Oaxaca-Blinder, DiD) $dot$ Survey Engineering & CAPI $dot$ Automated Stata HFC Quality Pipelines
]

// ── APPOINTMENTS ──
#cv-section("Research & Professional Appointments")

#cv-item(
  "Researcher & Core Contributor",
  "2024 -- Present",
  "India Labour Observatory & Digital Labour Tech",
  "New Delhi, India",
  [
    - Co-developed open-access public research infrastructure analyzing *1,148,634 individual records* from the official Periodic Labour Force Survey (PLFS) across 36 Indian States and Union Territories with survey design multipliers and variance bounds.
    - Co-authored the landmark study and visual story _"India's Labour Market in 2025: Structural Cleavages, Gender Gaps, and the Educated Youth Paradox"_, diagnosing the 39.1 pp gender participation wedge, graduate unemployment paradox (11.2%), and caste-stratified wage penalties.
    - Built the *36-State Capability Atlas* and curated the *48-table PLFS Statistical Compendium* covering wages, industry classification, informal enterprise dynamics, and social security coverage.
    - Contributed empirical analysis on platform work, algorithmic management, and gig worker regulation in the Global South for _Digital Labour Tech_ (#link("https://digitallabour.tech")[digitallabour.tech]).
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
    - Administered structured CAPI surveys via KoBoToolbox across geographically dispersed districts in Uttar Pradesh, managing data capture for 155+ respondents with gender-disaggregated modules on youth digital employment.
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

// ── PRIMARY FIELDWORK & SURVEY ENGINEERING ──
#cv-section("Primary Fieldwork & Survey Engineering Experience")

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    *Uttar Pradesh Youth Livelihoods (ICSSR, 2026)*     155+ structured CAPI interviews across multiple UP districts; youth digital skilling, platform livelihoods, and gender divides.     #v(2pt)
    *Delhi NCR Platform Workers (JNU, 2024--25)*     60 in-depth surveys of gig/platform workers; algorithmic dispatching, wage deductions, and working-hour distributions.     #v(2pt)
    *Munirka Urban Informal Workers (Delhi, 2018)*     35 structured interviews with informal workers (mess workers, security guards, domestic staff) assessing wage exploitation and living conditions.
  ],
  [
    *Kalahandi & Niyamgiri Hills (Odisha, 2018)*     Participatory rural appraisal & interviews with Dongaria Kondh tribal households; tenurial rights, bauxite mining resistance, and forest economies.     #v(2pt)
    *Kendrapara Women's SHGs (Odisha, 2016)*     Focus Group Discussions (FGDs) with women's micro-credit groups; agricultural credit linkages, bank linkage schemes, and debt cycles.     #v(2pt)
    *Khamarsahi Village Caste & Labour Study (Odisha, 2016)*     Field research on Scheduled Caste agricultural labourers, documenting wage discrimination, tied labour, and social exclusion.
  ]
)

// ── PUBLICATIONS & PAPERS ──
#cv-section("Publications, Working Papers & Public Datasets")

#cv-item(
  "India's Labour Market in 2025: Structural Cleavages, Gender Gaps, and the Educated Youth Paradox",
  "2026",
  "India Labour Observatory Research Series (with Abhinav Kumar)",
  "indialabourobservatory.com",
  [
    Comprehensive empirical analysis of the 2024--25 Periodic Labour Force Survey (1,148,634 observations). Details the 39.1 pp gender participation gap, the paradox of 11.2% graduate unemployment versus 0.3% uneducated unemployment, and structural segmentation by caste and religion.     #link("https://indialabourobservatory.com/stories/indias-labour-market-in-2025/")[View Interactive Story & Data] #h(8pt)|#h(8pt) #link("https://ananya-econ.github.io/assets/papers/indias_labour_market_2025.pdf")[Download Working Paper PDF]
  ]
)

#cv-item(
  "Periodic Labour Force Survey (PLFS) 2024--25 Harmonized Microdata Corpus",
  "2026",
  "India Labour Observatory Open Research Infrastructure (with Abhinav Kumar)",
  "Dataset Release",
  [
    Open-access harmonized unit-level microdata repository covering 1.15 million survey respondents across 36 States/UTs with survey design multipliers, sub-sample variance estimates, and automated cross-tabulation pipelines.     #link("https://indialabourobservatory.com/stories/plfs-microdata-report-2024-25/full-report/")[View 48-Table Compendium & Data Engine]
  ]
)

#cv-item(
  "Global Value Chains in Extractive Industries: Mining, Labour Precarity, and Value Capture in Odisha",
  "2026",
  "Working Paper / Writing Sample (Seminar Paper, CISLS, JNU --- Advised by Prof. Praveen Jha)",
  "Typeset in Typst",
  [
    Empirical political economy inquiry into transnational bauxite mining and alumina refining (Vedanta Limited) in Lanjigarh and Niyamgiri, Odisha. Draws on 35 semi-structured worker interviews, 5 FGDs, and Indian Bureau of Mines longitudinal data to analyze multi-tiered subcontracting, labour control regimes, and agrarian dispossession.     #link("https://ananya-econ.github.io/assets/papers/gvc_writing_sample.pdf")[Download Working Paper PDF]
  ]
)

#cv-item(
  "Gender-Based Wage Discrimination in India: An Oaxaca-Blinder Decomposition Analysis",
  "2019 / 2026",
  "M.A. Thesis & Empirical Working Note, CISLS, School of Social Sciences, JNU",
  "PLFS Microdata",
  [
    Econometric decomposition using Periodic Labour Force Survey unit-level data in Stata and Python. Quantifies explained (endowments) versus unexplained (discrimination coefficient) components of the gender wage gap across formal and informal sectors, controlling for occupation, education, industry, and geography.     #link("https://ananya-econ.github.io/assets/papers/gender_wage_gap_oaxaca_blinder.pdf")[Download Econometric Methods Note PDF]
  ]
)

#cv-item(
  "Caste System and Patterns of Discrimination in Rural Labour Markets",
  "2026",
  "Monograph / Empirical Working Paper",
  "Typeset in Typst",
  [
    Theoretical and empirical investigation linking neoclassical and statistical discrimination models (Becker, Arrow) to caste hierarchies in Indian agriculture, incorporating primary field interviews from Kendrapara, Odisha and JNU migrant workers.     #link("https://ananya-econ.github.io/assets/papers/caste_rural_labour_discrimination.pdf")[Download Working Paper PDF]
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

// ── ACADEMIC REFERENCES ──
#cv-section("Academic & Professional References")

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 14pt,
  [
    #block[
      #text(weight: "bold")[Dr. Dhanya M.B] #linebreak()
      #text(size: 8.3pt, fill: secondary-color)[
        Fellow & Faculty Coordinator #linebreak()
        V.V. Giri National Labour Institute #linebreak()
        Ministry of Labour & Employment #linebreak()
        Govt. of India, NOIDA #linebreak()
        #link("mailto:dhanyamb.vvgnli@gov.in")[dhanyamb.vvgnli\@gov.in]
      ]
    ]
  ],
  [
    #block[
      #text(weight: "bold")[Dr. Minaketan Behera] #linebreak()
      #text(size: 8.3pt, fill: secondary-color)[
        Associate Professor of Economics #linebreak()
        CISLS, School of Social Sciences #linebreak()
        Jawaharlal Nehru University #linebreak()
        New Delhi, India #linebreak()
        #link("mailto:minaketan@mail.jnu.ac.in")[minaketan\@mail.jnu.ac.in]
      ]
    ]
  ],
  [
    #block[
      #text(weight: "bold")[Dr. Adarsh Kumar, PhD] #linebreak()
      #text(size: 8.3pt, fill: secondary-color)[
        Research Affiliate & Fellow #linebreak()
        Friedrich Schiller University Jena #linebreak()
        Germany #linebreak()
        _Collaborator, Digital Labour Tech_ #linebreak()
        #link("mailto:adarsh.kumar@uni-jena.de")[adarsh.kumar\@uni-jena.de]
      ]
    ]
  ]
)
