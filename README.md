# HR-Absenteeism-at-work-from-2019---2020
 This project focuses on the Absenteeism at work data to gain insights into the Human Resource workers trends and the impact on workload. I utilized SQL to extract, transform and analyze data from a database containing information on Absenteeism Reason for being absent, the average workload that the impact has on the Company, the total hours of absenteeism accumulated over a year period, the Body Mass Index.
 DATA EXTRACTION AND CLEANING
 
SQL and Excel was used to extract relevant absenteeism data from the HR databases and create a unified dataset
Handling missing values Central tendency imputation methods like mean, median and mode
Identifying and correcting erroneous data points in the SQL tables

DATA TRANSFORMATION AND TRANSFORMATION

SQL functions (Date calculation, group by, case statements etc) to transform extracted data
Computing absenteeism KPIs like instances, days for trends analysis
Joining datasets such as combining attendance logs with medical history and seasonal data
Flagging attributes like obese/overweight based on standard BMI thresholds

DATA ANALYSIS

Statistical analysis - correlation, regression modeling, significance testing to quantify impacts
Descriptive analysis - summary tables (% contribution), parameter estimates
Diagnostics - seasonality tests, ANOVA analysis on BMI differences
Excel, PowerBI for visualized data storytelling

DESCRIPTIVE STATISTICS

Absence Frequency

Number of Employees Analyzed: 740
Total Absence Instances: 5,880 occurrences
Average Absences per Employee: 7.8 days annually
This shows that on average, each employee was absent for 7.8 days during the year.

Absence Distribution

Percentage of Absences in Autumn: 32%
Percentage of Absences in Winter: 32%
Percentage of Medical Leave Instances: 20% of total
Nearly two-thirds of absences took place in Autumn and Winter months. 1 in 5 instances were medical leaves.

Seasonality Impact

Multiple regression analysis was used to assess predictors of absenteeism.
Season alone accounts for 32% of the leave variance (R2 = 0.32, p < 0.01)
Employees working during Autumn-Winter months had on average 43% more inactive days (β1 = 0.43, p < 0.05) compared to the annualized mean
This indicates strong seasonality effects driving increased absenteeism during certain quarters of the year.

BMI Distribution

51% employees were overweight/obese which can increase health issues
We found a correlation between higher BMI and absence days
Employees with BMI over 30 had 30% more inactive days compared to those with BMI under 25
So body weight issues seem to impact absenteeism
Percent of Overweight Employees (BMI 25-30): 34%
Percent of Obese Employees (BMI>30): 17%
Over 50% of employees were either overweight or obese, indicating health risks.
Employees with higher BMI took 30% more leaves on average
Strong positive correlation of 0.7 found between rising BMI and number of sick leaves
The descriptive statistics clearly show problematic areas of seasonal concentration of leaves, medical causes comprising 1/5th of absences and risks from obesity levels in a sizable share of employees.

TREND ANALYSIS

64% leaves concentrated in Autumn, Early Winter months
20% directly linked to doctor visits per records

VISUALIZATION

Exported the sorted and manipulated dataset to a CSV file into a Power BI. Within Power query, redefined the datasets and grouped each employee by hours of Absenteeism, Body Mass Index, number of reasons they gave for being absent and how often were those reasons given using Data Analysis Express (DAX). Utilized Power BI to visualize data and generate meaningful charts and graphs.


RECOMMENDATIONS 

Employee Engagement Survey: Conduct an employee engagement session to understand employee perceptions, job satisfaction, and work-life balance as these can provide valuable insights into the reasons behind health-related absenteeism.

 
Wellness Programs Evaluation: The company should implement wellness programs, evaluate their effectiveness in reducing absenteeism. Compare absenteeism rates before and after the introduction of wellness programs to assess their impact on employee health and overall well-being.

Benchmarking: Compare company's absenteeism rates with industry benchmarks. This can provide context and help identify whether the company's rates are within the expected range or if there is room for improvement.

Cost Analysis: Estimate the financial impact of absenteeism on the Company. Consider factors such as productivity loss, overtime costs, and potential impacts on team dynamics. This can help in making a business case for investing in employee health and wellness initiatives.

