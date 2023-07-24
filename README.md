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

#### Glassdoor Data Analysis

To back up these assertions, an analysis was conducted based on Glassdoor Reviews from current and former employees at a range of companies. Glassdoor allows reviews to rate factors like "Company culture", "Work-Life Balance" etc., as well as leave comments about the pros and cons of working at an organization.

The Natural Language Toolkit library was used to analyze the sentiment of the "Pro

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


