#let cv(
  author: none,
  title: none,
  date: none,

  vertical_lines: (25%, 13%, 62%),
  horizontal_lines: (17%, 4%, 8%, 18%, 27%, 26%),
  frames: none,

  main_color: rgb("#303848"),
  secondary_color: rgb("#BF9268"),
  third_color: rgb("#F2F2F2"),

  header_height: 10%,
  footer_height: 1%,

  font: "Arial",

  body) = {
  set document(author: author, title: title, date: date)
  set page(
    fill: white,
    paper: "a4",
    margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
    background: {
      place(top, rect(fill: main_color, width: 100%, height: header_height))
      place(bottom, rect(fill: main_color, width: 100%, height: footer_height))
    },
  )

  if frames == none {
    frames = (
      [#rect(fill: blue, width: 100%, height: 100%)],
      [#rect(fill: red, width: 100%, height: 100%)],
      [#rect(fill: green, width: 100%, height: 100%)],
      [#rect(fill: yellow, width: 100%, height: 100%)],
      [#rect(fill: purple, width: 100%, height: 100%)],
      [#rect(fill: orange, width: 100%, height: 100%)],
      [#rect(fill: green, width: 100%, height: 100%)],
      [#rect(fill: yellow, width: 100%, height: 100%)],
    )
  }

  text(font: font, fill: main_color)[
    #grid(
      columns: (vertical_lines.at(0), vertical_lines.at(1), vertical_lines.at(2)),
      rows: (horizontal_lines.at(0), horizontal_lines.at(1), horizontal_lines.at(2), horizontal_lines.at(3), horizontal_lines.at(4), horizontal_lines.at(5)),
      grid.cell(
        x: 0,
        y: 0,
        rowspan: 2,
        colspan: 1,
      )[#frames.at(0)],
      grid.cell(
        x: 1,
        y: 0,
        rowspan: 1,
        colspan: 2,
      )[#frames.at(1)],
      grid.cell(
        x: 1,
        y: 1,
        rowspan: 1,
        colspan: 2,
      )[#frames.at(2)],
      grid.cell(
        x: 0,
        y: 2,
        rowspan: 1,
        colspan: 3,
      )[#frames.at(3)],
      grid.cell(
        x: 0,
        y: 3,
        rowspan: 2,
        colspan: 2,
      )[#frames.at(4)],
      grid.cell(
        x: 2,
        y: 3,
        rowspan: 1,
        colspan: 1,
      )[#frames.at(5)],
      grid.cell(
        x: 2,
        y: 4,
        rowspan: 1,
        colspan: 1,
      )[#frames.at(6)],
      grid.cell(
        x: 0,
        y: 5,
        rowspan: 1,
        colspan: 3,
      )[#frames.at(7)],
    )
  ]

  body
}
