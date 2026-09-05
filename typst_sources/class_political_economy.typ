#set document(
  title: "Assignment: CLASS",
  author: "Ananya Pradhan",
  date: none
)

#set page(
  paper: "a4",
  margin: (top: 3cm, bottom: 3cm, left: 3cm, right: 3cm),
  header: context {
    if counter(page).get().first() > 1 [
      #grid(
        columns: (1fr, auto),
        align: (left, right),
        text(size: 8.5pt, fill: rgb("#6b7280"), font: "Libertinus Serif", style: "italic")[Ananya Pradhan · Course: Political Economy (IA-416)],
        text(size: 8.5pt, fill: rgb("#6b7280"), font: "Libertinus Serif")[Assignment: 'CLASS']
      )
      #v(0.2em)
      #line(length: 100%, stroke: 0.4pt + rgb("#d1d5db"))
    ]
  },
  footer: context {
    align(center)[
      #text(size: 9pt, fill: rgb("#6b7280"), font: "Libertinus Serif")[
        #counter(page).display("1")
      ]
    ]
  }
)

#set text(
  font: "Libertinus Serif",
  size: 11pt,
  fill: rgb("#111827"),
  lang: "en"
)

#set par(
  justify: true,
  leading: 0.78em,
  first-line-indent: 1.5em
)

// --- HEADER BLOCK ---
#align(center)[
  #text(size: 10pt, weight: "bold", font: "Libertinus Serif")[Course: Political Economy (IA-416)] \
  #v(0.2cm)
  #text(size: 11pt, font: "Libertinus Serif", style: "italic")[Assignment topic:] \
  #v(0.1cm)
  #text(size: 18pt, weight: "bold", font: "Libertinus Serif")[‘CLASS’] \
  #v(0.5cm)
  
  #grid(
    columns: (1fr, 1fr),
    align: (left, right),
    [
      #text(size: 9.5pt)[
        *Submitted to:* \
        Moushumi Basu \
        CIPOD, SIS/JNU
      ]
    ],
    [
      #text(size: 9.5pt)[
        *Submitted by:* \
        Ananya Pradhan \
        Registration no: 56898 \
        M.A 4th Semester \
        CISLS, SSS/JNU
      ]
    ]
  )
  
  #v(0.3cm)
  #line(length: 100%, stroke: 0.5pt + rgb("#9ca3af"))
  #v(0.4cm)
]

#show heading.where(level: 1): it => block(
  above: 1.2cm, below: 0.5cm
)[
  #text(size: 13pt, weight: "bold", fill: rgb("#111827"), font: "Libertinus Serif")[#it.body]
]

= Introduction:

Karl Marx is one of the main contributors to the 'Theory of class'. The other contributors are Weber and Durkheim. However, Marx's definition of class is different from that of Weber's and Durkheim's. The Marxist conception of 'class' is relational#footnote[Wright, E. O. (2009). Understanding class: Towards an integrated analytical approach. *New Left Review*, 60(1), 101–116.]. The classical Marxist definition of class divides the 'Capitalist'#footnote[The capitalistic society has some basic features; self-expanding market, capitalistic mode of production, a system of unfettered individual enterprise etc.] society in to two groups, one group which owns the 'means of production' and the other who does not own anything except their 'labour power'. He explains this division of society is based on the relation of two groups in a specific mode of production in a given society. The peculiar factor behind this distinction of two groups in the society is 'ownership' or 'private property'. The word 'Bourgeoisie' means the class of modern capitalists, owners of the social production and employer of wage labour. In other hand 'Proletariat' is a class of modern wage labourers, who does not have their own means of production and sell their labour power in order to live. This social organisation existed previous to the recorded History or in the primitive form of the society. Marx further deepens his argument by saying this process or division in the society is a historical process. With the dissolution of the primeval communities, society begins to be differentiated into separate and finally antagonistic classes#footnote[Morgan, L. H. (1877). *Ancient Society: Or, Researches in the Lines of Human Progress from Savagery, through Barbarism to Civilization*. H. Holt.]. Friedrich Engels tried to retrace this dissolution in his work 'The origin of Family, Private property and the state' (1888). Marx's theory of 'primitive accumulation' substantiates this claim. The political pamphlet of the communist party; the 'communist manifesto' writes the same,

#align(center)[
  #block(
    width: 90%,
    inset: (left: 12pt, y: 2pt),
    stroke: (left: 2pt + rgb("#9ca3af"))
  )[
    #set text(size: 10pt, style: "italic", fill: rgb("#374151"))
    #set par(first-line-indent: 0pt)
    "The history of all hitherto existing society is the history of class struggles" (Communist Manifesto, 1848).
  ]
]

