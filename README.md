# Employee Attrition Machine Learning Project

<p align="center">
  <img alt="Image Taken from Kredily" src="https://kredily.com/wp-content/uploads/2023/05/featured-image-quiet-quit-1024x585.png">
</p>

## Team Introduction 
Team Members: Jonny Brammah, Brennan Copp, Francis Crawford, Agustin Estupinan, Isabelle Roetcisoender 

-----

## Project Overview 
This project was all about attrition! In the wake of the great resignation, we wanted to investigate why people leave their jobs, what the most statistically significant reasons are, compared to what people say, and finally create a Machine Learning Model that predicts whether an employee is likely to leave or stay.

To answer these questions, we used information from the Bureau of Labor Statistics, job and company reviews from Glassdoor, and an HR Attrition Dataset provided by IBM.
This dataset included factors, including:
- Employee personal information (age, gender, marital status, etc.)
- Information about their jobs (department, role, years with current manager etc.)
- Compensation information (salary, recent increases, stock option, etc.)
- Employee reviews on work-life balance and culture.

-----

## Index 
TBA

## Data Sources
[<b>BLS Quitting Rates</b>](https://beta.bls.gov/dataQuery/find?q=quit+data&q=quit)

[<b>Glassdoor Job Reviews</b>](https://www.kaggle.com/datasets/davidgauthier/glassdoor-job-reviews)

[<b>IBM Employee Attrition</b>](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

-----

### The Great Resignation

The great resignation is a recent and slightly nebulous term, but describes the increase in people leaving their jobs in the wake of the COVID-19 pandemic. The Bureau of Labor Statistics tracks the "Quit rate" in the US economy, and we used this data to plot the following graph:

<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/BLS%20Graphs/Quit_Rate_Against_Time.png" alt="Great Resignation">
</p>

This data shows the quit rate in 1000s of people from 2001 to the beginning of 2023. Unsurprisingly, the quit rate drops significantly during recessions (shown by gray lines on the graph). This makes sense as people are more likely to remain in their jobs during uncertain economic times and increased layoffs. Since the great recession in 2008, the quit rate has trended upwards as the economy grew steadily, and then the quit rate decreased significantly during the brief recession in mid-2020, a result of the onset of the COVID-19 pandemic, but then recovered by the end of the year. After this recovery, the great resigniation can be seen in the patch of the graph highlighted green. This peak of quitting goes above the 2009 onwards trend, but there is some evidence of it returning back to that trajectory.

There are many reasons people may leave their jobs; to move to another company for better pay, benefits or working conditions, to change to a type of work that may be more closely alligned with their interests or passions, to look after family, study, or other non-employment related reasons, or to start their own businesses.

Our analysis will focus on how employers can aim to retain talent within their organizations, specifically to retain employees who are likely to leave to other companies. This may have the additional affect of convincing other employees to stay in the workforce with your company, but common sense would suggest an employee who plans to leave to care for family or start their own business may not be convinced to stay by a positive change to their current work environment.

-----

### What Makes an Employee Stay and Why do Employees Leave?

The Harvard Business Review, in their article [<b>Why Employees Stay</b>](https://hbr.org/1973/07/why-employees-stay) describes a state of Inertia for employees, similar to inertia in physics, where the employee is likely to stay in their current state unless there is a significant force pushing them towards leaving. An employee that feels they are growing, recognized and achieving something worthwhile in their job is likely to have a high inertia. Similarly, employees who work at organizations that they feel are alligned with their values are also likely to have high inertia in their role.

The force that can cause an employee to overcome this inertia does not need to be a large significant event (although that undoubtedly happens too), but can be the accumulation of many smaller issues. Corporate culture, relationships with their manager, and how engaged an employee is at their job are all factors that can add up slowly to cause an employee to look elsewhere.

-----

### Glassdoor Data Analysis

#### Sentiment Analysis

To back up these assertions, an analysis was conducted based on Glassdoor Reviews from current and former employees at a range of companies. Glassdoor allows reviews to rate factors like "Company culture", "Work-Life Balance" etc., as well as leave comments about the pros and cons of working at an organization.

The Natural Language Toolkit library was used to analyze the sentiment of the "Pros" and "Cons" columns to see whether former employees had lower overall sentiment scores than current employees. The VADER module within this library was used to conduct this sentiment analysis. Each review is given a sentiment score from 1 (Most likely to be positive) to -1 (Most likely to be negative), and these were aggregated over all reviews. 

The analysis of the pros column is shown below, with employees separated by their "current/former" designation and length of time spent at the company:

<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Pros%20Sentiment%20Analysis.png" alt="Glassdoor Pros Sentiment">
</p>

Similarly, the analysis of the cons column is shown below, with the same designations:

<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Cons%20Sentiment%20Analysis.png" alt="Glassdoor Cons Sentiment">
</p>

Some interesting points to note here:
- Current and Former employees express roughly the same average positive sentiment about the pros of their organization.
   - With the notable exception of former employees who were at the company for under 1 year. These employees are likely to have negative impressions of their organizations since they left (or were potentially terminated) after a short amount of time. Interns and temporary employees were removed from this analysis to ensure these reviews didn't interfer with these findings.
- However, former employees expressed significantly more negative sentiment about the cons of their organization.

<b>These graphs seem to back up our hypothesis about interia. Based on these findings, it appears employees may not be typically leaving because the "pros" aren't good enough, they are leaving because the "cons" are bad enough.</b>

#### Word Counting

To dive in further about reasons that employees were leaving, the words in the "Pros" and "Cons" sections of Glassdoor reviews were counted.

The graph for the word counts in the "Pros" section can be seen below:
<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Glassdoor%20Most%20Frequently%20Used%20'Pro'%20Words.png" alt="Glassdoor Cons Sentiment">
</p>

<b>The most common words people mentioned here are:
1) Benefits
2) People
3) Pay
4) Environment
5) Culture</b>

