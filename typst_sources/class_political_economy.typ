#set document(
  title: "Theory of Class and Political Economy: Reassessing Structural Formations and Labour Processes in Developing Economies",
  author: "Ananya Pradhan",
  date: auto
)

#set page(
  paper: "a4",
  margin: (top: 2.4cm, bottom: 2.4cm, left: 2.6cm, right: 2.6cm),
  header: context {
    if counter(page).get().first() > 1 [
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        text(size: 8.5pt, fill: rgb("#6b7280"), font: "Libertinus Serif", style: "italic")[Ananya Pradhan · Theory of Class & Political Economy],
        text(size: 8pt, fill: rgb("#6b7280"), font: "Menlo")[CISLS / CIPOD · JNU]
      )
      #v(0.15em)
      #line(length: 100%, stroke: 0.4pt + rgb("#d1d5db"))
    ]
  },
  footer: context {
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 8pt, fill: rgb("#9ca3af"), font: "Libertinus Serif")[Working Paper · Political Economy Series],
      text(size: 8pt, fill: rgb("#4b5563"), font: "Menlo")[
        #counter(page).display("1 of 1", both: true)
      ]
    )
  }
)

#set text(
  font: "Libertinus Serif",
  size: 10.5pt,
  fill: rgb("#1c1917"),
  lang: "en"
)

#set par(
  justify: true,
  leading: 0.68em,
  first-line-indent: 1.4em
)

// --- TITLE BLOCK ---
#align(center)[
  #v(0.2cm)
  #text(size: 8pt, font: "Menlo", tracking: 0.14em, fill: rgb("#4b5563"))[
    JAWAHARLAL NEHRU UNIVERSITY · NEW DELHI
  ]
  
  #v(0.15cm)
  #text(size: 8.5pt, font: "Libertinus Serif", style: "italic", fill: rgb("#6b7280"))[
    Centre for Informal Sector and Labour Studies (CISLS) & Centre for International Politics, Organization and Disarmament (CIPOD)
  ]
  
  #v(0.4cm)
  #text(size: 18pt, weight: "bold", font: "Libertinus Serif", fill: rgb("#111827"))[
    Theory of Class and Political Economy
  ]
  
  #v(0.15cm)
  #text(size: 11pt, font: "Libertinus Serif", style: "italic", fill: rgb("#374151"))[
    Reassessing Structural Formations, Transnational Capital, and Labour Processes in Developing Economies
  ]
  
  #v(0.35cm)
  #line(length: 30%, stroke: 0.75pt + rgb("#9ca3af"))
  #v(0.25cm)
  
  #text(size: 11pt, weight: "bold", fill: rgb("#111827"))[Ananya Pradhan]
  
  #v(0.08cm)
  #text(size: 8.8pt, fill: rgb("#4b5563"))[
    Centre for Informal Sector and Labour Studies, School of Social Sciences \
    Jawaharlal Nehru University, New Delhi \
    Email: #link("mailto:pradhan.ananya1994@gmail.com")[pradhan.ananya1994\@gmail.com]
  ]
  
  #v(0.15cm)
  #text(size: 8.2pt, fill: rgb("#6b7280"), style: "italic")[
    Course: Political Economy (IA-416) · Submitted to: Prof. Moushumi Basu
  ]
  
  #v(0.35cm)
]

