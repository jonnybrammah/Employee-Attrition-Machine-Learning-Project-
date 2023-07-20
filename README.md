# Employee-Attrition-Machine-Learning-Project

## Team Introduction 
Team Members: Jonny Brammah, Brennan Copp, Francis Crawford, Augustin Estupinan, Isabelle Roetcisoender 

## Project Overview 
Our project focus is to create a machine-learning model that predicts employee attrition based on a number of factors such as age, ethnicity, gender, job satisfaction, salary, hours per week, and work-life balance. 

Our group is interested in understanding the underlying causes of workers who chose to resign from their jobs. 

## Index 
TBA

## Data Sources
[BLS Quitting Rates](https://beta.bls.gov/dataQuery/find?q=quit+data&q=quit)

[Glassdoor Job Reviews](https://www.kaggle.com/datasets/davidgauthier/glassdoor-job-reviews)

[HR Analytics: Job Change of Data Scientists](https://www.kaggle.com/datasets/arashnic/hr-analytics-job-change-of-data-scientists)

[IBM Employee Attrition](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

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

<div class='tableauPlaceholder' id='viz1689823769824' style='position: relative'><noscript><a href='#'><img alt='Story 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;FT&#47;FT7TW9JHM&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='path' value='shared&#47;FT7TW9JHM' /> <param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;FT&#47;FT7TW9JHM&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1689823769824');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='1016px';vizElement.style.height='991px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
