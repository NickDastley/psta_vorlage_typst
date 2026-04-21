#let template(
  titleDE: "Deutscher Titel\nMaximal zwei Zeilen",
  titleEN: "English Title\nTwo lines at most",
  student: "Nico Dilger",
  matrnr: "22302719",
  submissiondate: "XX. Monat 20XX",
  supervisor: "Prof. Dr. <PROFESSOR>",
  secsupervisor: "Prof. Dr. <ZWEITPRÜFER>", // Set to none if no second supervisor is required
  faculty: "Angewandte Informatik",
  
  studies: "Bachelor Künstliche Intelligenz",
  
  degree: "Bachelor of Science (B.Sc.)",
  
  abstract: [The abstract goes here],
  doc,
) = {
  // Document setup
  set document(title: titleDE, author: student)
  set text(font: "Libertinus Serif", lang: "de", size: 11pt)
  set page("a4", numbering: "i")
  
  // Heading setup
  show heading: set block(above: 1.4em, below: 1em)
  
  // ===================================
  // Title Page
  // ===================================
  align(center)[
    #v(3cm)
    #text(size: 20pt, weight: "bold")[#titleDE]
    
    #v(1cm)
    #text(size: 16pt)[#titleEN]
    
    #v(2.5cm)
    #text(size: 14pt)[
      Prüfungsstudienarbeit \
      // für den Erwerb des Grades \
      // *#degree* \
      
      im Studiengang #studies \
      an der Fakultät #faculty
    ]
    
    #v(2.5cm)
    #text(size: 14pt)[
      Vorgelegt von: \
      *#student* \
      Matrikelnummer: #matrnr \
    ]
    
    #v(1.5cm)
    #text(size: 14pt)[
      Betreuer: #supervisor \
      #if secsupervisor != none [Zweitprüfer: #secsupervisor \ ]
    ]
    
    #v(1.5cm)
    #text(size: 14pt)[
      Eingereicht am: #submissiondate
    ]
  ]
  
  pagebreak()
  
  // ===================================
  // Declaration of originality
  // ===================================
  heading(level: 1, outlined: false)[Eigenständigkeitserklärung]
  
  [
    Ich erkläre hiermit, dass ich die vorliegende Arbeit selbstständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel verwendet habe. \ \
    
    #v(2cm)
    #line(length: 100%, stroke: 0.5pt)
    Ort, Datum #h(1fr) Unterschrift
  ]
  
  pagebreak()
  
  // ===================================
  // Abstract
  // ===================================
  heading(level: 1, outlined: true)[Abstract]
  abstract
  
  pagebreak()
  
  // ===================================
  // Table of Contents
  // ===================================
  outline(title: "Inhaltsverzeichnis", depth: 3, indent: auto)
  
  pagebreak()
  
  // ===================================
  // Main content setup
  // ===================================
  set page(numbering: "1")
  counter(page).update(1)
  set heading(numbering: "1.1")
  
  doc
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// Replace these values or uncomment properties below
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#show: doc => template(
  // Configure arguments here if needed...
  //
  // For example:
  // titleDE: "Neuer Titel",
  
  doc // This injects the main document text
)

= Einleitung
Der Hauptinhalt der Arbeit beginnt hier.

// TODO: Replace references.bib with your actual bibliography file 
// #bibliography("references.bib", style: "ieee")