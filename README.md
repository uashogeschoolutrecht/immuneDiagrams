# immune_diagrams R data and code package

## Scope
This R package contains code and data for reproducing the analysis and figures in the publication:

**Exercise-induced kinetic changes of leukocyte subsets as markers for immunological resilience. Kartaram, et al., 2023, submitted**

## Abstract
The kinetic responses of leukocyte subsets to exercise and its recovery might serve as an indicator for immunological resilience. The purpose of this study was to investigate the time-dependent response of different subsets of leukocytes in healthy young men to exercise by applying a bicycle ergometer test. Fifteen recreationally active male cyclists (20-35 years, VO2max 56.9 ± 3.9 ml kg−1 min−1) performed in a cross-over design 4 exercise protocols of 1-h duration: at 70% maximal workload (Wmax) in a hydrated and a mildly dehydrated state, at 50% Wmax, and intermittently at 85/55% Wmax in blocks of 2 min. Numbers of lymphocytes, monocytes, neutrophils, eosinophils, basophils, thrombocytes and NK cells (CD16 and CD56) were measured at different timepoints up to 24 h post-exercise. Data were analyzed using a multilevel mixed linear model with multiple test correction. Total leucocyte numbers and that of most subsets increased from the start of exercise, reaching maximum levels at 30 - 60 minutes during exercise. Neutrophil numbers, however, peaked 3 hours post-exercise. CD16brightCD56dim NK cells showed a 1.5 fold more increase compared to CD16brightCD56bright NK cells. Other than for MCP-1, no significant differences were found in serum cytokine levels. Our findings show that exercise intensity is reflected in different time-dependent changes of leukocyte subsets and support the concept that the exchange of immune cells between peripheral blood and tissues  contributes to enhanced immune surveillance during strenuous exercise.

## Installation
Run the following code in R to install the `{immune_diagrams}` package:

```
install.packages("pak")
pak::pkg_install("uashogeschoolutrecht/immune_diagrams")
```

or run in a terminal:

```
git clone https://github.com/uashogeschoolutrecht/immune_diagrams
```

and in R

```
install.packages("pak")
pak::local_install()
```
This last step will install the package locally from the github clone.

## Features




