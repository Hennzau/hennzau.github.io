#import "../lib.typ": cv

#let gray = rgb("#303848")
#let orange = rgb("#BF9268")
#let light_gray = rgb("#F2F2F2")

#let cadre_photo() = {
  align(right + bottom)[
    #box(width: auto, height: 85%, stroke: gray + 4pt,)[
      #image("enzo.le-van.photo.jpg")
    ]
  ]
}

#let cadre_nom() = {
  align(center + bottom)[
    #box(width: 85%, height: 80%, stroke: orange + 4pt, fill: white)[
      #align(center + top)[
      #move(dy: 25pt)[
          #text(size: 30pt, weight: "extralight", spacing: 100%, tracking: 4pt)[
            Enzo LE VAN
          ]
          #linebreak()
          #move(dy: 10pt)[
            #text(size: 15pt, weight: "bold", tracking: 4pt)[
              Elève en 2ème année à
            ]
            #linebreak()
            #text(size: 15pt, weight: "bold", tracking: 4pt)[
              CentraleSupélec
            ]
          ]
        ]
      ]
    ]
  ]
}

#let cadre_contact() = {
  align(center + horizon)[
    #move(dy: 6pt)[
      #text(size: 9pt, weight: "semibold")[
        e-mail : enzo.le-van\@student-cs.fr | #link("https://github.com/Hennzau")[GitHub : \@Hennzau] | #link("www.linkedin.com/in/enzo-le-van")[Linkedin : \@enzo-le-van]
      ]
    ]
  ]
}

#let cadre_recherche() = {
  move(dx: 5%, dy: 14pt)[
    #line(length: 90%, stroke: orange + 2pt)
  ]
  align(center)[
    #move(dy: 18pt)[
      #text(size: 10pt, weight: "semibold")[
        #par(justify: true)[
          Je suis à la recherche d'un stage de césure de 6 mois à partir du mois de juillet/août 2024 dans le domaine
          #linebreak(justify: true)
          de l'informatique où je pourrai développer des applications logicielles pour de la robotique et/ou de l'embarqué.
        ]
      ]
    ]
  ]
}

#let cadre_divers() = {
  let langues() = {
    move(dx: 5%, dy: 15pt)[
      #line(length: 90%, stroke: orange + 2pt)
    ]

    align(center)[
      #move(dx: 0pt, dy: -5pt)[
        #highlight(fill: light_gray, extent: 8pt)[
          #text(size: 15pt, weight: "semibold", tracking: 2pt)[
            Langues
          ]
        ]
      ]
    ]

    align(center)[
      #move(dy: 0pt)[
        #text(size: 11pt, weight: "semibold")[
          Anglais : C1
        ]
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Espagnol : B2
        ]
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Japonais : A1
        ]
        #linebreak()
        #linebreak()
      ]
    ]
  }
  let loisirs() = {
    move(dx: 5%, dy: 15pt)[
      #line(length: 90%, stroke: orange + 2pt)
    ]

    align(center)[
      #move(dx: 0pt, dy: -5pt)[
        #highlight(fill: light_gray, extent: 8pt)[
          #text(size: 15pt, weight: "semibold", tracking: 2pt)[
            Loisirs
          ]
        ]
      ]
    ]

    align(center)[
      #move(dy: 0pt)[
        #text(size: 11pt, weight: "semibold")[
          Piano depuis 6 ans
          #linebreak()
          Guitare depuis 7 ans
        ]
        #linebreak()
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Wing Chun en club
          #linebreak()
          Escalade en EPS
        ]
        #linebreak()
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Java & C++ depuis 10 ans
          #linebreak()
          Rust depuis 2 ans
        ]
        #linebreak()
        #linebreak()
      ]
    ]
  }
  let competences() = {
    move(dx: 5%, dy: 15pt)[
      #line(length: 90%, stroke: orange + 2pt)
    ]

    align(center)[
      #move(dx: 0pt, dy: -5pt)[
        #highlight(fill: light_gray, extent: 8pt)[
          #text(size: 15pt, weight: "semibold", tracking: 2pt)[
            Compétences
          ]
        ]
      ]
    ]

    align(center)[
      #move(dy: 0pt)[
        #text(size: 11pt, weight: "semibold")[
          Electronique
          #linebreak()
          Rust C++ Python
          #linebreak()
          Logiciels JetBrains
          #linebreak()
          GitHub CI/CD
          #linebreak()
          Architecture de projets
        ]
        #linebreak()
        #linebreak()
      ]
    ]
  }

  align(right)[
    #block(fill: light_gray, width: 90%, height: 100%)[
      #align(left)[
        #grid(
          columns: (100%),
          rows: (auto, auto, auto),
          langues(),
          loisirs(),
          competences()
        )
      ]
    ]
  ]
}

#let cadre_formation() = {
  align(left + top)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Formation
        ]
      ]
    ]
  ]

  move(dx: 150pt, dy: -30pt)[
    #line(length: 225pt, stroke: orange + 2pt)
  ]

  move(dy: -16pt)[
    #list(
      indent: 15pt,
      tight: false,
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[Echange universitaire] : Computer Science, 15/01/2025 - 7/06/2025
          #linebreak()
          #text(weight: "semibold")[Linköpings Universitet | Suède]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[Diplôme d'ingénieur] : Energie électrique, systèmes électroniques, physique
          des ondes, thermodynamique, thermique, véhicules autonomes
          #linebreak()
          #text(weight: "semibold")[Ecole CentraleSupélec | Gif-sur-Yvette]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[MPSI/PSI\*] : Mathématiques, Physique, 30/08/2021 - 1/09/2023
          #linebreak()
          #text(weight: "semibold")[Lycée Privé Sainte-Geneviève | Versailles]
        ]
      ]
    )
  ]
}

