#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.2cm, left: 2.3cm, right: 2.3cm),
  header: context [
    #if counter(page).get().first() > 1 [
      #set text(size: 8.5pt, fill: rgb("#78716c"))
      #grid(
        columns: (1fr, auto),
        [Ananya Pradhan --- Oaxaca-Blinder Wage Decomposition in India],
        [Empirical Econometric Note]
      )
      #v(2pt)
      #line(length: 100%, stroke: 0.4pt + rgb("#d6d3d1"))
    ]
  ],
  footer: context [
    #set text(size: 8.5pt, fill: rgb("#78716c"))
    #grid(
      columns: (1fr, auto),
      [Centre for Informal Sector and Labour Studies, JNU],
      [Page #counter(page).display("1 / 1", both: true)]
    )
  ]
)

#set text(
  font: ("Libertinus Serif", "Charter", "Times New Roman"),
  size: 10pt,
  fill: rgb("#1c1917"),
  spacing: 120%,
  lang: "en"
)

#set par(justify: true, leading: 0.68em)
#set heading(numbering: "1.1")

#let primary-color = rgb("#15325b")
#let secondary-color = rgb("#44403c")

// Masthead
#align(center)[
  #text(size: 8.8pt, weight: "bold", fill: primary-color, tracking: 1.5pt)[EMPIRICAL METHODS RESEARCH NOTE #h(6pt)|#h(6pt) APPLIED MICRO-ECONOMETRICS] \
  #v(8pt)
  #text(size: 19pt, weight: "bold", fill: primary-color)[
    Gender-Based Wage Discrimination in India
  ] \
  #v(3pt)
  #text(size: 12pt, style: "italic", fill: secondary-color)[
    An Oaxaca-Blinder Decomposition Analysis Using PLFS Microdata
  ] \
  #v(14pt)
  #text(size: 11pt, weight: "bold")[Ananya Pradhan] \
  #v(2pt)
  #text(size: 9pt, fill: secondary-color)[
    Centre for Informal Sector and Labour Studies (CISLS), School of Social Sciences \
    Jawaharlal Nehru University (JNU), New Delhi \
    Researcher & Core Contributor, India Labour Observatory (#link("https://indialabourobservatory.com")[indialabourobservatory.com]) \
    #link("mailto:pradhan.ananya1994@gmail.com")[pradhan.ananya1994\@gmail.com]
  ]
]

#v(10pt)

#block(
  fill: rgb("#f5f5f4"),
  inset: 12pt,
  radius: 3pt,
  stroke: 0.5pt + rgb("#e7e5e4"),
)[
  #text(weight: "bold", fill: primary-color)[Abstract]   #v(2pt)
  This empirical research note investigates the structural determinants of the gender wage gap in India using unit-level microdata from the Periodic Labour Force Survey (PLFS). Implementing the classical threefold and twofold Oaxaca-Blinder econometric decomposition techniques, this study separates the observed differential in log daily earnings into an *endowment effect* (explained by observable human capital and demographic characteristics) and a *coefficient effect* (unexplained wage penalty reflecting structural labour market discrimination and divergent market returns). The empirical findings reveal an aggregate gender wage gap of 0.397 log points (approx. 40%). Strikingly, the endowment component accounts for *-1.8%* of the total gap, while the unexplained coefficient component accounts for *112.5%*. This demonstrates that working women in India do not earn lower wages due to inferior human capital endowments; rather, positive educational selection among female workforce participants is overwhelmed by severe wage penalties, occupational segregation, and systemic discrimination.

  #v(4pt)
  #text(size: 8.8pt)[*Keywords:* Oaxaca-Blinder Decomposition, Gender Wage Gap, Labour Market Discrimination, PLFS Microdata, Applied Econometrics, India.]   #text(size: 8.8pt)[*JEL Classification:* J16, J31, J71, C21, O15.]
]

#v(12pt)

== Econometric Framework: The Oaxaca-Blinder Decomposition

The Oaxaca (1973) and Blinder (1973) decomposition is a foundational counterfactual technique in empirical labour economics designed to explain the mean outcome difference between two distinct demographic groups.

