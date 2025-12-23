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
              2#super[nd] year student at
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
          I am looking for a 6-month gap year internship starting in July/August 2024 in the field of computer science,
          #linebreak(justify: true)
          where I can develop software applications for robotics and/or embedded systems.
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
            Languages
          ]
        ]
      ]
    ]

    align(center)[
      #move(dy: 0pt)[
        #text(size: 11pt, weight: "semibold")[
          English : C1
        ]
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Spanish : B2
        ]
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Japanese : A1
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
            Hobbies
          ]
        ]
      ]
    ]

    align(center)[
      #move(dy: 0pt)[
        #text(size: 11pt, weight: "semibold")[
          Piano for 6 years
          #linebreak()
          Guitar for 7 years
        ]
        #linebreak()
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Wing Chun in a club
          #linebreak()
          Climbing at school
        ]
        #linebreak()
        #linebreak()
        #text(size: 11pt, weight: "semibold")[
          Java & C++ for 10 years
          #linebreak()
          Rust for 2 years
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
            Skills
          ]
        ]
      ]
    ]

    align(center)[
      #move(dy: 0pt)[
        #text(size: 11pt, weight: "semibold")[
          Electronic
          #linebreak()
          Rust C++ Python
          #linebreak()
          JetBrains IDE
          #linebreak()
          GitHub CI/CD
          #linebreak()
          Projects structuration
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
          Education
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
          #text(weight: "semibold")[Exchange Studies] : Computer Science, 15/01/2025 - 7/06/2025
          #linebreak()
          #text(weight: "semibold")[Linköpings Universitet | Suède]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[Engineering degree] : Electrical energy, electronic systems, wave physics, thermodynamics, thermal, autonomous vehicles
          #linebreak()
          #text(weight: "semibold")[CentraleSupélec | Gif-sur-Yvette]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold")[MPSI/PSI\*] : Mathematics, Physics, 30/08/2021 - 1/09/2023
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
          Projects
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
          #text(weight: "semibold", size: 12pt)[`MarcsRover`] : Building a mini autonomous car in team, 09/2024
          #linebreak()
          #text(weight: "semibold")[CoVAPSy | Python & Zenoh & Electronique]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`fastformat`] : Library for converting real data (sensors)
          #linebreak(justify: true)
          to a generic format used by other libraries
          #linebreak()
          #text(weight: "semibold")[Organization #text(weight: "semibold", size: 12pt)[`dora-rs`] | Rust & Python]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`dora-rs` / `dora-lerobot`] : Contribution to a library for robotics
          #linebreak()
          Integration of a robotics and AI library on articulated arms.
          #text(weight: "semibold")[Organization #text(weight: "semibold", size: 12pt)[`dora-rs`], Hugging Face | Rust & Python]
        ]
      ],
      [
        #text(size: 10pt, weight: "extralight")[
          #text(weight: "semibold", size: 12pt)[`RoverCS`] : Building a mini autonomous car in team, 02/2024 - 06/2024
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
          Experience
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
                 #text(weight: "semibold")[Anti-SGBV Staff Member], 09/2023 - 01/2025
                 #linebreak()
                 Anti-SGBV supervision during student parties
                 #linebreak()
                 #text(weight: "semibold")[Gif-sur-Yvette] • Association Çapèse
               ]
            ],
            [
               #text(size: 10pt, weight: "extralight")[
                 #text(weight: "semibold")[Order Handler], 09/2023 - 01/2025
                 #linebreak()
                 Preparing orders of local products
                 #linebreak()
                 #text(weight: "semibold")[Gif-sur-Yvette] • Association Impact - Pépin
               ]
            ],
            [
               #text(size: 10pt, weight: "extralight")[
                 #text(weight: "semibold")[Homework Assistant], 09/2021 - 06/2022
                 #linebreak()
                 Tutoring middle school students
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
                 #text(weight: "semibold")[Robotics and AI Contributor], 05/2024 - 09/2024
                 #linebreak()
                 Creation of #text(weight: "semibold", size: 12pt)[`dora-lerobot`]: programming of
                 #linebreak()
                 low- and high-budget articulated arms for learning
                 #linebreak()
                 through teleoperation
                 #linebreak()
                 #text(weight: "semibold")[Paris] • 1ms.ai & HuggingFace
               ]
            ],
            [
               #text(size: 10pt, weight: "extralight")[
                 #text(weight: "semibold")[Operator Intern], 06/2024 - 07/2024
                 #linebreak()
                 Production of low-voltage surge arresters
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
