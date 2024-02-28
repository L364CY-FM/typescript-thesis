#let titlepage(
  title: "",
  degree: "",
  program: "",
  supervisor: "",
  advisors: (),
  author: "",
  startDate: none,
  submissionDate: none,
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "de"
  )

  set par(leading: 1em)

  
  // --- Title Page ---
  v(1cm)
  align(center, image("../figures/logo.png", width: 30%))

  v(5mm)
  align(center, text(font: sans-font, 2em, weight: 700, "Hochschule für Technik, Wirtschaft und Kultur"))

  v(5mm)
  align(center, text(font: sans-font, 1.5em, weight: 100, "Fakultät für Digitale Transformation"))
  
  v(15mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, degree))
  v(8mm)
  

  align(center, text(font: sans-font, 2em, weight: 700, title))

  pad(
    top: 3em,
    right: 15%,
    left: 15%,
    if advisors.len() > 0 {
    grid(
      columns: 2,
      gutter: 1em,
      strong("Author: "), author,
      strong("Supervisor: "), supervisor,
      strong("Advisors: "), advisors.join(", "),
      strong("Start Date: "), startDate,
      strong("Submission Date: "), submissionDate,
    )
    } else {
      grid(
      columns: 2,
      gutter: 1em,
      strong("Author: "), author,
      strong("Supervisor: "), supervisor,
      strong("Start Date: "), startDate,
      strong("Submission Date: "), submissionDate,
      )
    }
  )

  pagebreak()
}