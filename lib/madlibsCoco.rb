require 'madlibs/madlib'

# Create a new Madlib object, passing a template and a dictionary.  You can also
# pass nothing and assign them after the fact with `.dictionary` and `.template`
madlib = Madlibs::Madlib.new(
  'Un mois après la mort <personnage>, quatre jeunes <individu> à l’aube de la trentaine <verb> dans <noun> de campagne. (Elles|Ils) posent sur la table <object> du défunt. À travers les mots <personnage>, ces <individu> aussi <adjective> que <adjective> plongent dans leurs souvenirs : de <events> à <eevents>, de la sexualité et de la vie.',
  {
    "nouns" => [
      "un centre de tri",
      "un sommet entre Donald Trump et Kim Jong-Un",
      "la maison Blanche",
      "la ville de Pékin",
    ],
    "objects" => [
      "le Thé David's Tea",
      "le tombeau du célèbre DJ Avicii",
      "le prix d'interprétation féminine pour sa performance choc dans Ayka de Sergueï Dvortsevoï",
      "la bague de mariage de Meghan Markle",
    ],
    "individus" => [
      "joueurs de hockey",
      "membres du parti libéral",
      "employés de poste canada",
      "terroristes",
    ],
    "verbs" => [
      "poursuivent Gilbert Rozon",
      "débattent au sujet des immigrants",
      "se donnent un objectif de consolidation des partisants du PQ",
      "implorent de bannir les armes d'assauts",
    ],
    "adjectives" => [
      "importante",
      "royale",
      "virtuose",
      "courageuses",
    ],
    "personnages" => [
      "du prix nobel de la paix",
      "de Mark Zuckerberg",
      "de 200 employés des CLSC de Montréal",
      "du défenseur de la langue tibétaine",
    ],
    "events" => [
      "l'investissement de 800 millions pour la STM",
      "l'absence d'accusation pour un député du PLC",
      "la mort d'un homme dans une embardée en Montérégie",
      "l'interdiction de la pêche à la baleine par Ottawa",
    ],
    "eevents" => [
      "la surmédication des ainées",
      "la numérisation complète du carnet de santé au Québec",
      "l'arrestation d'un homme prenant un égoportrait sur un pont",
      "l'interdiction potentiel des bouteilles d'eau à Montréal",
    ]
  }
)

# Generate your string(s) and write to file
out_file = File.new("resultCoco.txt", "w")
original = "Original: Un mois après la mort de leur amie d’enfance, quatre jeunes femmes à l’aube de la trentaine se réunissent dans une maison de campagne. Elles posent sur la table le journal intime de la défunte. À travers les mots de Coco, ces filles aussi franches que différentes plongent dans leurs souvenirs : de la naissance de leur amitié à leur découverte de l’amour, de la sexualité et de la vie."
out_file.puts(original)
out_file.puts("\n")

text = madlib.generate
out_file.puts(text)
out_file.puts("\n")

text = madlib.generate
out_file.puts(text)
out_file.puts("\n")

text = madlib.generate
out_file.puts(text)
out_file.puts("\n")

text = madlib.generate
out_file.puts(text)
out_file.puts("\n")

out_file.close
