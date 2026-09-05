#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2.2cm, left: 2.3cm, right: 2.3cm),
  header: context [
    #if counter(page).get().first() > 1 [
      #set text(size: 8.5pt, fill: rgb("#78716c"))
      #grid(
        columns: (1fr, auto),
        [Ananya Pradhan --- Caste System & Discrimination in Rural Labour Markets],
        [Working Paper]
      )
      #v(2pt)
      #line(length: 100%, stroke: 0.4pt + rgb("#d6d3d1"))
    ]
  ],
  footer: context [
    #set text(size: 8.5pt, fill: rgb("#78716c"))
    #grid(
      columns: (1fr, auto),
      [Centre for Informal Sector & Labour Studies, JNU],
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
  #text(size: 8.8pt, weight: "bold", fill: primary-color, tracking: 1.5pt)[WORKING PAPER #h(6pt)|#h(6pt) APPLIED LABOUR ECONOMICS] \
  #v(8pt)
  #text(size: 19pt, weight: "bold", fill: primary-color)[
    Caste System and Patterns of Discrimination in Rural Labour Markets
  ] \
  #v(3pt)
  #text(size: 12pt, style: "italic", fill: secondary-color)[
    Segmentation, Social Stratification, and Empirical Realities in Rural Odisha
  ] \
  #v(14pt)
  #text(size: 11pt, weight: "bold")[Ananya Pradhan] \
  #v(2pt)
  #text(size: 9pt, fill: secondary-color)[
    Centre for Informal Sector and Labour Studies (CISLS), School of Social Sciences \
    Jawaharlal Nehru University (JNU), New Delhi \
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
  Labour market segmentation has been a central concern in development economics, explaining wage differentials and unequal opportunity structures among similarly productive individuals. This paper examines the caste system as a primary non-market institutional determinant of labour market segmentation in rural India. Drawing on neoclassical models of taste-based discrimination (Becker) and statistical discrimination (Arrow, Phelps), alongside structural theories of segmented labour markets, the study explores the mechanisms through which social hierarchy restricts occupational mobility and reproduces economic deprivation among Scheduled Castes (SCs) and Scheduled Tribes (STs). Grounded in primary qualitative interviews conducted with rural informal agricultural labourers in Kendrapara district, Odisha, and rural-to-urban migrant workers at Jawaharlal Nehru University, New Delhi, the findings illustrate persistent barriers in access to higher-tier non-farm employment, caste-based wage penalties, and structural dependency. The paper argues for targeted state interventions and structural land/livelihood policies to disrupt hereditary labour hierarchies.

  #v(4pt)
  #text(size: 8.8pt)[*Keywords:* Labour Economics, Labour Market Segmentation, Rural Labour Markets, Caste Discrimination, Wage Differentials, Scheduled Castes, Odisha.]   #text(size: 8.8pt)[*JEL Classification:* J31, J42, J71, Z13, Q12.]
]

#v(12pt)
== Introduction



Segmentation of labour market has been a matter of debate among labour and development economists for a long time. The debate can be traced back to Jhon Stuart Mill’s argument of presence of segmentation in the labour market with wage differential. There are many theories on labour market segmentation by both Classical and Neo Classical School of labour economics. It is a situation in which people working in some jobs or in sectors experience difference in earning and enjoy different levels of protection, opportunities and treatment with respect to others with similar productivity. There are both market and non-market factors behind this segmentation of the labour market. This paper concentrates on caste as the non-market social factor behind the labour market segmentation in rural India.

The segmentation of the labour market is the result of the existence of discrimination in the labour market. Labour market discrimination mainly focus on two issues, those are, the unequal treatment of equally productive workers (i.e. discrimination) and secondly, if discrimination in the labour market exists, what explanations are proposed to explain why it takes place? These two questions are, of course, not unrelated.

