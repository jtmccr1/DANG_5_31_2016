---
title       : Playing with data 
subtitle    : Interactive figures
author      : JT McCrone 
job         : Lauring Lab
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap,shiny,interactive]            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
---

<style>
.ninety {
   font-size: 50%;
}
</style>

## Background

* We are interested in within host diversity of influenza virus (RNA genome).
  * Translation : We do a lot of sequencing of viral swabs, and look for single nucleotide variants present at various frequencies *within a single person*

---


## Motivation

* What is the accuracy of our seqeuncing pipeline?
* How do quality metrics (e.g. Phred, MapQ) affect this accuracy?
* How do discisions made during analysis (remove duplicate reads? p value correction) affect this accuracy?


--- .ninety

## Many variables

* Whether or not to include pcr duplicate reads
* Which p value correction method to use (Bonferroni or Benjamini Hochberg)
* Should the DeepSNV error model be a binomial model or a betabinomial.
* If betabinomial should the test be onesided or twosided (two sided is recommend with large amounts of PCR amiplication) 
* What p value threshold to use
* What mapping qualilty threshold to apply (if any)
* What Phred score threshold to apply (if any)
* What read position threshold should be applied (if any)
* What frequency threshold to apply (if any)
* Should only the coding regions be included in analysis
* Should the ends of the genomic segements be excluded from analysis (if so how much should be trimmed)


---

## Experimental set up


*Fig 2 A


---

## Analysis

Go through many different iterations

---


## Shiny app!

--- .ninety

## How it works (the data)


```r
data <- read.csv("./apps/processed_data/no.dups.bonferroni.bin.sum.csv")
head(subset(data, select = c(chr, pos, ref, var, p.val, freq.var, MapQ, Read_pos, 
    Phred, category, exp.freq, gc)), n = 3)
```

```
##   chr pos ref var      p.val    freq.var     MapQ Read_pos    Phred
## 1  HA 189   A   G 0.01399133 0.003816111 39.92593 52.85185 37.66667
## 2  HA 309   T   C 0.01986235 0.001373657 39.61538 58.15385 36.96154
## 3  HA 312   T   C 0.04524906 0.001458789 40.72727 61.57576 37.72727
##   category exp.freq gc
## 1    FALSE     0.05  5
## 2    FALSE     0.05  5
## 3    FALSE     0.05  5
```
---




