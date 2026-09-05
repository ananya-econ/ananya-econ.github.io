#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.2cm, left: 2.3cm, right: 2.3cm),
  header: context [
    #if counter(page).get().first() > 1 [
      #set text(size: 8.5pt, fill: rgb("#78716c"))
      #grid(
        columns: (1fr, auto),
        [Kumar & Pradhan --- India's Labour Market in 2025],
        [India Labour Observatory]
      )
      #v(2pt)
      #line(length: 100%, stroke: 0.4pt + rgb("#d6d3d1"))
    ]
  ],
  footer: context [
    #set text(size: 8.5pt, fill: rgb("#78716c"))
    #grid(
      columns: (1fr, auto),
      [#link("https://indialabourobservatory.com")[indialabourobservatory.com]],
      [Page #counter(page).display("1 / 1", both: true)]
    )
  ]
)

#set text(
  font: ("Libertinus Serif", "Charter", "Times New Roman"),
  size: 10.2pt,
  fill: rgb("#1c1917"),
  spacing: 120%,
  lang: "en"
)

#set par(justify: true, leading: 0.7em)
#set heading(numbering: "1.1")

#let primary-color = rgb("#15325b")
#let secondary-color = rgb("#44403c")
#let alert-color = rgb("#991b1b")

// Document Title & Masthead
#align(center)[
  #text(size: 8.8pt, weight: "bold", fill: primary-color, tracking: 1.5pt)[INDIA LABOUR OBSERVATORY RESEARCH SERIES #h(6pt)|#h(6pt) WORKING PAPER NO. 01/2026] \
  #v(8pt)
  #text(size: 20pt, weight: "bold", fill: primary-color)[
    India's Labour Market in 2025
  ] \
  #v(3pt)
  #text(size: 13.5pt, style: "italic", fill: secondary-color)[
    Structural Cleavages, Gender Gaps, and the Educated Youth Paradox
  ] \
  #v(14pt)
  #text(size: 11pt, weight: "bold")[Abhinav Kumar] #h(10pt) #text(size: 11pt, weight: "bold")[Ananya Pradhan] \
  #v(2pt)
  #text(size: 9pt, fill: secondary-color)[
    India Labour Observatory (#link("https://indialabourobservatory.com")[indialabourobservatory.com]) \
    V.V. Giri National Labour Institute (Ministry of Labour & Employment) \
    Center for Informal Sector and Labour Studies (CISLS), Jawaharlal Nehru University
  ] \
  #v(4pt)
  #text(size: 8.8pt, fill: rgb("#78716c"))[Published: January 2026 #h(8pt)|#h(8pt) Based on PLFS CY2025 Unit-Level Microdata (1,148,634 Observations)]
]

#v(10pt)

#block(
  fill: rgb("#f5f5f4"),
  inset: 12pt,
  radius: 3pt,
  stroke: 0.5pt + rgb("#e7e5e4"),
)[
  #text(weight: "bold", fill: primary-color)[Abstract]   #v(2pt)
  This study provides a comprehensive empirical examination of India's contemporary labour market utilizing unit-level microdata from the Periodic Labour Force Survey (PLFS), covering 1,148,634 individuals across all 36 States and Union Territories. While official headline figures report an aggregate Labour Force Participation Rate (LFPR) of 59.3% and a historically modest Unemployment Rate (UR) of 3.1%, our disaggregated analysis reveals deep structural cleavages beneath these aggregate averages. First, we identify a persistent *39.1 percentage point gender participation gap* (Male LFPR: 79.1%, Female LFPR: 40.0%), which widens to 47.9 pp in urban areas where female participation stagnates at 27.7%. Second, we document a severe *educated youth paradox*: whereas uneducated workers register virtually zero unemployment (0.3%), college graduates face an unemployment rate of *11.2%*, rising to *17.4% for educated young women*. Third, our analysis of employment quality shows that 56.1% of the workforce remains in self-employment (predominantly unpaid family work and own-account survivalist activities) and 20.2% in casual labour, with regular salaried employment accounting for just 23.6% of jobs. We conclude that headline employment indicators in developing economies must be decoupled from assumptions of economic security, and argue for targeted social protection floors and public employment architectures.

  #v(4pt)
  #text(size: 8.8pt)[*Keywords:* Labour Force Participation, Gender Wage Gap, Educated Unemployment, Caste Disparities, Periodic Labour Force Survey, India, Social Protection Floor.]   #text(size: 8.8pt)[*JEL Classification:* J16, J21, J31, J46, J71, O17.]
]

#v(12pt)

== Introduction and the Problem of Headline Numbers

National employment discourse in India and international policy discussions often fixate on a single indicator: the headline unemployment rate. In advanced industrial economies with universal social security safety nets, the unemployment rate provides a meaningful barometer of macroeconomic slack. However, in a developing economy characterized by pervasive informality, low asset ownership, and the absence of universal unemployment insurance, the headline unemployment rate obscures far more than it reveals.

Under the Usual Principal and Subsidiary Status (UPSS) criteria adopted by the National Statistical Office (NSO) and the Ministry of Statistics and Programme Implementation (MoSPI), any individual who performed economic work for at least 30 days during the reference year is classified as employed. Consequently, individuals engaged in low-productivity distress agriculture, survivalist street vending, or unpaid household enterprise assistance are enumerated as fully employed.

In 2025, India released unit-level microdata for its annual Periodic Labour Force Survey (PLFS), encompassing *1,148,634 respondents*. Analyzed with full survey design multipliers and sub-sample variance bounds, the headline indicators show an aggregate LFPR of *59.3%*, a Worker Population Ratio (WPR) of *57.4%*, and an Unemployment Rate of *3.1%*. Yet beneath this apparent stability lies an economy of stark regional, gender, educational, and caste divergences.