// --- ABSTRACT BLOCK ---
#align(center)[
  #block(
    width: 95%,
    fill: rgb("#f9fafb"),
    inset: (x: 16pt, y: 12pt),
    stroke: (left: 2.5pt + rgb("#1e3a8a"), rest: 0.5pt + rgb("#e5e7eb")),
    radius: (right: 3pt)
  )[
    #align(left)[
      #text(weight: "bold", size: 8.5pt, font: "Menlo", fill: rgb("#1e3a8a"))[ABSTRACT]
      
      #v(0.15cm)
      #set text(size: 8.8pt, fill: rgb("#374151"))
      #set par(justify: true, first-line-indent: 0pt, leading: 0.62em)
      This paper examines the theoretical foundations and contemporary mutations of the "theory of class" within Marxist and heterodox political economy. Tracing the trajectory of class differentiation from primitive accumulation and the dissolution of primeval agrarian communities to contemporary financialised globalisation, the study interrogates how the relational conception of class operates under neoliberal capitalism. We demonstrate that the contemporary global order is governed by an unprecedented concentration of capital—exemplified by an international financial oligarchy and a Transnational Capitalist Class (TCC) coordinating multi-tiered Global Value Chains (GVCs) and Global Production Networks (GPNs). Under the discipline of mobile global finance, the retreat of state-mediated social protection and agrarian support has catalysed massive structural informalisation across developing nations. Rather than transitioning surplus agricultural labour into secure, formal industrial employment, contemporary accumulation systematically produces a vulnerable, fragmented labour force—frequently conceptualised as the "precariat"—characterised by wage suppression, absence of collective bargaining, and occupational hazards. Finally, the paper reassesses the intermediary position of the modern managerial and intellectual "middle class," concluding that the fundamental structural antagonism between capital and labour persists with renewed virulence in the 21st-century Global South.
      
      #v(0.25cm)
      #text(weight: "bold", size: 8.2pt, fill: rgb("#111827"))[JEL Classification: ]
      #text(size: 8.2pt, font: "Menlo", fill: rgb("#4b5563"))[B51, P16, F23, J46, J81, Z13] \
      #text(weight: "bold", size: 8.2pt, fill: rgb("#111827"))[Keywords: ]
      #text(size: 8.2pt, style: "italic", fill: rgb("#4b5563"))[Marxist Political Economy, Relational Class, Primitive Accumulation, Transnational Capital, Global Value Chains, Informalisation, Precariat, Developing Economies]
    ]
  ]
]

#v(0.3cm)

// --- SECTION STYLING ---
#show heading.where(level: 1): it => block(
  above: 0.9cm, below: 0.35cm
)[
  #text(size: 12pt, weight: "bold", fill: rgb("#111827"), font: "Libertinus Serif")[
    #counter(heading).display() #h(0.35em) #it.body
  ]
  #v(0.08cm)
  #line(length: 100%, stroke: 0.5pt + rgb("#e5e7eb"))
]

#show heading.where(level: 2): it => block(
  above: 0.7cm, below: 0.25cm
)[
  #text(size: 10.5pt, weight: "bold", fill: rgb("#1f2937"), font: "Libertinus Serif")[
    #counter(heading).display() #h(0.3em) #it.body
  ]
]

#set heading(numbering: "1.1")

= Introduction: The Relational Conception of Class

Karl Marx constitutes the primary architect of the structural "theory of class," alongside classical sociological formulations advanced by Max Weber and Émile Durkheim. However, Marx's analytical formulation diverges categorically from Weberian distributional stratification or Durkheimian functional integration. The Marxist conception of class is fundamentally *relational* and *antagonistic* (Wright, 2009). Rather than categorising individuals according to gradational gradations of income, occupational prestige, or consumption status, classical Marxist political economy divides capitalist society into structural groups defined strictly by their relation to the *means of production* (Marx, 1867/2018).

In a capitalist social formation, this structural polarity separates society into two primary contending classes:
1. *The Bourgeoisie:* The class of modern capitalists who monopolise ownership of the social means of production and purchase wage labour to extract surplus value.
2. *The Proletariat:* The class of modern wage labourers who, possessing no means of production of their own, are legally free yet structurally compelled to sell their labour power as a commodity in order to subsist.

The decisive determinant of this structural divide is *private property* and *ownership* over the conditions of labour. This social organisation did not emerge spontaneously or ex nihilo; rather, it is the culminated product of an extended historical process. With the progressive dissolution of primeval communal modes of subsistence, society began differentiating into distinct, antagonistic classes (Morgan, 1877; Engels, 1884). As Marx and Engels famously postulated in the *Manifesto of the Communist Party* (1848):

#align(center)[
  #block(
    width: 90%,
    inset: (left: 12pt, y: 3pt),
    stroke: (left: 2pt + rgb("#9ca3af"))
  )[
    #set text(size: 9.2pt, style: "italic", fill: rgb("#374151"))
    "The history of all hitherto existing society is the history of class struggles. Freeman and slave, patrician and plebeian, lord and serf, guild-master and journeyman, in a word, oppressor and oppressed, stood in constant opposition to one another, carried on an uninterrupted, now hidden, now open fight..." (Marx & Engels, 1848/1888, p. 9).
  ]
]