The graph for the word counts in the "Cons" section can also be seen below:
<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Glassdoor%20Most%20Frequently%20Used%20'Cons'%20Words.png">
</p>

<b>The most common words people mentioned here are:
1) Management
2) Hours
3) People
4) Pay
5) Employees</b>

Unsurprisingly, pay featured in both. It seems fairly unremarkable that people are likely to mention pay and benefits if they are either good or poor at their organization. Nonetheless, it is worth noting that the importance of pay cannot be overlooked for companies hoping to retain talent.

More surprisinly though, the remaining words seem to back up the earlier discussion of culture and environment having a huge impact on employee attrition. The words "People", "Culture" and "Environment" come up in the pros, with "People", "Employees" and "Management" showing up in the cons. These are all decidedly words reflecting the culture of the organization. Companies should be aware that all employees are responsible for the culture within the workforce, and that this can cause attrition unknowingly.

-----

### IBM Dataset Analysis

IBM provided a dataset that contains many columns about an employee, their job, and their compensation, and whether they left their job.

#### Statistical Analysis
A two-way anova analysis was conducted on this dataset to determine which of these factors had the highest impact on employee attrition.

 While many factors had a p-value less than 0.05, the most statistically significant were:<b>
- Environment Satisfaction
- Job Satisfaction
- On-the-job training
- Cultural Values
- Work-Life Balance</b>

This continues to back up the central thesis that culture and environment have an outsized impact on employee attrition. It also adds in two other features: how much training the employee underwent, and work-life balance. Work-life balance is an aspect of employment that looms large in society, and "hours" also featured in our Glassdoor word counting analysis, whereas training was a surprising factor to have such a significant impact, but makes sense with reflection.

#### Visualizations

## Dashboard 
<img width="475" alt="Screenshot 2023-07-17 at 8 01 43 PM" src="https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/assets/121996386/9968ac3e-d2b9-480b-b6b8-1e243a559b2a">

Average training does have a slight influence on attrition. 
The more training an employee receives, the less likely they are to be terminated or resign. 

For employees with greater work-life balance, they are less likely to be terminated or resign. 
For employees with less work-life balance, they are more likely to be terminated or resign.

<img width="473" alt="Screenshot 2023-07-17 at 8 01 54 PM" src="https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/assets/121996386/0b0ab087-5fca-4629-bc63-298c81296037">

The greater the average environment satisfaction and average job satisfaction, the less likely an employee is to be terminated or resign. 
The less the average environment satisfaction and average job satisfaction, the less likely an employee is to be terminated or resign. 

Similarly, the higher the monthly income (avg ~$7k) the less likely an employee is to resign or be terminated. 
For employees with lower monthly income (avg ~$5k) the more likely an employee is to be terminated or resign.


The Tableau story for IBM can be found [here](https://public.tableau.com/app/profile/isabelle.roetcisoender/viz/EmployeeAttrition_16896487450400/Story1?publish=yes).
The Tableau story for Glassdoor can be found [here](https://public.tableau.com/shared/WC83GR4M6?:display_count=n&:origin=viz_share_link). 