Let $ln(W_i)$ denote the natural logarithm of daily wage earnings for worker $i$. We estimate separate linear wage equations for male ($M$) and female ($F$) workers:

$ ln(W_M) = X_M ' beta_M + epsilon_M $
$ ln(W_F) = X_F ' beta_F + epsilon_F $

where $X$ is a vector of explanatory covariates including educational attainment, potential labour market experience (age and age squared), marital status, urban/rural residence, occupational category (NCO 2-digit classification), industry sector (NIC 2-digit classification), and state fixed effects.

Assuming $E(epsilon_M) = 0$ and $E(epsilon_F) = 0$, the mean difference in log wages between male and female workers, denoted $Delta$, is given by:

$ Delta = overline(ln(W_M)) - overline(ln(W_F)) = overline(X)_M ' hat(beta)_M - overline(X)_F ' hat(beta)_F $

Under the three-fold decomposition, this gap is partitioned into three distinct components:

$ Delta = underbrace((overline(X)_M - overline(X)_F)' hat(beta)_F, "Endowments" (E)) + underbrace(overline(X)_F' (hat(beta)_M - hat(beta)_F), "Coefficients" (C)) + underbrace((overline(X)_M - overline(X)_F)' (hat(beta)_M - hat(beta)_F), "Interaction" (I)) $

1. *Endowments Effect ($E$):* The portion of the wage differential attributable to differences in observable human capital and demographic characteristics, evaluated at the female wage structure.
2. *Coefficients Effect ($C$):* The portion of the differential attributable to differences in returns to identical observable characteristics. In the discrimination literature, this serves as the upper-bound measure of labour market discrimination, as identical qualifications yield systematically lower remuneration for female workers.
3. *Interaction Effect ($I$):* Accounts for the simultaneous coexistence of differences in endowments and coefficients between the two groups.

== Data and Variable Construction

The empirical estimation uses unit-level microdata from the Periodic Labour Force Survey (PLFS), conducted by the National Statistical Office (NSO), Ministry of Statistics & Programme Implementation (MoSPI). 

The estimation sample is restricted to individuals aged 15--65 who report positive earnings in regular salaried employment or casual wage labour under the Current Weekly Status (CWS) or Usual Principal and Subsidiary Status (UPSS). All estimates incorporate official survey sampling weights (multipliers). Log daily earnings are constructed from reported weekly earnings normalized by days worked.

#v(6pt)
#table(
  columns: (2fr, 1.2fr, 1.2fr, 1.5fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + primary-color) } else if y == 1 { (bottom: 0.5pt + rgb("#d6d3d1")) } else { none },
  fill: (x, y) => if y == 0 { rgb("#f1f5f9") } else { none },
  align: (left, right, right, center),
  table.header([*Decomposition Component*], [*Value (Log Points)*], [*Share of Gap (%)*], [*Classification*]),
  [*Total Gender Wage Gap*], [*0.3966*], [*100.0%*], [Aggregate Differential],
  [Endowments (Explained, $E$)], [-0.0073], [-1.83%], [Human Capital Assets],
  [Coefficients (Unexplained, $C$)], [0.4461], [112.48%], [Discrimination / Returns],
  [Interaction Term ($I$)], [-0.0422], [-10.65%], [Simultaneous Wedge],
  table.hline(stroke: 0.5pt + rgb("#e7e5e4")),
  [Age & Potential Experience], [-0.0219], [-5.52%], [Endowment Sub-component],
  [Educational Attainment], [-0.0223], [-5.63%], [Endowment Sub-component],
  [Marital Status], [-0.0035], [-0.88%], [Endowment Sub-component],
  [Urban / Rural Location], [-0.0085], [-2.13%], [Endowment Sub-component],
  [Occupational Category], [+0.0324], [+8.16%], [Endowment Sub-component],
  [State Fixed Effects], [+0.0166], [+4.18%], [Endowment Sub-component],
)
#v(6pt)

== Empirical Results and Discussion

