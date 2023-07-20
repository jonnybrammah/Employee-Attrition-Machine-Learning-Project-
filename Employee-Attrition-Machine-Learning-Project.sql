DROP table if exists ibm; 

	CREATE TABLE "ibm" (
		"RowNum" INT NOT NULL PRIMARY KEY, 
		"Age" INT NOT NULL,
		"Attrition" VARCHAR NOT NULL,
		"BusinessTravel" VARCHAR NOT NULL,
		"DailyRate" INT NOT NULL,
		"Department" VARCHAR NOT NULL,
		"DistanceFromHome" INT NOT NULL,
		"Education" INT NOT NULL,
		"EducationField" VARCHAR NOT NULL,
		"EnvironmentSatisfaction" INT NOT NULL,
		"Gender" VARCHAR NOT NULL,
		"HourlyRate" INT NOT NULL,
		"JobInvolvement" INT NOT NULL,
		"JobLevel" INT NOT NULL,
		"JobRole" VARCHAR NOT NULL,
		"JobSatisfaction" INT NOT NULL,
		"MaritalStatus" VARCHAR NOT NULL,
		"MonthlyIncome" INT NOT NULL,
		"MonthlyRate" INT NOT NULL,
		"NumCompaniesWorked" INT NOT NULL,
		"OverTime" VARCHAR NOT NULL,
		"PercentSalaryHike" INT NOT NULL,
		"PerformanceRating" INT NOT NULL,
		"RelationshipSatisfaction" INT NOT NULL,
		"StandardHours" INT NOT NULL,
		"StockOptionLevel" INT NOT NULL,
		"TotalWorkingYears" INT NOT NULL,
		"TrainingTimesLastYear" INT NOT NULL,
		"WorkLifeBalance" INT NOT NULL,
		"YearsAtCompany" INT NOT NULL,
		"YearsInCurrentRole" INT NOT NULL,
		"YearsSinceLastPromotion" INT NOT NULL,
		"YearsWithCurrManager" INT NOT NULL
		
);

	CREATE TABLE "glassdoor" (
		"RowNum" INT NOT NULL PRIMARY KEY, 
		"firm" VARCHAR NOT NULL,
		"date_review" VARCHAR NOT NULL,
		"job_title" VARCHAR NOT NULL,
		"current" VARCHAR NOT NULL,
		"location" VARCHAR NOT NULL,
		"overall_rating" INT NOT NULL,
		"work_life_balance" INT NOT NULL,
		"culture_values" INT NOT NULL,
		"diversity_inclusion" INT NOT NULL, 
		"career_opp" INT NOT NULL,
		"comp_benefits" INT NOT NULL,
		"senior_mgmt" INT NOT NULL 
);