The historical enclosure movement in England exemplifies this structural separation, wherein common lands were forcibly converted into private property, expropriating the rural peasantry and creating a detached, propertyless urban proletariat. However, under contemporary globalisation, the concrete institutional forms, spatial configurations, and reproductive circuits of these classes have undergone profound structural restructuring. 

This paper investigates the reality of class and the mutations in its meaning within the contemporary global economy. Utilising Marxist political economy as an analytical framework, we evaluate the production relations, financial circuits, and labour control regimes governing the contemporary Global South.

= Historical Origin and Modes of Production

While neoclassical economics employs "capitalism" in a narrowly technical sense—identifying it with market exchange, price mechanisms, or physical capital equipment—Marxist political economy approaches capitalism as a distinct historical mode of production rooted in specific social relations of exploitation. 

The emergence of hierarchical social orders across human history is neither biological nor accidental; social structures are the direct consequence of historically contingent transformations in the material mode of production. As Engels (1884) demonstrated in *The Origin of the Family, Private Property and the State*, the historical advent of sedentary agriculture and animal domestication generated material output exceeding the bare subsistence requirements of pre-class hunter-gatherer bands. This generation of an *economic surplus* created the material precondition for institutionalised accumulation and class stratification:

#align(center)[
  #block(
    width: 92%,
    fill: rgb("#f8fafc"),
    inset: (x: 14pt, y: 9pt),
    stroke: 0.5pt + rgb("#cbd5e1"),
    radius: 3pt
  )[
    #align(center)[
      #text(size: 9pt, weight: "bold", fill: rgb("#0f172a"))[The Historical Dialectic of Class Formation] \
      #v(0.12cm)
      #text(size: 8.5pt, font: "Libertinus Serif", fill: rgb("#334155"))[
        *Economic Surplus* #h(0.4em) $arrow.r$ #h(0.4em) *Private Accumulation* #h(0.4em) $arrow.r$ #h(0.4em) *Origin of Private Property* #h(0.4em) $arrow.r$ #h(0.4em) *Class Stratification*
      ]
    ]
  ]
]

The appropriation of surplus by an emerging elite produced systemic inequality, which crystallized into institutional private property. Control over private property enabled dominant strata to command the sphere of production, reducing subordinate populations to dependent labour. 

Subsequent Marxist historiography retraces this dialectic across historical epochs. Perry Anderson (1974) documented how the crisis of the slave-based mode of production in classical Antiquity laid the institutional foundation for the feudal mode of production across medieval Europe, where feudal lords exercised extra-economic coercion over bonded serfs tied to the land. Subsequently, the internal contradictions and agrarian crises of feudalism in early modern Europe catalyzed the transition to capitalism (Hilton, 1976; Dobb, 1946). 

Consequently, the Marxist paradigm delineates classes across distinct historical *modes of production*:
- *Ancient / Slave Mode:* Masters versus enslaved labourers.
- *Feudal Mode:* Feudal nobility / landowning lords versus bonded serfs and unfree tenants.
- *Capitalist Mode:* Industrial and financial capitalists versus propertyless wage labourers.

In each epoch, control over the conditions of production was wrested through protracted historical mechanisms of *primitive accumulation* (*ursprüngliche Akkumulation*)—the violent separation of producers from their independent means of production and subsistence.

= Class in the Contemporary Era: Financialisation and Monopolisation

Contemporary capitalism differs fundamentally in its operational mechanisms, accumulation strategies, and regulatory architecture from nineteenth-century competitive industrial capitalism. While free market competition and cross-border commercial exchange characterized early capitalism, competitive dynamics inherently generate concentration and centralisation of capital.