The enclosure movement in England can be an example of that as it made few people owner of the common land and a large chunk of the English society remained land-less. However, the forms and relationship between these two classes have changed relatively with the new capitalistic dynamisms. This paper aims to study the existence of class and the changes happened to its form and meaning in the Globalisation era. Political economy is used as a frame work to analyse the concept of 'Class' by using the production relations in the contemporary world.

= Origin of class:

The term 'capitalism' has been used by economists in a purely technical sense. However, this paper is looking at it as a category of 'historical interpretation' to trace the origin of class. The presence of different complicated social orders in different societies across time is not a natural process. The social orders have always been results of the particular historical process.

Engels (1884) argues the advent of agriculture and domestication of animal provided the human beings to create more than the bare minimum that they needed to survive. This accumulation of capital in the pre-class hunter-gatherer societies created grounds for formation of 'class'. Two classes came into existence, one of those 'who accumulated wealth' and another 'who did not'. The formation of class came with inequality. The rise in inequality resulted into rise of private property. The private property helped the men to get control over the sphere of production. The later Marxist scholars take up the issue from the ancient world history to the mediaeval history on the basis of Engels argument. Perry Anderson (1974) explained the evolution of slave-societies of Antiquity to feudalistic societies in mediaeval period on the basis of control over the production process by altering the mode of production to feudal mode of production. Then the feudalistic societies evolved into the capitalist societies by altering the 'mode of production' in early modern period of history (Hilton, 1946).

Therefore, the classical Marxist division of the society in two classes exist on the basis of different 'modes of production' e.g. the slaves and the slave-owners in 'slave mode of production' in Ancient Roman cities, the serfs and the feudal lords in 'Feudalistic mode of production' in the medieval period, and the labourers and capitalists in 'capitalist mode of production' in the present era. The control over the mode of production came into the hand of a particular class through the process explained in the above paragraph. It is a complete historical process starting with the 'primitive accumulation' and 'origin of private property' to present day capitalism.

= Class in Contemporary Era of Capitalism:

The contemporary capitalism is different in its process of accumulation and operation than the typical of the old capitalism. Operation of free market and international exchange are characteristic features of capitalism. Monopolisation of resources and trade are other important features of capitalism. However the capitalist system of early twentieth century witnessed a different stage of capitalism with formation of a new type of monopoly. Lenin described this new phase as 'Imperialism'#footnote[Lenin, V. I. (1999). *Imperialism: The Highest Stage of Capitalism*. Resistance Books, pp. 70–77.]. In this new phase in early twentieth century, it is observed that with centralisation of capital led to formation of new monopoly in industry and banks. In these two spheres the capitals came together and formed 'financial capital'. The financial capital was controlled by financial oligarchy and they dominated both these spheres as well as the state in advanced countries. The competition among the rival financial capitals made them to increase the mobility of finance across the globe. This brought a new economic entity i.e. the 'international financial capital'. This 'international financial capital' is the main driving force behind the current globalization process. However, the financial capital of Lenin's time had its base with particular nation and linked with the particular nation's expansion of economic territory. But the contemporary financial capital is not tied to any particular national interest although it has its origin in particular nations. Multinational corporations (MNCs) or Trans-national companies are the examples of the 'international financial capital'. However the global financial oligarchy requires an army of spokes persons, media persons, bureaucrats, politicians, professors and think tanks situated globally for its functioning (Pattnaik, 2010). And there are international institutions to help it operate smoothly through providing provisions for un-restricted capital flow globally. These constitute the 'global financial community' and their function is to promote hegemony of international finance. This global financial community penetrates into the political systems of different countries. The IMF and World Bank-trained 'advisors' enter into the economic ministries to promote the hegemony of the particular community. And the penetration of global financial capital makes the state less autonomous. The process of privatiziation and commodification of education facilitate to propagate the views of the global financial community. This 'global financial community' is the new 'trans-national capitalist class' in the contemporary era based on neo-liberal principles.

The rolling back of state (or limiting the intervention of the state) in promoting demand, generating employment, supporting and protecting peasants and petty producers under the neo-liberal principles, creates grounds for the trans-national corporates to accumulate through encroachment and dispossession. The multinational corporations function globally through vertical and horizontal integration of domestic finance with the global capital. This process is called the Global Production Network (GPN) or Global Value Chain (GVC). Multinational retail chains like Walmart and Diageo come up to displace petty commodity traders, squeeze the peasantry, land grabbing and displace people from their lands. Withdrawal of state subsidies and protection on world commodity prices result into high commodity price trends. There is increase in cost of living due to privatization of education, health and several essential services. The global capital is concentrating in to fewer and fewer hands. The Oxfam report on food and beverage companies shows, the ten multinational conglomerates control all of the food and beverage 'brands' we know and these ten companies collectively generate revenues of more than USD 1.1 billion a day#footnote[Oxfam's report (2016), "Behind the Brands: Food justice and the 'Big 10' food and beverage companies".]. These are namely, Associated British Foods, Coca-cola, Danone, General Mills, Kellogg, Mars, Mondelez International, Nestle, PepsiCo and Unilever. Among world's top 100 economic entities, 39 are countries and 61 are corporates (World Bank, 2015). The World Bank report found out that global wealth grew an estimated 66% (From USD 690 trillion to USD 1,143 trillion in constant 2014 USD at market price) but inequality was substantial, as wealth per capita in high-income OECD countries was 52 times greater than in low-income countries (between 1995–2014)#footnote[Report "The Changing Wealth of Nations 2018", Building a sustainable future, World Bank Group.]. With the centralisation of capital in to hands of few trans-national corporates comes the huge inequality.