#let cadre_projet() = {
  align(left + top)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Projets
        ]
      ]
    ]
  ]

  move(dx: 150pt, dy: -30pt)[
    #line(length: 225pt, stroke: orange + 2pt)
  ]

  move(dy: -16pt)[
    #list(
      indent: 15pt,
      tight: false,
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`MarcsRover`] : Création d'une mini voiture autonome en équipe, 09/2024
          #linebreak()
          #text(weight: "semibold")[CoVAPSy | Python & Zenoh & Electronique]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`fastformat`] : Bibliothèque de conversion de données réelles (capteurs)
          #linebreak(justify: true)
          vers un format générique utilisé par d'autres bibliothèques
          #linebreak()
          #text(weight: "semibold")[Organisation #text(weight: "semibold", size: 12pt)[`dora-rs`] | Rust & Python]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`dora-rs` / `dora-lerobot`] : Contribution à une bibliothèque de robotique
          #linebreak(justify: true)
          Intégration d'une bibliothèque de robotique et d'IA sur des bras articulés.
          #text(weight: "semibold")[Organisation #text(weight: "semibold", size: 12pt)[`dora-rs`], Hugging Face | Rust & Python]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`RoverCS`] : Création d'un rover autonome en équipe, 02/2024 - 06/2024
          #linebreak()
          #text(weight: "semibold")[NXP Cup | ROS2 & Python & C & Zephyr RTOS]
        ]
      ],
    )
  ]
}

#let cadre_experience() = {
  move(dx: 5%, dy: 28pt)[
    #line(length: 90%, stroke: orange + 2pt)
  ]

  move(dx: 50% - 75pt, dy: 0pt)[
    #box(fill: gray, width: 150pt, height: 30pt)[
      #align(center + horizon)[
        #text(size: 14pt, weight: "semibold", fill: white, tracking: 2pt)[
          Expérience
        ]
      ]
    ]
  ]

  let pad = 3pt
  let pad2 = 12pt

  grid(
    columns: (50%, 50%),
    rows: (100%),
    grid.cell(
      x: 0,
      y: 0,
      rowspan: 1,
      colspan: 1,
    )[
      #move(dy: pad, dx: pad2)[
        #par(justify: true)[
          #list(
            indent: 15pt,
            tight: false,
            [
              #text(size: 10pt, weight: "extralight")[
                #text(weight: "semibold")[Staffeur anti VSS], 09/2023 - 01/2025
                #linebreak()
                Surveillance anti VSS lors des soirées étudiantes
                #linebreak()
                #text(weight: "semibold")[Gif-sur-Yvette] • Association çapèse
              ]
            ],
            [
              #text(size: 10pt, weight: "extralight")[
                #text(weight: "semibold")[Staffeur commandes], 09/2023 - 01/2025
                #linebreak()
                Préparateur de commandes de produits locaux
                #linebreak()
                #text(weight: "semibold")[Gif-sur-Yvette] • Association Impact - Pépin
              ]
            ],
            [
              #text(size: 10pt, weight: "extralight")[
                #text(weight: "semibold")[Aide aux devoirs], 09/2021 - 06/2022
                #linebreak()
                Aide aux devoirs du collège
                #linebreak()
                #text(weight: "semibold")[Versailles] • ARPEJ
              ]
            ]
          )
        ]
      ]
    ],
    grid.cell(
      x: 1,
      y: 0,
      rowspan: 1,
      colspan: 1,
    )[
      #move(dy: pad, dx: -pad2)[
        #par(justify: true)[
          #list(
            indent: 15pt,
            tight: false,
            [
              #text(size: 10pt, weight: "extralight")[
                #text(weight: "semibold")[Contributeur robotique et IA], 05/2024 - 09/2024
                #linebreak()
                Création de #text(weight: "semibold", size: 12pt)[`dora-lerobot`] : programmation de bras
                #linebreak()
                articulés faible et gros budget pour de l'apprentissage
                #linebreak()
                par téléopération
                #linebreak()
                #text(weight: "semibold")[Paris] • 1ms.ai & HuggingFace
              ]
            ],
            [
              #text(size: 10pt, weight: "extralight")[
                #text(weight: "semibold")[Stagiaire opérateur], 06/2024 - 07/2024
                #linebreak()
                Production de parafoudres basse tension
                #linebreak()
                #text(weight: "semibold")[Lyon] • Eurotect Electrical
              ]
            ],
          )
        ]
      ]
    ]
  )
}

#show: cv.with(
  author: "Enzo Le Van",
  title: "CV de Enzo Le Van",
  date: datetime(year: 2024, month: 9, day: 23),

  main_color: gray,
  secondary_color: orange,
  third_color: light_gray,

  frames: (
  cadre_photo(),
  cadre_nom(),
  cadre_contact(),
  cadre_recherche(),
  cadre_divers(),
  cadre_formation(),
  cadre_projet(),
  cadre_experience()
  )
)
