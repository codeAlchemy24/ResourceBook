#let Page(name, logo, desc, links, colors: (fg: white, bg: green)) = {
  set page(
    fill: colors.fg,
    background: box(fill: colors.bg, height: 100%, width: 100%)
  )
  align(center)[
    #grid(
      columns: (1fr, 1fr),
      grid(
        columns: (auto),
        row-gutter: 20pt,
        name,
        desc
      ),
      circle(fill: white, radius: 50pt)[
        #align(center + horizon)[
          #image(logo)
        ]
      ]
    )
  ]
}

#Page("Python", "assets/python_logo.png", "A Cool programming language", (A: "A", B: "B"))