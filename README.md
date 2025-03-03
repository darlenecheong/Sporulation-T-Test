# 📈 Bacterial Sporulation T-Test Analysis
An R script for performing two-sample t-tests to compare sporulation efficiency between wild-type and mutant *Bacillus subtilis* strains.
<br><br>

## R Script
Please view the R script 🔗[here](t-test.R).
- *Data can be viewed [here](sporulation_data.csv)*
<br><br>

## Context
Bacteria, fungi, and protists form resilient, metabolically dormant spores. Pathogenic bacteria like *Clostridioides difficile* produce antimicrobial-resistant spores, posing clinical challenges. This analysis, as part of my honors thesis, investigated protein roles in bacterial sporulation by comparing the wild-type strain PY79, a reference strain of *Bacillus subtilis* (a model organism for studying sporulation), to three mutant strains, notably the Δ*prkA* mutant which lacks the PrkA protein involved in sporulation. The other two mutant strains retain PrkA but have a fluorescent protein linked to it for visualization. Using R and Welch’s t-test, we analyzed sporulation efficiency, defined as the ratio of cells that successfully form spores, with a value of 1.0 indicating optimal spore formation. The results provided valuable insights into how specific genetic modifications affect sporulation efficiency, contributing to our understanding of bacterial resistance mechanisms and informing strategies to combat antimicrobial-resistant spores in clinical environments.

<sup><sub>Word Count: 127 words</sub></sup>
<br><br>

## Results and Analysis
The expected results should show that the Δ*prkA* mutant is the only strain with a statistically significant decrease in sporulation efficiency compared to the wild-type. Welch’s t-test confirmed this, yielding a significant result for the wild-type vs. Δ*prkA* comparison (t = 6.7897, df = 3, p = 0.006531), with the wild-type having a higher mean efficiency (1.000) than the Δ*prkA* strain (0.5378). In the comparison of wild-type versus prkAΩprkA-gfp, the p-value was 0.07805, suggesting a marginally significant difference, with the wild-type strain again showing a higher mean (1.000) compared to the *prkAΩprkA-gfp* strain (0.8001). Finally, the comparison between wild-type and *glt::prkA, prkAΩprkA-gfp* returned a p-value of 0.8954, indicating no significant difference in means, as both strains had similar mean values (1.000 vs. 1.0355). These findings suggest that PrkA plays an important role in sporulation, as the Δ*prkA* strain exhibited much lower sporulation efficiency compared to the wild-type. Welch’s t-test was chosen to test whether the means of the two strains/groups are equal or not, as well as its ability to handle unequal variances between groups. The limitations of this statistical analysis include the small sample size, potential experimental errors, and the assumption that the data is normally distributed.

<sup><sub>Word Count: 198 words</sub></sup>
<br><br>

## Two-sample T-test Tables
![Wild-type-vs-ΔprkA](T-TestTables/Wild-type-vs-ΔprkA)
![Wild-type-vs-prkAΩprkA-gfp](T-TestTables/Wild-type-vs-prkAΩprkA-gfp)
![Wild-type-vs-ΔprkA](T-TestTables/Wild-type-vs-ΔprkA)
<br><br>

## R Output
![R-output](R-output.png)
<br><br>

## Additional Information
For more context and/or information about my honors thesis, please view my [manuscript](Thesis_DarleneCheongSzeWei.pdf).
<br><br>

## Language Used
- **R**
