class Chart < ApplicationRecord
  belongs_to :regi
end

SOAP = 
[
"Subjective
Chief Complaint (CC): Examples - chest pain / decreased appetite / shortness of breath.
History of Present Illness (HPI): Example - 47-year old female presenting with abdominal pain.
OLDCARTS: Onset / Location / Duration / Characterization / Alleviating / and Aggravating factors / Radiation / Temporal factor Severity
History: Medical history / Surgical history / Family history / Social History
Review of Systems (ROS): General / Gastrointestinal / Musculoskeletal
Current Medications / Allergies Example - Motrin 600 mg orally every 4 to 6 hours for 5 days
Objective
Vital signs / Physical exam findings / Laboratory data / Imaging results / Other diagnostic data / Recognition and review of the documentation of other clinicians
Assessment
Problem: List the problem in order of importance
Differential Diagnosis: Example: Problem 1 / Differential Diagnoses / Discussion / Plan for problem 1 (described in the plan below). Repeat for additional problems
Plan
State of current/future testing / Medication needed / Specialist referral / Patient counseling"
]