By the early twentieth century, capitalism transitioned into a qualitatively distinct monopoly phase. V. I. Lenin (1917/1999) characterized this epoch as *Imperialism: The Highest Stage of Capitalism*. Lenin demonstrated that the extreme centralisation of industrial production merged with banking capital to forge a new economic power: *finance capital*, commanded by a narrow financial oligarchy. Competition among rival imperial nation-states for exclusive resource enclaves, colonial captive markets, and territorial spheres of influence culminated in inter-imperialist warfare.

However, as political economists like Prabhat Patnaik (2010) observe, contemporary finance capital exhibits crucial differences from the national finance capital of Lenin's epoch:

#figure(
  caption: [Structural Comparison of Finance Capital Across Historical Epochs],
  supplement: [Table],
  block(
    breakable: false,
    table(
      columns: (1.1fr, 1.3fr, 1.4fr),
      fill: (col, row) => if row == 0 { rgb("#f1f5f9") } else if calc.even(row) { rgb("#f8fafc") } else { none },
      stroke: 0.4pt + rgb("#cbd5e1"),
      inset: 6pt,
      align: (left, left, left),
      table.header(
        [*Dimension*],
        [*Lenin's Era (Early 20th C.)*],
        [*Contemporary Globalisation (21st C.)*]
      ),
      [Spatial Orientation], [Nationally based, state-aligned], [Globalised, transnational mobility],
      [Inter-Capitalist Dynamics], [Rivalry among distinct national blocs], [Unified hegemony of international finance],
      [Operational Terrain], [Direct colonial territorial annexation], [Market discipline, structural adjustment, GVCs],
      [State Relationship], [State acts as patron of national capital], [Rollback of sovereign state economic autonomy]
    )
  )
)

Contemporary finance capital is *international* and hyper-mobile. Rather than being tied to the territorial ambitions of a specific imperial nation, it flows fluidly across global financial circuits, seeking short-term speculative yields and compelling sovereign governments to enforce austerity, fiscal discipline, and investor-friendly deregulation. 

Operating this global architecture requires an extensive apparatus of institutional legitimacy and technical governance. As Patnaik (2010) highlights, the global financial oligarchy commands a vast international cadre of spokespersons, corporate media conglomerates, technocrats, legal architects, and economists. International financial institutions (IFIs)—principally the International Monetary Fund (IMF) and the World Bank—serve as critical institutional anchors enforcing the hegemony of international finance across the developing world (Chimni, 1999, 2017). Through conditional structural adjustment programmes, bilateral investment treaties, and intellectual property regimes (TRIPS), global financial capital undermines national regulatory autonomy, forcing the privatisation of public assets and the commodification of essential social services.

= The Transnational Capitalist Class, GVCs, and Dispossession

This integrated regime of global finance has nurtured an identifiable *Transnational Capitalist Class* (TCC) operating on neoliberal principles. Under neoliberal orthodoxy, the deliberate curtailment of state intervention in domestic demand generation, agricultural price stabilization, and subsidized public procurement creates fertile ground for multinational corporations (MNCs) to accumulate through *accumulation by dispossession* (Harvey, 2007).

Multinational conglomerates coordinate global production through vertical and horizontal integration, forming multi-tiered *Global Production Networks (GPNs)* and *Global Value Chains (GVCs)*:

#align(center)[
  #block(
    width: 92%,
    fill: rgb("#fefce8"),
    inset: (x: 14pt, y: 10pt),
    stroke: 0.5pt + rgb("#ca8a04"),
    radius: 3pt
  )[
    #align(left)[
      #text(weight: "bold", size: 9pt, fill: rgb("#854d0e"))[Corporate Concentration in Global Agri-Food Systems] \
      #v(0.08cm)
      #set text(size: 8.6pt, fill: rgb("#713f12"))
      An Oxfam (2016) investigation (*Behind the Brands*) documented that just ten multinational food and beverage conglomerates—Associated British Foods (ABF), Coca-Cola, Danone, General Mills, Kellogg's, Mars, Mondelēz International, Nestlé, PepsiCo, and Unilever—collectively generate revenues of more than \$1.1 billion per day, commanding virtually all ubiquitous commercial consumer brands worldwide.
    ]
  ]
]

