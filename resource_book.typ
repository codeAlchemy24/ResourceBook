#let Page(name, logo, desc, links, colors: (fg: white, bg: green)) = {
  set page(
    fill: colors.fg,
    background: box(fill: colors.bg, height: 100%, width: 100%)
  )
  grid(
    columns: (1fr, 1fr),
    grid(
      columns: (auto),
      row-gutter: 20pt,
      name,
      desc
    ),
    image(logo)
  )
}

#Page("Python", "python_logo.svg", "A Cool programming language", (A: "A", B: "B"))