In India agriculture still remains mainstay of the rural economy by employing almost half of the population. Most of the rural employment is still low productive, mostly informal sector and with low wage rates. With the growth of the economy, there is increased dynamism in rural labour markets with increased rural-urban linkages, expansion of non-farm employment, migration and technological change in rural and agricultural sectors, farm mechanization, increase in labour productivity, implementation of social security programs like employment guarantee act and increased share of educated labour force. The increased dynamism in labour markets expands income and employment opportunities for a very few well-endowed workers with large proportion remained in low productive informal employment. This resulted in many rural uneducated, semi-skilled, less resourceful persons stuck in perpetual poverty resulted in a widening gap in wage rates between rural and urban sectors, agricultural and non-agricultural employment in line with segmented labour market theory. It results into the persistence of poverty among socially disadvantaged groups and economically less endowed population like SCs and STs. There is another argument to it that there is a fundamental duality exist within the informal sector, whereby some people work in a lower tier because they can do no better, while others work in an upper tier into which entry is restricted because of human capital and financial capital requirements (Fields, 1990). The less endowed people automatically get eliminated from the entry point to the white collar jobs in the labour market. There are many socio-economic restrictions for people belong to the lower strata of the society to enter into higher hierarchy employment.

To understand the caste based discrimination and exclusion in the rural labour market in India, we have to understand that who are the SCs and STs, so the following lines explain it. The Indian caste system is a social order which originates from the varna system, which are four broad, hereditary and hierarchically ordered occupational categories with priests or Brahmins at the top, warriors (Kshatriyas) next, merchants and traders (Vaishyas) third and menial workers (Shudras) making up the bottom layer. SCs (along with STs) occupy an ambivalent place in the varna system, and are either treated as a subset of the Shudras or a separate category whose main distinguishing characteristic is a particularly degrading (‘polluting’) traditional occupation, and are below the four varnas in the social order (Bayly 1999, Iversen 2011).

There is huge gap in the literature in understanding the rural labour markets in a multidisciplinary perspective. There is lack of data especially on rural informal employment linked with the non-market social factors like caste. Therefore, this paper tries to show the relation between rural employments with linked with caste and the patterns of discrimination existing in it. Labour market segmentation theory is taken as a frame work to explain it. This paper has two objectives:

To find out the link between the rural employments and caste.

To look into the patterns of discrimination existing in the rural labour market.

== Methodology and Data



The methodology of the study includes secondary data as well as interviews taken from persons belong to lower caste in the caste hierarchy (between 7th April to 12th April 2019). Documentation of literature, data from both government and non-government sources, information collected through the interviews are part of the methodology. A semi-structured questionnaire is used for collecting the information through interviews.

Limitations: Four of the interviews have taken in rural areas through the telephone (kendrapara district in Odisha) and one in Jawaharlal Neheru University, New Delhi. However, interview taken in JNU concentrate on discrimination faced in the informal employments by those who migrated from rural areas and belong to a lower caste. There is no interview taken from the persons belong to ST category.

== Theoretical Framework and Analysis



Exclusion of certain groups and the discrimination faced by them in the labour market are issues of both equality and economic growth. The increased competitiveness in the rural market especially in the rural non-farm activities indicates the need of state intervention for policy formulation and affirmative actions in correcting the caste-based exclusion and discrimination. This process ultimately lands in segmentation of the labour market in rural areas. The following paragraphs are the documentation of works and literature done on caste based exclusion in rural labour market and the patterns of discrimination.

Neo-Classical Model of Discrimination is the economic theory which explains the existence of discrimination in the labour market on the basis of non-market based factors. Becker’s ‘employer taste’ model (1971) develops on the idea that some workers, employer or customers do not want to work with or come into contact with members of other racial group.  He could not find the specific reason behind the prejudice so he assumed in his study that it could be simply due to the ‘taste’ or preference against the people from disadvantaged group. The employers do not want to employ members of a particular group even though these workers are as productive as any others. He also explains it is possible to pay these workers less than those from other groups. The firm then faces a trade-off; it can employ members of the disadvantaged group at lower wages and thus increase its profitability, or it can discriminate and employ only workers from the high wage group even though this will mean lower profit. Discrimination in this later case imposes a cost on the firm. Although Becker has proposed his theory on the basis of racial prejudice in the firms, it could be perfectly related to the caste discrimination in the Indian rural labour market. Statistical Discrimination theory can also be related to the Indian rural labour market. It explains if a certain groups of workers due to their social and economic responsibility and restrictions decide or forced not to invest their time and energy in acquiring human capital (i.e education and training) they are resulted as less competent in the labour market. Sometimes this results into less earning. Apart from the discrimination theories in economics there are literature specifically on social exclusion and discrimination in context of Indian Labour market.