Furthermore, the concentration of global wealth has reached staggering proportions. Of the world's top 100 economic entities by revenue, 61 are multinational corporations, outstripping national governments (World Bank, 2015). Longitudinal assessments of global wealth by the World Bank (2018) demonstrate that while total global wealth expanded by 66% between 1995 and 2014 (from \$690 trillion to \$1,143 trillion in constant 2014 USD), per-capita wealth in high-income OECD economies was *52 times greater* than in low-income developing nations.

In the Global South, corporate retail behemoths and agribusiness giants displace petty commodity traders and tenant farmers, inducing severe agrarian distress, land dispossession, and distress-induced rural-to-urban migration. The privatisation of essential public goods—healthcare, tertiary education, water, and electricity—further escalates the cost of social reproduction for working households.

= Transformation of the Working Class: Informalisation and the "Precariat"

These macro-structural processes have profoundly destabilised the traditional working class. In developing economies such as India, the proliferation of global corporate investments has conspicuously failed to generate proportionate formal employment. Instead, capital-intensive technologies and structural unbundling have catalyzed a massive expansion of *informal labour*.

As Mark Anner (2015) documents, transnational lead firms enforce hyper-competitive cost pressures down multi-tiered subcontracting hierarchies. Subordinate local supplier firms, operating on razor-thin margins in the Global South, depress labour costs by avoiding statutory social security contributions, suppressing trade unionisation, and dividing the workforce into precarious contractual tiers.

#align(center)[
  #block(
    width: 92%,
    inset: (x: 14pt, y: 9pt),
    stroke: (left: 2.5pt + rgb("#b91c1c"), rest: 0.5pt + rgb("#e5e7eb")),
    fill: rgb("#fff5f5"),
    radius: (right: 3pt)
  )[
    #align(left)[
      #text(weight: "bold", size: 8.8pt, font: "Menlo", fill: rgb("#b91c1c"))[THE REPRODUCTION OF PRECARITY] \
      #v(0.08cm)
      #set text(size: 8.8pt, fill: rgb("#374151"))
      Scholars such as Guy Standing (2011, 2014) argue that globalised neoliberal production has produced a distinct socio-economic grouping: the *Precariat* (the precarious proletariat). Defined by chronic job insecurity, lack of occupational identity, absence of employment-based safety nets, and systemic vulnerability to economic shocks, the precariat reflects the severe erosion of the post-war capital-labour compromise.
    ]
  ]
]

Whether the precariat constitutes a novel, autonomous class-in-itself or represents the contemporary, hyper-fragmented manifestation of the informal proletariat remains a vigorously debated question in contemporary political economy. What is undeniable is that *informalisation* is not an archaic, residual remnant of pre-capitalist traditionalism destined to vanish with economic modernization; rather, it is an actively reproduced, organic feature of global capitalism that strips workers of collective bargaining power and transfers systemic market risks directly onto individual labourers.

= The Intermediate Strata: The New Middle Class in the Neoliberal Division of Labour

Classical Marxist analysis recognised that capitalist society contains intermediate social layers that complicate the binary Bourgeoisie-Proletariat antagonism. Karl Kautsky (1910) in his exposition of the *Erfurt Program* identified the classical "old middle class" (*petite bourgeoisie*) as independent small producers, self-employed artisans, shopkeepers, and peasant farmers. 

Under contemporary capitalism, this traditional intermediate stratum has been joined by a distinct *new middle class* (Poulantzas & Fernbach, 1975; Wright, 2009). This modern strata comprises:
- Corporate managers, operational executives, and supervisors who exercise delegated authority over the labor process.
- Salaried technocrats, financial analysts, corporate lawyers, IT professionals, and policy consultants.
- Academics, journalists, and media intellectuals charged with ideological reproduction.

This group occupies what Erik Olin Wright (2009) terms *contradictory class locations*. While they are wage earners who do not own the physical means of production, they possess substantial skills-based human capital, command delegated decision-making power, and participate in the appropriation of surplus value through performance bonuses, stock options, and high managerial remuneration. 

Critics of the neoliberal order emphasize that this professional-managerial buffer functions to insulate the transnational capitalist class from direct working-class confrontation, preventing the formation of broad-based political solidarity between intermediate white-collar employees and informal wage workers.