All these together are affecting the working class. The problems created by this global process i.e. distress, dispossession and unemployment in developing countries are transforming the working class or proletariats into a new class. The expansion of these multinational corporations is not contributing to the proportionate employment generation with the total output production. There are other impacts of this process on small-scale farmers, women, farm workers, water, land, climate etc. which can't be ignored. All these peculiarities attached to the neo-liberal regime or Lenin's third stage of Imperialism, are adding new form of vulnerabilities to the working class. The working class under trans-national capitalism are facing reduction in their bargaining power and social security, with the introduction of huge 'informalisation' of works as a result of decline in employment creation in it (Anner, M, 2015). Scholars like Guy Standing (2013) named this new class as 'Pricariates' or 'precarious proletariats' on the basis of the precarious nature of the jobs the proletariats are doing under trans-national capitalists. However, the 'pricariate' is a class or not is a debateable issue. But the problem of 'informalisation' is no doubt a new feature to the contemporary process of globalization, which makes the conditions of the working class more vulnerable comparing to that of the classical Marxist working class.

There is another class which does not come under the two classical classes of Marxism. That is called the 'middle-class'. The classical Marxist theory implies them as the obstacle to working class struggle. This class does not assimilate itself to the working class although it also suffers by the 'Bourgeoisie' activities. In classical Marxism the middle-class meant the small productions; the small business men and farmers (Kautsky, 1910). The contemporary middle-class consists of those own a fraction of the 'means of production' in form of power of decision making. The managers, the salaried employees of companies', and the intellectuals, think tanks, advisors etc. who are given ownership of some means of production to propagate the capitalist interest, are the new middle-class. The critics of neo-liberal order consider this as a hierarchal order in the society maintained by the capitalists to ensure that the middle-class would never come in solidarity with the working class.

The cloths we wear, the foods that we eat, the cosmetics we use, mobile phones, laptops, electronic gadgets, automobiles, mobile networks, fancy restaurants, even different farm produces everything is a part of the chain we call global value chain controlled by the trans-national capitalist class. The hawkers, rickshaw-pullers, construction workers, household helps are all part of the working class who have nothing else than their labour power to sale. There is presence of these classes in every sphere of the society. Hence, the conflict between capital and labour continues.

#v(0.6cm)
#line(length: 100%, stroke: 0.4pt + rgb("#d1d5db"))

= References:

#set text(size: 9.5pt)
#set par(justify: true, first-line-indent: -1.5em, hanging-indent: 1.5em, leading: 0.6em)

#block(spacing: 0.4cm)[
  Anner, M. (2015). Labor control regimes and worker resistance in global supply chains. *Labor History*, 56(3), 292–307.

  Chimni, B. S. (1999). Marxism and international law: A contemporary analysis. *Economic and Political Weekly*, 337–349.

  Chimni, B. S. (2017). International institutions today: an imperial global state in the making. In *Globalization and International Organizations* (pp. 41–78). Routledge.

  Harvey, D. (2007). *A Brief History of Neoliberalism*. Oxford University Press, USA.

  Kautsky, K. (1910). *The Class Struggle (Erfurt Program)* (No. 2). Chicago, Kerr.

  Lenin, V. I. (1999). *Imperialism: The Highest Stage of Capitalism*. Resistance Books.

  Marx, K. & Engels, F. (1888), *Manifesto of the Communist Party*, (New York: New York Labor News, 1888), pp. 7–15, 28.

  Marx, K. (2018). *Capital Volume 1* (Vol. 1). Lulu.com.

  Patnaik, P. (2010). Notes on contemporary imperialism. *Monthly Review*, 66(2).

  Poulantzas, N. A., & Fernbach, D. (1975). *Classes in Contemporary Capitalism* (pp. 13–16). London: NLB.

  Standing, G. (2014). The Precariat—The new dangerous class. *Amalgam*, 6(6–7), 115–119.

  Tucker, R. C. (Ed.). (1978). *The Marx-Engels Reader*.

  Wright, E. O. (2009). Understanding class: Towards an integrated analytical approach. *New Left Review*, 60(1), 101–116.
]