To understand the peculiarities of discrimination and exclusion in Indian Labour market on the basis of caste we have to look into the definition of social exclusion in Indian context and how it results into the exclusion in the labour market.

Y. Chinna Rao(2010) writes the term ‘social exclusion’ is so evocative, ambiguous, multidimensional and expansive that it can be defined in many ways. He further elaborates social exclusion as the denial of equal opportunities imposed by certain groups of society upon others which leads to inability of an individual to participate in the basic political, economic and social functioning of the society. Group identities like caste and ethnicity are being the main reasons for social exclusion in Indian context. On exclusion in economic sphere he writes, exclusion in occupational sphere and labour employment are internal to the system in India and a necessary outcome of its governing principles. In the market economy framework, the occupational immobility would operate through restrictions in various markets such as land, labour, credit, other inputs, and services necessary for any economic activity. Labour being an integral part of the production process of any economic activity, would obviously become a part of market discrimination.

S. Thorat(2007) on his paper on economic exclusion and poverty writes on caste based  labour market discrimination that it refers to a situation of unequal treatment of the workers possessing same productivity in hiring or in wage payment due to non-economic group characteristics, such as race, colour or gender or caste.  According to him the real relevance of an exclusionary perspective is, thus conditional on the nature of the process of deprivation. He emphasises on recognising the uniqueness of caste discrimination because the normative frame work of caste system involves exclusion and discrimination in multiple market and non-market transactions and social relations. As the untouchables suffer from the social exclusion due to the practice of untouchability it brings additional dimension to their discrimination and exclusion from the labour market. Poverty is being one of the dimensions of the exclusion of deprived classes from socio-economic sphere. According to the 2011 Census, SCs and STs comprised 16.2 and 8.2 per cent of the population respectively, yet accounted for 40.6 per cent of the poor in the 2004/2005 household expenditure survey.

S. Thorat(2002) explains the types of discrimination and other dimensions involved with caste in Indian rural labour market, these are in form of ;

(1) Denial of some groups in hiring for jobs or in sale and purchase of factors of production, (like agriculture land, non-land capital assets and various factors inputs), consumers goods, social service like education, housing and health including common property resources (such as water bodies and land) etc.

(2) Differences between price charged or received and the market prices. This can include price of factor inputs, and consumer goods, price of factors of productions such as wages for labour, price of land or rent on land, interest on capital, rent on residential houses, charges or fees on services such as water and electricity.

(3) The former untouchables may also face exclusion and discrimination from participation in certain categories of jobs (the sweeper being excluded from inside household job such as cooking or others) and sale of certain consumer goods (such as vegetable or milk and similar items) because their occupation and physical touch is considered to be polluting.

(4) The former untouchables may also face discrimination and exclusion in use of public services like road, temples, water bodies and other public services.

(5) Due to the physical (or residential) segregation and social exclusion due to notion of untouchability (or touch-me-not-ism). For instance not bring able to relate to others and to take part in the life of the community can directly impoverish a persons’ life, in addition to the further deprivation it may generate.

The ILO data shows shift from agricultural employments to non-farm sectors in last few decades in rural India. Less productivity of the agricultural sector in par with rapid urbanisation results into distress migration from rural India to urban areas. There is a decline in self-employment and rise in casual wage employment in rural non-farm sector. This accelerates the process of exclusion and discrimination of the disadvantageous groups from the labour market in rural area by making them less competent and vulnerable.

The interviews collected from people belong to the SC and ST categories are written below.

Respondent-1

Name: Jitendra Sethi

Age: 32 years

Gender: Male

Caste: Dhoba (SC)

Address: Khamarsahi, Dangamal, Kendrapara, Odisha

Educational Qualification: High School (9th class)

Occupation: Shop keeper (stationaries and other necessities except food items)