== The Gender Divide: Participation Wedges and Urban Withdrawal

The most profound structural fissure in India's labour economy is the gender divide. While male labour force participation stands at *79.1%*, female participation remains suppressed at *40.0%*, generating a national *gender participation wedge of 39.1 percentage points*.

#v(6pt)
#table(
  columns: (2fr, 1fr, 1fr, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + primary-color) } else if y == 1 { (bottom: 0.5pt + rgb("#d6d3d1")) } else { none },
  fill: (x, y) => if y == 0 { rgb("#f1f5f9") } else { none },
  align: (left, center, center, center),
  table.header([*Demographic Segment*], [*LFPR (%)*], [*WPR (%)*], [*Unemployment Rate (%)*]),
  [All-India Total], [59.3], [57.4], [3.1],
  [Male Total], [79.1], [76.7], [3.0],
  [Female Total], [40.0], [38.7], [3.2],
  [Rural Female], [45.9], [44.8], [2.4],
  [Urban Female], [27.7], [25.9], [6.4],
  [Urban Male], [75.6], [72.2], [4.4],
)
#v(6pt)

Crucially, rural and urban women exhibit sharply diverging trajectories. Rural women participate at *45.9%*, driven primarily by agricultural self-employment and unpaid family labour during peak sowing and harvesting seasons. In contrast, urban female participation drops to *27.7%*, accompanied by an unemployment rate of *6.4%*---the highest across any major gender-sector subcategory. This urban withdrawal reflects a complex convergence of caregiving responsibilities, domestic work burdens, transport and safety barriers, and employer discrimination in formal hiring.

== The Educated Youth Paradox

Classical human capital theory posits that higher educational attainment enhances labour productivity, reduces job search friction, and decreases the incidence of unemployment. In the Indian labour market, empirical data reveals the precise inverse: *higher educational attainment is positively correlated with higher rates of unemployment*.

- *Illiterate workers:* Register an unemployment rate of just *0.3%*. Because they lack wealth and familial safety nets, they are compelled to accept any available employment, regardless of wage or conditions.
- *Primary & Secondary educated:* Register unemployment rates between *1.5% and 4.2%*.
- *College Graduates (Higher Education):* Face an aggregate unemployment rate of *11.2%*---over 3.6 times the national average.
- *Female College Graduates:* Face a staggering unemployment rate of *17.4%*, almost double the rate for male graduates (8.9%).

This paradox reflects a deep mismatch between the rapid credentialization of Indian youth and the structural incapacity of the economy to generate formal, high-productivity white-collar jobs. Educated youth possess the familial resources to engage in extended job search queues, yet the economy overwhelmingly generates low-tier informal and platform services.

== Structural Position: Caste and Religious Disparities

The labour market does not merely allocate workers to jobs; it reproduces social hierarchies. Our microdata decomposition reveals striking disparities across social groups:

1. *Labour Force Participation by Caste:* Scheduled Tribe (ST) workers exhibit the highest participation rate at *73.1%*, followed by Scheduled Caste (SC) workers (*61.8%*), Other Backward Classes (OBC, *58.2%*), and "Others" / General Category (*53.9%*).
2. *Employment Quality & Casual Labour:* Over *34.5% of Scheduled Caste workers* are trapped in casual wage labour, compared to *26.9% of ST workers* and only *10.4% of General Category workers*.
3. *Access to Regular Salaried Work:* General Category workers enjoy the highest share of regular salaried jobs (*32.2%*), whereas ST workers obtain regular salaried employment in only *13.4%* of cases.
4. *Gender and Caste Interaction:* The gender participation gap widens from *21.2 pp among ST communities* to *37.7 pp for SCs*, *39.4 pp for OBCs*, and reaches a peak of *45.9 pp among Upper-Caste / General households*.

Religious cross-tabulations similarly demonstrate that Christian women register the highest workforce participation (*49.5%*), whereas Muslim women record the lowest (*27.8%* nationally, falling to *19.2% in urban centers*).

== Work Quality and the Myth of Formalisation

A key contribution of the India Labour Observatory is disaggregating the nature of Indian employment:
- *56.1% of all Indian workers are self-employed*, of which a large share are unpaid family helpers or own-account workers without capital assets.
- *20.2% are casual daily-wage labourers* with zero employment contracts or leave entitlements.
- *Only 23.6% possess regular wage or salaried employment*. Within regular salaried workers, over *54% lack any written job contract*, and *48% have no social security benefits* (pension, healthcare, or PF).

== Conclusion and Policy Implications

Our empirical findings demonstrate that India's employment challenge is not merely one of job volume, but of job quality, wage security, and structural inclusion. Policy interventions must move beyond aggregate growth figures to target:
1. *Universal Social Security Floors:* Expanding statutory social protection (pensions, maternity benefits, disability insurance) across unorganised and gig workers via Digital Public Infrastructure (e-Shram aggregator integration).
2. *Public Investment in the Care Economy:* Providing affordable child and elder care infrastructure to unlock urban female workforce participation.
3. *Youth Skilling Alignment:* Bridging the gap between tertiary educational credentials and practical industrial demand.

#v(10pt)
#line(length: 100%, stroke: 0.5pt + rgb("#d6d3d1"))
#v(4pt)
#text(size: 8.5pt, fill: secondary-color)[
  *Suggested Citation:* Kumar, A., & Pradhan, A. (2026). _India's Labour Market in 2025: Structural Cleavages, Gender Gaps, and the Educated Youth Paradox_. India Labour Observatory Research Series, Working Paper No. 01/2026. Available at: #link("https://indialabourobservatory.com/stories/indias-labour-market-in-2025/")[indialabourobservatory.com/stories/indias-labour-market-in-2025/]
]
