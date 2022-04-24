# Pewlett-Hackard-Analysis

## Overview of the analysis: Explain the purpose of this analysis.

A SQL Database of Pewlett Hackard company was created by using information stored iin spreadsheets (in CSV files). These spreadsheets contained information on employees, departments, department-employees, salaries, department-manager, and titles. First, SQL tables were created in the database, and the data in sporeadsheets were imported to populate respective SQL tables. The primary keys and respective foreign keys were included in the tables and the type of columns of the tables were also defined. An Entity Relationship Diagram was created using Quick DBD website.

Using the ERD as a reference as well as the knowledge of SQL queries, the following tabled were generated: 
- Retirement Titles - it holds all the titles of employees who were born between January 1, 1952 and December 31, 1955). 
- Unique Titles - Because some employees may have multiple titles in the database—for example, due to promotions, a table was created that contained the most recent title of each employee using DISTINCT ON statement. 
- Retirering Titles - Then, use the COUNT() function was used to create a table that has the number of retirement-age employees by most recent job title. 
- Mentorship-Eligibility - Finally, a table was created to include only current employees inthe analysis, by excluding those employees who have already left the company. (it holds the current employees who were born between January 1, 1965 and December 31, 1965).
- Additional queries were made to obtain a) counts of eligible employees for mentoring grouped by the employment title, b) to identify the number of employees needed for each department.  

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

The ERD is shown below together with column information such as column type, primary key, and foreign key. 

![ERD](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/QuickDBD.png)

**Screenshot showing Entity Relationship Diagram (ERD) for the initial tables**

There were 133736 retiring titles in the first query for creating the table, "Retirement Titles". It had duplicate employee information for those who had promotions. 

![Retirement Titles](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/retirement_titles.png)

**Screenshot showing results for Retirement Titles**

A table that contained the most recent title of each employee had 72458 entries. 

![Unique_Titles](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/unique_titles.png)
**Screenshot showing results for Unique Titles**


The 72458 employees who were eligible for retirementincluded 25916 Senior engineers, 24926 Senior Engineers, 9285 Engineers, 1090 Assistant Engineers, 3603 Technical leaders, 7636 Staff, and 2 Managers. 

![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/retiring_titles.png)

**Screenshot showing results for Retiring Titles**

Finally, on my additional analysis, I found that there were 1549 employees who were eligible for the mentorship program that included 170 Senior Engineers, 500 Engineers, 78 Assistant Engineers, 77 Technical Leaders, 568 Senior Staff, and 156 Staff. 

![Mentorship Eligibility](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/mentorship_eligibility.png)

**Screenshot showing results for Mentorship Eligiubility**


## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

- **How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

A total of 72458 employeed will need to be filled. The details on each employment title is as follows.
  - 25916 Senior engineers
  - 24926 Senior Staff
  - 9285 Engineers
  - 7636 Staff
  - 3603 Technical leaders
  - 1090 Assistant engineers
  - 2 Managers


- **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
  - According to our analysis (and my additional search for the counts) There are 1549 eligible employees who can serve as mentors. 
  
  The number of employees who belong to each employment title is employees is as follows (**this result is from an additional query**).
  - 170 Senior engineer
  - 500 Engineer
  - 78 Assistant engineer
  - 77 Technical leader
  - 568 Senior Staff
  - 156 Staff

My opinion is that there may be insufficient number of retirement-ready employees to mentor the next generation Pewlett Hackard employees, especially for high ranking positionsIt is based on the number of employees per mentor needed according to the current schedule. It may need group sessions for mentoring, which will hinder the opportunities for one-on-one mentoring, which will be more effective. Mentoring for a group of small number of employees will also be ok.

For example, in the current scheme, 

- ~153 Senior engineers/ mentor
- ~44 Senior staff/ mentor
- ~19 Engineers/ mentor
- ~49 Staff/ mentor
- ~47 Technical leaders/ mentor
- ~ 14 Assistant engineers/ mentor
- There are no eligible managers to mentor.

There were no eligible managers to mentor some employees to fill the vacancy of the 2 retiring managers.

To identify eligible employees for mentoring program by department, another query was made to include department information into a table. 
This resulted "Null' values when used a LEFT JOIN (with mentoring_eligibility table on left), meaning that the dept-info table do not have inormation (emp_no and dept_no in the table). Therefore it needs to be updated. 

![Mentorship Eligibility_Dept](/Analysis_Projects_Folder/Pewlett-Hackard-Analysis-Folder/Data/ME-DeptInfo.png)