Jitendra Sethi is the first and a highly cooperative respondent of the study. He owns a stationary shop at Khamarsahi market in kendrapara district of Odisha. He is the first person to own a shop or do a different occupation from rest of his family members. He is a high school dropout. He says, he did not want to do the occupation his family had been doing for years and wanted to study in the aspiration of doing a respectful job. Due to the financial problem and negligence in his family he could not pass the high school and started roaming in the village unemployed. He had an interest in electrical repairing and he learnt that by watching the SESU workers who occasionally came to his village to repair the electricity. He started working as an assistant (or what he calls as ‘helper’) in a parts repairing shop in his village with a very little or almost no wage (10-20 rupees per day in 2006-7). He saved and borrowed money from his friends and opened a shop in 2011. The shop was initially for electrical equipment and parts and the earning was good. However he wanted to expand it so he started selling candies, paan, packed snacks and other food items. He said initially he could not understand the reason behind pilling up of unsold food items in his shop but later he realised due to his caste identity the upper caste people was not buying food items from his shop. He says once he was nearly beaten up by the khandayat (the upper caste) boys in his village for selling pan to a little boy of that caste. The older people or the murabis of his village saved him that day. After that incident he has stopped selling food items and selling the stationaries and electrical equipment in his shop till date.

Respondent-2

Name: Gayatri Das

Age: 24

Gender: Female

Caste: Khadal/ Gulam (SC)

Educational Qualification: +2 IA

Address: Ragardapatia, Kendrapara, Odisha

Occupation: Tailoring, Stitching

Gayatri Das is the highest educated respondent among all of the 5 respondents. She passed Intermediate in Arts in 2011 with a second class. When asked why not she continued with her studies she said her family was facing bad financial situation due to her older sister’s marriage so she had to wrap up her studies. Her father is a daily wage labourer and her mother rears goats, they do not own any land. She tutored the primary school going kids for few years but no one paid her regularly and when she went to collect the fees she was abused by the parents that her ancestors were the gulams of the village so their services are meant to be free. She went to Chennei (TN) with a group of girls from her village to work and there she learnt stitching and tailoring cloths. She came back after working there for 4 years. She works at her home now-a-days with the tailoring machine she brought two years ago and charges advance money for tailoring and stitching the garments as she is now known for his skills of tailoring especially stitching blouses for women.

Respondent-3

Name: Bangali

Age: 47 years

Gender: Male

Caste: keuta/ kaibarta (SC)

Educational Qualification: No formal education (can count numbers, good at basic calculations)

Address: Rajendra Narayanpur, kendrapara, Odisha

Occupation: Fishing, Daily Wage Labourer (sometime) and works on fishing boats during the fish harvesting seasons

Bangali is the third respondent of the study. He catches fish and sales it in 4-5 villages in this area on his cycle. He has been doing this since he was very young. Fishing is the traditional occupation of his family and all those who belong to his caste (keuta) in this area. His caste people live in a different ‘sahi’ called ‘keuta sahi’ in his village. When he was asked about educational qualification he said he did not receive any formal education or never went to a school but he is really good at basic numerical calculations. However he has a huge family of 13members and his sons migrated to different states in search of works. He says now-a-days no one likes to do this job (fishing) as it involves hard manual labour and the reward is very less. He says no matter how hard he try to keep the fish fresh with ice, it does not work and he fails to compete with the cold stored fish brought by trucks from Andhra. He says everyone from his caste is going out for ‘playwood’ (metaphor used for migration) as the fishing business has become a low paying difficult job.

Respondent-4

Name: Mana

Age: 32 years

Gender: Female

Caste: Khadala (SC)

Educational Qualification: None (can write her name)

Address: Badadia, Kendrapara, Odisha

Occupation: Helper to the cooks in M-D-M Scheme at Dangamal Nodal School works in fields during the paddy harvesting season and collects torani and cow-dung to maintain her livelihood.

Mana works as a helper to the cooks in the M-D-M scheme in her village primary school. She belongs to the Khadal caste which is SC in Odisha. She has not received any education; however one of the teachers in the primary school has taught her to write her name (signature). She started working as household help and the wage was in kind (food, saree) and occasional. However she was not allowed to cook food or enter in to the owner’s kitchen. She could not work as a daily wage labourer due to her frail body .She got the job as a ‘helper’ in the school in 2015.  She gets 200 rupees per month with food to eat and the cooks get 1400 rupees per month. However, further questioned she came out with the statement that she does not cook or touch the food items before anyone else. She sweeps and cleans the places, cleans the utensils and carries the left overs to dump.

Respondent-5

Name: Subhash

Age: 32years

