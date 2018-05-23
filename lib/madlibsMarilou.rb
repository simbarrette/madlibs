require 'madlibs/madlib'

# Create a new Madlib object, passing a template and a dictionary.  You can also
# pass nothing and assign them after the fact with `.dictionary` and `.template`
madlib = Madlibs::Madlib.new(
  'À 22 ans, <personnage> se cherche. (Ils|Elle|Il) tente, sans grande conviction, de rédiger une thèse de maîtrise sur <events>. Au même moment, son père et sa mère, <individus>, vivent une profonde période de remise en question, se demandant à quel moment et à quel prix ils ont sacrifié <object>? Rien ne va plus dans cette famille « <adjective> ». Heureusement, la figure mythique de <famou>, gourou <noun>, viendra <verb> dans cette maisonnée comme lui seul en a le secret…',
  {
    "nouns" => [
      "du centre de tri",
      "du sommet entre Donald Trump et Kim Jong-Un",
      "de la maison Blanche",
      "de la ville de Pékin",
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
    "famous" => [
      "Justin Trudeau",
      "Emmanuel Macron",
      "Philippe Couillard",
      "Tashi Wangchuk",
    ],
    "verbs" => [
      "poursuive Gilbert Rozon",
      "débattent au sujet des immigrants",
      "se donner un objectif de consolidation des partisants du PQ",
      "implorer de bannir les armes d'assauts",
    ],
    "adjectives" => [
      "importante",
      "royale",
      "dévergondée",
      "courageuses",
    ],
    "personnages" => [
      "le prix nobel de la paix",
      "Mark Zuckerberg",
      "200 employés des CLSC de Montréal",
      "le défenseur de la langue tibétaine",
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
out_file = File.new("resultMarilou.txt", "w")

original = "Original: À 22 ans, Marilou se cherche. Elle tente, sans grande conviction, de rédiger une thèse de maîtrise sur l’influence du mouvement hippie. Au même moment, son père et sa mère, baby-boomers, vivent une profonde période de remise en question, se demandant à quel moment et à quel prix ils ont sacrifié leurs idéaux? Rien ne va plus dans cette famille « parfaite ». Heureusement, la figure mythique de Timothy Leary, gourou du psychédélisme, viendra animer cette maisonnée comme lui seul en a le secret…"
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
