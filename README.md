# Aviation Accident Analysis

This repository contains the analysis of aviation accidents using the NTSB Census of US Civil Aviation Accidents dataset. The goal of this project is to predict the causes of aviation accidents using surface-level features and to understand the factors contributing to these accidents.

## Dataset

The dataset used in this analysis is the NTSB Census of US Civil Aviation Accidents, which includes extensive information on aviation accidents and incidents since 2008. The data was last updated on April 23rd, 2024.

## Data Collection

Data was downloaded from the NTSB website. The NTSB distributes the data in an MDB file, which was loaded into Microsoft Access. The relevant tables were then exported as Excel files and converted into CSV files for loading into a MySQL server. Columns with entirely null values and unimportant data were dropped.

## Background

This project is inspired by the work of Xiaoge Zhang, Prabhakar Srinivasan, and Sankaran Mahadevan in their paper "Sequential deep learning from NTSB reports for aviation safety prognosis". The goal is to reverse their approach by predicting the cause of the accident using surface-level features.

## Problem Statement

1. Can surface-level features (e.g., data that can be immediately gathered at the beginning of an investigation) be used to predict the cause of the accident?
2. What does this tell us about the causes of accidents?

## Data Cleaning

The cleaning process involved filtering the events table, cleaning each column, merging child tables, and performing early exploratory data analysis (EDA). Columns with repetitive or irrelevant data were dropped to maintain data quality.

## Exploratory Data Analysis (EDA)

- **Tests Performed**: Chi^2 Test for Association, Correlation Test, One-Way-ANOVA Test.
- **Encoding**: Tested One-Hot-Encoding, Binary Encoding, and Feature Hash Encoding. Binary Encoding was chosen for its performance.

## Modeling

- **Model Used**: Random Forest Classifier.
- **Train-Test Split**: 85%-15%.
- **Cross-Validation**: 10-fold.
- **Performance**:
  - **Accuracy**: 82.94%
  - **Recall**: 71.05%
  - **Precision**: 46.43% (Low-Bound), 71.05% (High-Bound)

## Results

The model was most accurate at predicting the following classes:
- **12**: Aircraft-Aircraft Systems
- **16**: Aircraft-Aircraft Oper/Perf/Capability
- **24**: Personnel-Action/Decision
- **26**: Personnel-Task Performance
- **32**: Environmental-Physical Environment
- **33**: Environmental-Conditions/Weather/Phenomena

## Interpretation

1. **Surface-Level Features**: These features can generally predict the cause of the accident with reasonable accuracy.
2. **Influential Factors**: Temperature, crew age, wind velocity, number of passenger and flight crew seats, day of the week, and month of the flight are significant factors for the accurate prediction of accident cause. This provides a starting point for the focusing of mitigation efforts into preventing future aviation accidents.

## Model Issues and Future Work

The model performs best on common causes but struggles with obscure ones. Future improvements could include upsampling underrepresented causes, downsampling common causes, or using a model with class weighting.

## Acknowledgements

Special thanks to:
- Dr. Shashi Jha (Fmr. College of Charleston) for guidance.
- Jess Thomas (NTSB) for sharing the causes corresponding to the finding codes.
- Xiaoge Zhang, Prabhakar Srinivasan, and Sankaran Mahadevan for their inspiring work.
