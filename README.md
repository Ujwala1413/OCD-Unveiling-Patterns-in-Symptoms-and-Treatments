# OCD-Unveiling-Patterns-in-Symptoms-and-Treatments
Obsessive-Compulsive Disorder (OCD) is a mental health condition characterized by unwanted, recurring thoughts (obsessions) and repetitive behaviors or rituals (compulsions) 
aimed at reducing anxiety caused by these thoughts. It can significantly interfere with daily life, causing distress and consuming considerable time.

**Overview of Dataset**
The dataset comprises 1,500 records, each representing an individual patient with Obsessive-Compulsive Disorder (OCD).
It contains 17 columns that record a variety of information, including demographics (age, gender), clinical traits (obsessions and compulsions types and severity), 
treatment history (medications, therapy), and maybe treatment results or reactions. Analyzing this extensive dataset will reveal patterns, treatment outcomes, and patient 
attributes across the OCD community.

**Objective**
1. Analyzed OCD patient data to uncover patterns in symptoms and treatment responses.
2. Examined the relationships between demographic factors, symptom severity, and treatment outcomes.
3. Aimed to gain insights into the effectiveness of various treatments and the characteristics of OCD across different patient groups.

**High Level KPI's**
1. Average Duration of OCD Symptoms
2. Development of Comorbidities (Depression and Anxiety)
3. Most Common Obsession Type
4. Most Common Compulsion Type
5. Average severity of OCD Score
6. Percentage of Patients with Family History of OCD
7. Gender Distribution of OCD Patients
8. Most Common Medication Prescribed
9. Percentage of Patients with Severe OCD (High Y-BOCS Score)
10. Impact of Education on OCD Severity
11. Correlation Between Family History and OCD Severity

**Data Pre-processing and Cleaning**
1. Analyzed and removed duplicate values
2. Removed null values
3. Corrected data formats (Formated date from str to date format)

**Observed Insights**
1. The age of patients ranges from 18 to 75 years, with a mean age of approximately 46.8 years. The majority of patients fall between 32 and 61 years old.
2. The average Y-BOCS score for obsessions is 20.05, while for compulsions, it is slightly lower at 19.63. This indicates that, on average, obsessions and compulsions
   are similarly severe among the patients.
3. The most common type of obsession is Harm-related, and the most prevalent compulsion is Washing. These could be focal points for targeted therapies or interventions.
4. Approximately 24.8% of the patients are diagnosed with both depression and anxiety, highlighting a significant overlap of these conditions with OCD, which may require
   integrated treatment approaches.
5. Patients with a family history of OCD have slightly lower average Y-BOCS scores for both obsessions (19.99) and compulsions (19.28) compared to those without a family history
   (20.11 for obsessions and 19.98 for compulsions). This suggests that while a family history of OCD is prevalent, it may not necessarily lead to higher severity in symptoms.

**Suggestions**
1. **Offer Combined Treatment:** Since many patients also have depression and anxiety, it's important to treat these conditions together with OCD.
2. **Focus on High-Risk Groups:** Pay extra attention to Hispanic patients and those with less education, as they might need more support.
3. **Consider Medication Options:** Some patients aren't on medication, so exploring whether they could benefit from it might be helpful.