Gender:Male

Caste: Mochi (SC)

Educational Qualification: 5th class

Address: Behind Tapti Hostel, JNU, New Delhi (place of origin: Rajasthan)

Occupation: Cobbler

Subhash is the 5th respondent works as a cobbler in JNU. He was reluctant to talk about his caste however he delightfully explained how he learnt the skill of cobbling from his father as he was also a cobbler. His monthly income is 4000-5000 per month in which he pays all his rents and sends back money to his home. He and his brother left their village in search for better paying jobs in Delhi. However, he says the earning here is not adequate for the all day’s restless work. When asked about education he said busy repairing a bag that, education is for those who can afford (indicating to the laptop the interviewer was holding).

== Empirical Findings and Field Evidence



The above literature and the interviews taken are showing the movement away from SC households from traditional jobs and agriculture to self-employment or as wage labour, and to other jobs with volatilities attached to it in rural India. It could be considered as an occupational shift. However these types of employments also involve discrimination and exclusion.

Firstly, there is a visible link between caste and employment in the rural areas. It is another interesting fact to notice that the SC people moved to non-farm employments either into self-employment or as wage labourers or into miscellaneous works rather than farming. The ownership of land and attempting to acquire it very less among the people belong SC due to the social barriers. Second possible explanation of shifting of the deprived section to these types of low-paid, with no social security jobs could be the social and economic barriers behind entering in to the well-paid jobs with social security. There are mandated reservation in public sector jobs for the SCs and STs. However, the inaccessibility of those jobs and the highly excludable nature of the entry requirements to those are not looked into.

The second objective was to find out the patterns of discrimination existing in the rural labour market.

The skill required for manual wage labour engaged in agriculture is generally available with low caste untouchables as well as the higher caste labourers, and therefore, the difference in employment rates between the lower-caste and higher caste manual wage labourers could attribute to the hiring preference of HC employers.

The difference in the wage rates across all castes for similar manual wage labour could be attributed to wage discrimination practised by high-caste employers. The discrimination in the terms and conditions is reflected in denial of certain types of jobs, condition of works and discriminatory behaviour at work place. Restriction on entry to cooking and kitchen are the examples of it.

The reasons behind this discrimination pattern can be caste sympathy, believe that the caste labourers are hard-working, caste labourers are loyal and other reasons.

== Conclusion and Policy Implications



There are continuance of customary restrictions and hence, the, discrimination against the low-caste untouchables in various market and non-market transactions in some form. Ultimately it results into the segmentation in the labour market and further deprivation of the less endowed group in the market. Discrimination takes various forms at time of the involvement of the untouchables in different markets, namely, in seeking inputs and services necessary for undertaking production, including business, and sell and purchase of products and consumer goods. This indicates that although the untouchables have access to various markets. It is characterised by restrictions and discriminatory behaviour on the part of high-caste persons. It has some additional consequences to it as in a private economy markets the exclusion and discrimination of some groups in the markets transactions on the basic group characteristic is a serious case of market failure. Market discrimination adversely affects both economic efficiency and income distribution.

== References



Banerjee, B., & Knight, J. B. (1985). Caste discrimination in the Indian urban labour market. Journal of development Economics, 17(3), 277-307.

Becker, G. S. (2010). The economics of discrimination. University of Chicago press.

Lundberg, S. J., & Startz, R. (1983). Private discrimination and social intervention in competitive labor market. The American Economic Review, 73(3), 340-347.

Thorat, S., & Neuman, K. S. (2012). Blocked by caste: economic discrimination in modern India. Oxford University Press.

Thorat, S. (2007, August). Economic exclusion and poverty: Indian experience of remedies against exclusion. In IFPRI and ADB conference in Manila, August (pp. 9-10).

Thorat, S., & Newman, K. S. (2007). Caste and economic discrimination: causes, consequences and remedies. Economic and Political Weekly, 4121-4124.

Thorat, S., & Attewell, P. (2007). The legacy of social exclusion: A correspondence study of job discrimination in India. Economic and Political Weekly, 4141-4145.

Sen, A. (2000). Social exclusion: Concept, application, and scrutiny.

Yagati, Chinna Rao (2010). Social Exclusion in India: Concepts and context. Kaniska Publishers, Distribuors.
