# A-B-Testing-Analysis-for-Ad-Campaign-Performance-Optimization
Here is a professional README file tailored to highlight your project for HR or recruiters:

---

# A/B Testing for Ad Campaign Effectiveness

## Overview

This repository contains a project that performs an in-depth A/B test analysis to compare the effectiveness of two advertising campaigns: an "Ad" group and a "PSA" (Public Service Announcement) group. The objective is to analyze conversion rates between these groups and assess the impact of factors such as the number of ads viewed, time of day, and day of the week.

## Project Highlights

- **Data Loading and Caching**: Efficiently loads large datasets using caching techniques to optimize performance.
- **Data Cleaning & Feature Engineering**: Ensures data integrity, handles missing values, and creates meaningful features for analysis.
- **Descriptive Statistics**: Provides insights into the dataset using summary statistics and exploratory data analysis.
- **Hypothesis Testing**: Conducts a two-sample t-test to check for significant differences in conversion rates between the two groups.
- **Data Visualization**: Uses various visualizations, including bar charts and scatter plots, to visualize conversion rates and ad performance.
- **Logistic Regression**: Applies logistic regression to model the likelihood of conversion based on ad exposure and other features.
- **Power Analysis**: Performs power analysis to assess the sensitivity and effectiveness of the statistical tests used.

## Table of Contents

1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Data Processing](#data-processing)
4. [Analysis and Results](#analysis-and-results)
5. [Modeling](#modeling)
6. [Power Analysis](#power-analysis)
7. [Visualizations](#visualizations)
8. [Technologies Used](#technologies-used)
9. [How to Run the Code](#how-to-run-the-code)
10. [Conclusion](#conclusion)
11. [License](#license)

## Introduction

In this project, we explore and analyze a large dataset from an A/B test conducted to evaluate the effectiveness of an advertisement campaign (labeled 'ad') versus a control group ('psa'). We focus on assessing conversion rates, identifying key drivers, and leveraging statistical tests and machine learning techniques to determine which group performs better.

## Project Structure

The repository contains the following key files:

- `marketing_AB.csv`: Raw dataset containing information about users, ads, and conversions.
- `marketing_AB.pkl`: Cached version of the dataset (Pickle format).
- `analysis.py`: Python script performing the data analysis, hypothesis testing, and regression modeling.
- `visualizations.py`: Python script to generate visualizations for data exploration and analysis.
- `README.md`: This file, providing an overview of the project.

## Data Processing

1. **Data Loading & Caching**: The dataset is loaded either from a cached Pickle file or directly from a CSV file. This ensures efficient processing and avoids repeated reads of large datasets.
2. **Data Cleaning**: The data is cleaned by removing any missing values and duplicates. The 'converted' column is cast to integers, and a new feature, `conversion_rate`, is engineered to calculate the conversion rate per user.
3. **Feature Engineering**: We compute conversion rates based on user interactions and ad exposure.

## Analysis and Results

We perform exploratory data analysis (EDA) and describe key statistics, including the mean, standard deviation, and distribution of the conversion rates. Statistical tests, including the t-test, are used to compare the conversion rates between the ad and PSA groups.

- **Conversion Rate for 'Ad' Group**: 0.0255
- **Conversion Rate for 'PSA' Group**: 0.0179
- **t-statistic**: 7.37
- **p-value**: 1.7e-13 (indicating a significant difference in conversion rates)

## Modeling

We applied **Logistic Regression** to model the probability of conversion. The model includes:
- **Features**: Total ads viewed, test group (ad or psa), and the most common day ads were viewed.
- **Coefficients**:
    - Total Ads: 0.010159
    - Test Group (Ad vs. PSA): -0.388269
    - Most Ads Day: 0.015424

The logistic regression model shows that the number of ads viewed and the test group (ad vs psa) have significant impacts on the likelihood of conversion.

## Power Analysis

Power analysis was conducted to evaluate the sensitivity of the test and ensure it can detect significant effects. The power of the test was calculated to be **0.94**, meaning there is a 94% chance of detecting a significant difference in conversion rates if one exists.

## Visualizations

Key visualizations generated include:
- **Conversion Rates by Test Group**: A bar chart comparing conversion rates for the ad and PSA groups.
- **Conversion Rates by Hour of Ad Exposure**: A bar chart to visualize how conversion rates vary by the hour ads are viewed.
- **Logistic Regression Prediction**: A scatter plot showing predicted probabilities of conversion vs. total ads viewed.

## How to Run the Code

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/AB_Testing_Project.git
   cd AB_Testing_Project
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run the analysis script:
   ```bash
   python A-B-Testing.ipynb
   ```

Make sure you have the `marketing_AB.csv` file in the project directory.

## Conclusion

The analysis demonstrates that the 'ad' group has a higher conversion rate compared to the 'PSA' group. The statistical test confirmed that this difference is significant. Additionally, the logistic regression model provides insights into which factors most influence the likelihood of conversion, enabling data-driven decisions for future ad campaigns.
