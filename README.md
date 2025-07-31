# EC223 STATA Analysis Repository

STATA scripts and econometric analysis for EC223 coursework, including housing price analysis, obesity data modeling, and Poisson regression studies.

## 📊 Overview

This repository contains STATA do-files, datasets, and visualizations for EC223 econometrics coursework including housing price analysis, obesity data modeling, and statistical graph generation.

## 🗂️ Repository Structure

```
├── do-files/          # STATA script files (.do, .smcl)
│   ├── EC223 Stata session #2.smcl
│   ├── STATA session 1.smcl
│   ├── do file #3.do
│   ├── do-file stata#2.do
│   └── final_project_ec223.do
├── data/              # Datasets (.dta files)
│   ├── HousingPriceData_video4_assignment1.dta
│   ├── ObesityData_StataSession.dta
│   ├── ObesityData_video4_assignment2.dta
│   └── final_projects_223.dta
├── graphs/            # Generated visualizations (.gph files)
│   ├── Graph 1.gph - Graph 6.gph
│   ├── combined.gph
│   ├── housingpricesgoldenoaks.gph
│   └── housingpricesuniversitytown.gph
└── output/            # Analysis results and documentation
```

## 🔧 STATA Scripts

### Course Assignments
- **EC223 Session Scripts** - Interactive STATA sessions and class exercises
- **Housing Price Analysis** - Video assignment analyzing housing market data
- **Obesity Data Modeling** - Statistical analysis of health and demographic data
- **Final Project EC223** - Comprehensive econometric analysis

### Data Analysis
- **Descriptive Statistics** - Summary stats and data exploration
- **Regression Analysis** - OLS and advanced regression techniques
- **Poisson Regression** - Count data modeling and analysis
- **Comparative Analysis** - Cross-regional housing price comparisons

### Visualizations
- **Statistical Graphs** - Publication-ready plots and figures
- **Housing Market Plots** - Regional price comparison visualizations
- **Combined Graphics** - Multi-panel analytical displays

## 📋 Requirements

- **STATA Version:** 15.0 or higher
- **Required Packages:** 
  - `estout` (for formatted tables)
  - `outreg2` (for regression output)
  - `coefplot` (for coefficient plots)
  - `asdoc` (for Word output)

## 🚀 Getting Started

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/stata-analysis.git
```

2. **Install required STATA packages**
```stata
ssc install estout
ssc install outreg2
ssc install coefplot
ssc install asdoc
```

3. **Set working directory in STATA**
```stata
cd "path/to/ec223-stata-analysis"
```

4. **Run course assignments**
```stata
do "final_project_ec223.do"
do "do-file stata#2.do"
do "do file #3.do"
```

## 📈 Analysis Workflow

1. **Data Import & Cleaning** - Import raw data and perform initial cleaning
2. **Exploratory Analysis** - Generate descriptive statistics and visualizations
3. **Model Specification** - Run regression models and diagnostic tests
4. **Results Export** - Create formatted tables and graphs for publication

## 📁 Datasets

- **Housing Price Data** - Regional housing market analysis datasets
- **Obesity Data** - Health and demographic variables for statistical modeling
- **EC223 Project Data** - Comprehensive dataset for final course project

*All datasets are in STATA (.dta) format and include variable labels and documentation.*

## 📊 Output Examples

- Housing price regression tables and coefficient plots
- Obesity data analysis with Poisson regression results
- Regional comparison graphs (Golden Oaks vs University Town)
- Combined statistical visualizations for presentations

## 🔄 Reproducibility

All analyses are fully reproducible with provided do-files. STATA session files (.smcl) document the complete analysis process and interactive sessions.

## 📚 Documentation

Each do-file includes:
- Clear commenting and section headers
- Variable definitions and data sources
- Model specifications and assumptions
- Interpretation of results

## 🤝 Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Add clear comments to your STATA code
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📧 Contact

For questions about the analysis or coursework, please contact dthanhng@bu.edu.

---

**Keywords:** STATA, EC223, Econometrics, Housing Price Analysis, Obesity Data, Poisson Regression, Boston University