= Conclusion: The Persistence of Capital-Labour Antagonism

From the food we consume and garments we wear to mobile telecommunications, digital applications, and mineral extraction, the commodities that populate daily life are produced through sprawling Global Value Chains controlled by transnational capital. At the opposite pole of these commodity networks stand millions of informal workers—construction labourers, gig delivery couriers, garment sweatshop workers, agricultural casual labourers, and domestic workers—who possess nothing to sell but their capacity to work.

The institutional transformations of the twenty-first century—monopoly financialisation, supply chain subcontracting, state rollback, and structural informalisation—have not rendered the category of "class" obsolete. Rather, they have heightened the structural antagonism between capital and labour. In the Global South, the central challenge for progressive political economy remains deciphering how fragmented, informalised, and precarious working-class fractions can build collective counter-hegemonic power to challenge transnational capital in the contemporary era.

#v(0.4cm)

// --- REFERENCES ---
#line(length: 100%, stroke: 0.5pt + rgb("#e5e7eb"))
#v(0.15cm)

#text(size: 11pt, weight: "bold", font: "Libertinus Serif", fill: rgb("#111827"))[References]

#v(0.2cm)

#set text(size: 8.2pt, fill: rgb("#374151"))
#set par(justify: true, first-line-indent: -1.4em, hanging-indent: 1.4em, leading: 0.52em)

#block(spacing: 0.35cm)[
  Anner, M. (2015). Labor control regimes and worker resistance in global supply chains. *Labor History*, 56(3), 292–307.

  Anderson, P. (1974). *Passages from Antiquity to Feudalism*. London: New Left Books.

  Chimni, B. S. (1999). Marxism and international law: A contemporary analysis. *Economic and Political Weekly*, 34(6), 337–349.

  Chimni, B. S. (2017). International institutions today: An imperial global state in the making. In *Globalization and International Organizations* (pp. 41–78). London: Routledge.

  Dobb, M. (1946). *Studies in the Development of Capitalism*. London: Routledge & Kegan Paul.

  Engels, F. (1884/1972). *The Origin of the Family, Private Property and the State*. New York: International Publishers.

  Harvey, D. (2007). *A Brief History of Neoliberalism*. Oxford: Oxford University Press.

  Hilton, R. (Ed.). (1976). *The Transition from Feudalism to Capitalism*. London: New Left Books.

  Kautsky, K. (1910). *The Class Struggle (Erfurt Program)*. Chicago: Charles H. Kerr & Co.

  Lenin, V. I. (1917/1999). *Imperialism: The Highest Stage of Capitalism*. Sydney: Resistance Books.

  Marx, K., & Engels, F. (1848/1888). *Manifesto of the Communist Party*. (Authorized English trans. ed. by F. Engels). London: William Reeves.

  Marx, K. (1867/2018). *Capital: A Critique of Political Economy (Volume I)*. (Ben Fowkes, Trans.). London: Penguin Classics.

  Morgan, L. H. (1877). *Ancient Society: Researches in the Lines of Human Progress from Savagery through Barbarism to Civilization*. New York: Henry Holt and Company.

  Oxfam. (2016). *Behind the Brands: Food Justice and the "Big 10" Food and Beverage Companies*. Oxfam Briefing Paper. Oxford: Oxfam International.

  Patnaik, P. (2010). Notes on contemporary imperialism. *Monthly Review*, 62(7), 40–54.

  Poulantzas, N., & Fernbach, D. (1975). *Classes in Contemporary Capitalism*. London: New Left Books.

  Standing, G. (2011). *The Precariat: The New Dangerous Class*. London: Bloomsbury Academic.

  Standing, G. (2014). The precariat: The new dangerous class. *Amalgam*, 6(6–7), 115–119.

  World Bank. (2015). *World Development Indicators 2015*. Washington, DC: World Bank Group.

  World Bank. (2018). *The Changing Wealth of Nations 2018: Building a Sustainable Future*. (Lange, G.-M., Wodon, Q., & Carey, K., Eds.). Washington, DC: World Bank Group.

  Wright, E. O. (2009). Understanding class: Towards an integrated analytical approach. *New Left Review*, 60(1), 101–116.
]