#figure(
  image("../assets/images/gender_decomposition_2025.png", width: 90%),
  caption: [Oaxaca-Blinder Gender Wage Decomposition (PLFS Microdata Analysis). Source: Author's computation.]
)

The decomposition results yield several profound insights into the operation of Indian labour markets:

=== The Negative Endowment Paradox
The total raw wage gap is 0.3966 log points (corresponding to female daily wages being approximately 33% lower than male wages in absolute terms). Crucially, the aggregate *Endowments effect is negative ($-0.0073$ log points, or $-1.83\%$)*.

In standard human capital models, the explained component is expected to account for a substantial positive share of the wage gap (i.e., men earning more because they possess more schooling or work experience). In India, however, because female labour force participation is exceptionally low (around 40% overall and 28% in urban areas), women who do successfully enter regular wage employment represent a *positively selected sub-sample* possessing higher average educational qualifications than the broader male workforce. 

As shown in the sub-component breakdown:
- Education contributes *$-5.63\%$* to the gap.
- Age/Experience contributes *$-5.52\%$* to the gap.

If female workers were remunerated according to the male wage schedule for their observed human capital endowments, *the gender wage gap would actually close and reverse by 1.8%*.

=== The Unexplained Wage Penalty (112.5%)
The entire observed gender wage gap---and more---is driven by the *Coefficients effect ($0.4461$ log points, or $112.48\%$ of the total differential)*. This indicates that female workers face substantial wage penalties even after fully controlling for education, potential experience, marital status, industry, occupation, and geographical region. 

This unexplained differential captures:
1. *Pure Wage Discrimination:* Direct payment of lower piece rates or daily wages to women performing identical tasks in agriculture, construction, and informal manufacturing.
2. *Unobserved Occupational Crowding:* Within broad occupational classifications (NCO 2-digit), women are systematically confined to lower-tier, unremunerated sub-tasks without upward career ladders.
3. *Motherhood and Care Penalties:* Interruptions in continuous employment due to uncompensated domestic and care responsibilities, which employers penalize through lower wage offers.

=== Occupational and Regional Effects
The only endowment components that contribute positively to explaining the male wage advantage are *Occupation ($+8.16\%$)* and *State Geography ($+4.18\%$)*. This reflects horizontal and vertical segregation: male workers are disproportionately concentrated in higher-paying managerial, clerical, and technical roles, and in industrially advanced states with higher statutory minimum wage floors.

== Rural versus Urban Divergence

A comparative Oaxaca-Blinder decomposition across rural and urban sectors reveals that in rural areas, the gender gap is dominated by casual agricultural daily wage differentials, where women routinely receive 25--35% lower daily wages for field labour (weeding, harvesting). In urban areas, the gap is intensified by formal-sector glass ceilings and occupational segregation in private services.

== Conclusion and Policy Takeaways

The empirical evidence from PLFS microdata conclusively refutes the proposition that the Indian gender wage gap can be rectified solely through educational expansion. While female secondary and tertiary enrollment has expanded rapidly, working women face an unexplained wage penalty exceeding 112% of the gap.

Policy priorities must focus on:
- *Statutory Wage Transparency and Equal Remuneration Enforcement:* Strengthening inspection machinery under the Equal Remuneration Act / Code on Wages.
- *Formalization of Care Infrastructure:* Public provisioning of child-care centers (Anganwadi creches) to reduce interruptions in female labor supply.
- *Universal Social Security Registration:* Enforcing aggregator onboarding and social security contributions through e-Shram and digital welfare architecture.

#v(12pt)
#line(length: 100%, stroke: 0.5pt + rgb("#d6d3d1"))
#v(4pt)
#text(size: 8.5pt, fill: secondary-color)[
  *Suggested Citation:* Pradhan, A. (2026). _Gender-Based Wage Discrimination in India: An Oaxaca-Blinder Decomposition Analysis Using PLFS Microdata_. Applied Micro-Econometrics Research Series, Working Note No. 02/2026, Centre for Informal Sector and Labour Studies, Jawaharlal Nehru University, New Delhi.
]
