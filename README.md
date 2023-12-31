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
1. [<b>The Great Resignation</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#The-Great-Resignation)
2. [<b>What Makes an Employee Stay and Why do Employees Leave?</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#What-Makes-an-Employee-Stay-and-Why-do-Employees-Leave?)
3. [<b>Glassdoor Data Analysis</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Glassdoor-Data-Analysis)
    - [<b>Sentiment Analysis</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Sentiment-Analysis)
    - [<b>Word Counting</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Word-Counting)
4. [<b>IBM Dataset Analysis</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#IBM-Dataset-Analysis)
    - [<b>Statistical Analysis</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Statistical-Analysis)
    - [<b>Visualizations</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Visualizations)
5. [<b>Machine Learning Models</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Machine-Learning-Models)
6. [<b>Recommendations</b>](https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/README.md#Recommendations)
   
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

To investigate further, the impact of work-life balance on employee attrition, we looked at how IBM employees rated their work-life balance against whether they stayed or left:
<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/IBM%20Graphs/Work-life-balance%20vs%20attrition.png">
</p>

While you can see the employees' average work-life balance ratings are fairly low (around 2.65 out of 5), the employees who left ("Yes") did rate their work-life balance as lower, compared to those that stayed.

Similarly, looking at Glassdoor ratings for work-life balance, we can see that employees who left ("Former") consistently rate their work-life balance at their company than current employees at companies do:
<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Work-Life-vs-Attrition.png">
</p>

To consider training, we also looked at how IBM rated their training times last year, split-up into those who left and those who stayed:
<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/IBM%20Graphs/Training%20vs%20attrition.png">
</p>

Showing that employees who rated themselves as recieving more/better training last year were more likely to stay ("Yes"). This was not a factor we had considered previously, but clearly has an impact.

<b>It is worth noting that all of these differences in ratings are small between employees who left and those stayed, but this backs up the original point that these small impacts can build up to overcome the employee's interia.</b>

To further illustrate this point, employee Glassdoor reviews for several factors (Diversity and Compensation) are shown below, with "Former" employees always rating them slightly but significantly below "Current" employees:
<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Comp-and-Benefits-vs-Attrition.png">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/main/Output/Glassdoor%20Graphs/Diversity-vs-Attrition.png">
</p>

The Tableau story for IBM can be found [here](https://public.tableau.com/app/profile/isabelle.roetcisoender/viz/EmployeeAttrition_16896487450400/Story1?publish=yes).
The Tableau story for Glassdoor can be found [here](https://public.tableau.com/shared/WC83GR4M6?:display_count=n&:origin=viz_share_link). 

-----

### Machine Learning Models

Two models were created to predict whether an employee would leave based on the fields in the IBM Dataset:
- Logistic Regression
- Neural Network

The logistic regression model had a balanced accuracy (even after random oversampling) of 75%, whereas the first attempt with the neural network model yielded an accuracy of 87%. As such, the neural network model was selected for optimization.

The final neural network model, optimized using Keras-Tuner, consisted of one hidden layer and had an accuracy of just over 90% on the testing set.

<p align="center">
  <img src="https://github.com/jonnybrammah/Employee-Attrition-Machine-Learning-Project-/blob/main/Output/ML%20Model%20Image.png">
</p>

Previous attempts utilized more hidden layers, and had extremely high accuracy on the training set, but a notably lower accuracy on the testing set. This implied the model was overfitting on the training data, and so in this case fewer hidden layers was optimal.

There are significant implications to a neural network machine learning model that can predict whether an employee is likely to leave with high accuracy. The main one being that this means that HR departments and managers can respond proactively to the concerns of employees likely to leave, rather than reactively after finding out they are leaving.

-----

### Recommendations

Our final recommendations to companies hoping to retain their employees can be divided into short-term and long-term:

#### Short-term
These are things that do not require much capital investment, but that came up again and again in our analysis:
- <b>Culture and Environment</b>
   - Both of thse came up in different ways in glassdoor reviews, in "people", "managament"
   - Work-Life balance was also mentioned and employees who left rated it signicantly lower
   - Similarly, these were statistically significant in our R analysis, and was mentioned in our initial research.
   - Management should ve very careful about the culture that is cultivated in the organization, and take pains to make sure it is lived and experienced by employees.

#### Long-term
These recommendations are likely to have spending implications, but came up a lot:
- <b>On the job training</b>
   - This came up as a factor in both our IBM analysis and our Glassdoor reviews, with employees receiving more training less likely to leave
- <b>Upwards Career Progression</b>
   - People with lower job satisfaction and less engagement in work were shown to be more likely to leave.
   - Growth was mentioned consisntely in Glassdoor reviews and employees need to know there is space for them to be challenged and grow in their roles.
- <b>Pay</b>
   - This is unsurpsing, but pay was mentioned heavily in both the "Pros" and the "Cons" of Glassdoor reviews. This impacts significantly on whether people feel appreciated.
   - Similarly, former employees consistently rate pay as less good than employees who remain. This can be a sigificant force to overcome employee intertia.

