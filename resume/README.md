# 📄 CV Template with Typst

This repository contains a **template** for creating a CV using **Typst**. ✍️ **Typst** is an alternative to **LaTeX**, designed for creating structured documents. It's easier to learn and use than LaTeX, while still offering similar features. 🎯

You can use this template to create your own CV! To do so, simply import the template into your own `.typ` file and replace the placeholder information with your personal details. 🚀

Follow the instructions below to get started! 📝

```typst
#import "[directory?]/lib.typ": cv

#let gray = rgb("#303848")
#let orange = rgb("#BF9268")
#let light_gray = rgb("#F2F2F2")

#let cadre_photo() = {}
#let cadre_nom() = {}
#let cadre_contact() = {}
#let cadre_recherche() = {}
#let cadre_divers() = {}
#let cadre_formation() = {}
#let cadre_projet() = {}
#let cadre_experience() = {}

#show: cv.with(
  author: "Enzo Le Van",
  title: "CV de Enzo Le Van",
  date: datetime(year: 2024, month: 9, day: 23),

  vertical_lines: (25%, 13%, 62%),
  horizontal_lines: (17%, 4%, 8%, 18%, 27%, 26%),

  header_height: 10%,
  footer_height: 1%,

  font: "Arial",

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
```
