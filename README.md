# G-Quadruplicata: G-Quadruplex Sequence Analysis Tool

**G-Quadruplicata** is a bioinformatics web application designed for detecting potential G-quadruplexes (G4s) in DNA sequences using the **G4Hunter** algorithm. This tool offers an intuitive interface for exploring G-quadruplex structures and provides downloadable reports, plots, and sequence data.

### 🔗 **Access the App Here:**
[**G-Quadruplicata Web App**](https://janovapp.shinyapps.io/Gquadruplicata/)

---

## Features

- **Upload DNA sequences** in FASTA format.
- **Customizable analysis parameters** such as window size, score threshold, and plot color.
- **Downloadable outputs**:
  - PDF report with sequence name, plot, and scores.
  - PNG graph of the G-quadruplicata score.
  - CSV file of all sequences with corresponding scores, including sequences that scored zero.
  
---

## Workflow

1. **Upload** a DNA sequence in FASTA format.
2. **Adjust parameters** such as window size, score threshold, and plot line color.
3. **SUBMIT**.
4. **Analyze** the sequence to compute G-quadruplicata scores.
5. **Visualize** the scores using an interactive plot.
6. **Download** a PDF report, the plot as PNG, or all sequences as CSV.
![G-quadruplicata workflow](MohammadHichamPolo/G-quadruplicata/www/workflow.gif)
---

## Download Previews

### 1. PNG Graph Preview

Here’s a preview of the score graph that you can download after analyzing your sequence:

![G-quadruplicata Score Plot](MohammadHichamPolo/G-quadruplicata/G_quadruplicata_plot2024-10-27.png)

---

### 2. CSV File Preview

After analysis, you can download a CSV file containing the sequences with their G4Hunter scores. Here's a snapshot of what the CSV might look like:

| ID | Position | length | Score | Sequence                  |
|----|----------|--------|-------|---------------------------| 
| 1  | 100      | 25     | 1.20  | TTTGGGGGTGGCTCAACCCGAGGGG |
| 2  | 101      | 25     | 1.36  | TTGGGGGTGGCTCAACCCGAGGGGG |
| 3  | 102      | 25     | 1.36  | TGGGGGTGGCTCAACCCGAGGGGGT |

*Example rows of the CSV file.*

Download the full CSV [here](MohammadHichamPolo/G-quadruplicata/G_quadruplicata_Scores_2024-10-27.pdf).

---

### 3. PDF Report Preview

The downloadable PDF report includes the sequence name, G4Hunter score plot, and a detailed table of sequences with their G4Hunter scores. Here’s a preview of the PDF report layout:

![PDF Report Preview](MohammadHichamPolo/G-quadruplicata/GG_quadruplicata_Report_2024-10-27.pdf)

You can download a full PDF report [here](MohammadHichamPolo/G-quadruplicata/GG_quadruplicata_Report_2024-10-27.pdf).

---

## About G-Quadruplicata

**G-Quadruplicata** was inspired by the need to create an accessible and interactive tool for researchers exploring G-quadruplex structures. Building on the G4Hunter algorithm, this app enhances user experience by integrating features like color customization, easy-to-download outputs (PDF, PNG, and CSV), and intuitive visualization.

---

---

## About the Developer

**G-Quadruplicata** was developed by *Mohammad HICHAM POLO*, merging bioinformatics with web development to create an efficient tool for G-quadruplex research. Feel free to connect on [LinkedIn](https://www.linkedin.com/in/mohammad-hicham-polo-071043269/).

---

## License

This project is licensed under the GNU-GPL License - see the [LICENSE](LICENSE) file for details.
