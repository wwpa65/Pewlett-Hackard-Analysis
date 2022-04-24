# Pewlett-Hackard-Analysis

## Overview of the analysis: Explain the purpose of this analysis.

A SQL Database of Pewlett Hackard company was created by using information stored iin spreadsheets (in CSV files). These spreadsheets contained information on employees, departments, department-employees, salaries, department-manager, and titles. First, SQL tables were created in the database, and the data in sporeadsheets were imported to populate respective SQL tables. The primary keys and respective foreign keys were included in the tables and the type of columns of the tables were also defined. An Entity Relationship Diagram was created using Quick DBD website.

Using the ERD as a reference as well as the knowledge of SQL queries, the following tabled were generated: 
- Retirement Titles - it holds all the titles of employees who were born between January 1, 1952 and December 31, 1955). 
- Unique Titles - Because some employees may have multiple titles in the database—for example, due to promotions, a table was created that contained the most recent title of each employee using DISTINCT ON statement. 
- Retirering Titles - Then, use the COUNT() function was used to create a table that has the number of retirement-age employees by most recent job title. 
- Mentorship-Eligibility - Finally, a table was created to include only current employees inthe analysis, by excluding those employees who have already left the company. (it holds the current employees who were born between January 1, 1965 and December 31, 1965). 

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
![ERD](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/QuickDBD.png)

**Screenshot showing Entity Relationship Diagram (ERD) for the initial tables**

![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/retirement_titles.png)

**Screenshot showing results for Retirement Titles**

![Unique_Titles](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/unique_titles.png)
**Screenshot showing results for Unique Titles**

![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/retiring_titles.png)

**Screenshot showing results for Retiring Titles**


![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/mentorship_eligibility.png)

**Screenshot showing results for Mentorship Eligiubility**

Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program
Deliverable 3: A written report on the employee database analysis (README.md)



## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  - 25916 Senior engineers
  - 24926 Senior Staff
  - 9285 Engineers
  - 7636 Staff
  - 3603 Technical leaders
  - 1090 Assistant Managers
  - 2 Managers


- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  - According to our analysis (and my additional search for the counts) There are 1549 eligible employees who can serve as mentors. 
  The breakdown of these employees according to the employment itle is as follows:
  - 170 Senior engineer
  - 500 Engineer
  - 78 Assistant engineer
  - 77 Technical leader
  - 568 Senior Staff
  - 156 Staff

My opinion is that there iare sufficient number of retirement-ready employees to mentor the next generation Pewlett Hackard employees. However, there is no eligible managers to mentor some employees to fill the vacancy of the 2 retiring managers.


