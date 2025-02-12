
Clinicians use various terms such as assessments, scales, surveys, and screenings to describe the tools and processes to collect health-related information for assessing a patient’s health-related matter. C-CDA uses the term Screening and Assessments for the process of recording responses and capturing assertions/determinations resulting from this process and these tools. This page documents how Screening and Assessments are used to identify various problems or health concerns and how C-CDA templates record Screenings and Assessments utilizing Social History Observations, Problem Observations, and Assessment Scale observations and its supporting observation to record complex structured evaluations.


### Assessment Screenings

Assessment Screenings can represent a structured evaluation of risk (e.g., PRAPARE, Hunger Vital Sign, AHC-HRSN
screening tool) for any Social Determinants of Health domain such as food, housing, or transportation security. They can also be used for physical health evaluations such as an Apgar score, or Glasgow coma scale.
Assessment Screening responses are represented in C-CDA with the [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) together with [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html). The
[Social History Observation](StructureDefinition-SocialHistoryObservation.html) is for simple observations made by an individual about a patient's social history status during the course of care.
Both can contribute to the identification of SDOH Problems (Conditions) or Observations or can be the reason for
Service Requests (Planned Procedures) or Procedures.

[Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) and its contained [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) are designed to represent [LOINC Panels](https://loinc.org/panels/) that are
collections of LOINC terms that represent specific sets of information, intended for forms or assessments related to health that are completed by patients and/or providers.

When an Assessment Scale Observation is contained in a Problem Observation, a Social History Observation, a
Procedure, or a Planned Procedure instance that is Social Determinant of Health focused, that Assessment scale
may contain assessment scale observations that represent question and answer pairs from SDOH screening
instruments.

For communicating detailed observations related to an individual’s work information, implementers can consider
utilizing the templates in the [C- CDA 2.1 Supplemental Templates for Occupational Data for Health](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=522) implementation
guide.

SDOH Observations and Survey Screenings and the resultant plans and interventions are foundational towards
improving a person's overall health and wellness when confronted with health problems.

### Specific USCDI Data Elements Represented with Assessment Screening

Systems **SHALL** support representing detailed questions and answers from a formal assessment in the [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) together with [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html).

Systems **SHALL** support representing a simple question and answer from a formal assessment in the [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) without contained Assessment Scale Supporting Observations. 

Systems **SHALL** support representing a clinical judgement that may be derived from a formal assessment using the [Problem Observation](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.707/expansion) at Observation.value or with [Social History Observation](StructureDefinition-SocialHistoryObservation.html) Observation.value.
- When a Problem observation or Social History Observation is recorded based on a structured screening and assessment, the Assessment Scale Observation should be contained in the Problem Observation or Social History Observation or they should refer to the Assessment Scale Observation using the [Entry Reference Template](StructureDefinition-EntryReference.html).

Specific observations, such as Disability Status Observation, includes a USCDI indicator on the Assessment scale observation to formalize this USCDI requirement. 
The ability for systems to support  [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) together with [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html) is a USCDI requirement.

#### Alcohol Use

The [Alcohol Use Related Questionnaire Panel Codes](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1585/expansion) contains the LOINC Panel Codes for Alcohol Use Disorder Identification Test - Consumption AUDIT-C and PROMIS short form - alcohol - alcohol use 7a - version 1.0.
This value set is used with [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) together with [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html) to represent detailed patient questionnaires about alcohol use.

#### Substance Use (Including Alcohol Use)

The [Substance Use](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1015/expansion) is used with [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) without the Assessment Scale Supporting Observation
to represent simple question and answer assessement questions such as, "How often do you have a drink containing alcohol" or "How often have you used any prescription medications just for the feeling, more than prescribed or that were not prescribed for you in past 12 months (TAPS)".

The [Drug Misuse](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.707/expansion) value set is used with [Problem Observation](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.707/expansion) at Observation.value or with [Social History Observation](StructureDefinition-SocialHistoryObservation.html) at Observation.value
to represent conclusions or diagnoses pertaining to drug misuse or abuse.

#### Mental and Cognitive Health

The [Cognitive Health Related Questionnaire Panel Codes](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.979/expansion) contains LOINC panel Codes that represent Mental or Cognitive health screening assessments, such as FACIT, PROMIS and MoCA.
This value set is used with [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) together with [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html) to represent detailed patient questionnaires about assessing mental or cognitive health.

The [Cognitive Function Clinician Interpretation](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1015/expansion) value set is used with [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) without the Assessment Scale Supporting Observation
to represent simple question and answer assessement questions. Examples are "Cognitive Function Interpretation", that may have a text answer of clinician's assessment and "Memory/recall ability during assessment period" that may have answers such as the ability to recall the current season or the where the person is.

The [Mental Status Observation](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1240.1/expansion) value set is used with [Mental Status Observation](StructureDefinition-MentalStatusObservation.html) to represent an observation about mental status that can come from a broad range of subjective and objective information 
such as Assessment and Screening tools.

#### Functional Status

The [Functional Status Related Questionnaire Panel Codes](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1586/expansion) contains LOINC panel codes that represent functional status questionnaire LOINC panel codes
This value set is used with [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) together with [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html) to represent detailed patient questionnaires about functional status.

The [Functional Status Observation](StructureDefinition-FunctionalStatusObservation.html) may be used to represent an observation about mental status that can come from a broad range of subjective and objective information such as what may be derived from Assessment and Screening tools.

#### Physical Activity

The [Physical Activity Level](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1068/expansion) value set is used with [Assessment Scale observation](StructureDefinition-AssessmentScaleObservation.html) without the Assessment Scale Supporting Observation
to represent simple question and answer assessement questions such as, "Kinds of physical activity you usually performed while on the job this last year" or "Days per week of moderate to vigorous physical activity".

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="Figure 9 SDOH Assessment and Planning Process.png" alt="Assessment and Planning Process SDOH example"/>
  <figcaption>Assessment and Planning Process SDOH example</figcaption>
</figure>
{::options parse_block_html="true" /}

### Social Determinant of Health Vocabulary Design Notes
#### Value Sets Developed by the Gravity Project

For the SDOH Clinical Care HL7 Implementation Guide, the Gravity project has defined the following value sets
across specific social risk factor domains for problems/health concerns, goals, procedures, service requests and health screening assessments:

- [Social Determinants of Health Conditions Value Set](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1196.788/expansion)
- [Social Determinants of Health Procedures Value Set](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1196.789/expansion)
- [Social Determinants of Health Goals Value Set](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.71/expansion)
- [Social Determinants of Health Service Requests Value Set](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1196.790/expansion) (Used in the Planned Procedure Template)
- [Social Determinants of Health Screening Assessments And Questions](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1247.206/expansion)



The Figure below illustrates how the Gravity value sets are grouped for use in the C- CDA Problem Observation
template.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="Figure 8 Example of SDOH Grouping Value set in VSAC (Conditions).png" alt="Example of SDOH Grouping Value set in VSAC (Conditions)"/>
  <figcaption>Example of SDOH Grouping Value set in VSAC (Conditions)</figcaption>
</figure>
{::options parse_block_html="true" /}

#### Other SDOH Value Sets Available for Use

The following value sets are stewarded by the HL7 Patient Care Work Group and were built for the [Multiple Chronic Care Implementation Guide](https://build.fhir.org/ig/HL7/fhir-us-mcc/) for use in the Care Planning process, but they could be used with [Assessment Scale observations](StructureDefinition-AssessmentScaleObservation.html) without contained Assessment Scale Supporting Observations or [Assessment Scale Supporting observations](StructureDefinition-AssessmentScaleSupportingObservation.html) at Observation.code.


<table border="1" cellspacing="0" style="width:100.0%">
    <tbody>
        <tr>
            <td style="background-color:#d9e2f3; border-color:#cccccc; height:15.0pt; width:116.75pt">
                <p><strong>Value Set Name and VSAC Link</strong></p>
            </td>
            <td style="background-color:#d9e2f3; border-color:#cccccc; height:15.0pt; width:132.7pt">
                <p><strong>Value Set Clinical Focus</strong></p>
            </td>
            <td style="background-color:#d9e2f3; border-color:#cccccc; height:15.0pt; width:153.55pt">
                <p><strong>OID</strong></p>
            </td>
            <td style="background-color:#d9e2f3; border-color:#cccccc; height:15.0pt; width:64.9pt">
                <p><strong>Profile Element</strong></p>
            </td>
        </tr>
        <tr>
            <td style="background-color:white; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1058/expansion">Caregiver Availability</a></p>
            </td>
            <td style="background-color:white; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of caregiver availability.</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1058</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1057/expansion">Caregiver Characteristics</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of caregiver characteristics.</p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1057</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1082/expansion">Criminal Justice Involvement or Incarceration History</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of criminal justice involvement or incarceration history.</p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1082</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1048/expansion">Current or Former Occupation</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of current or former occupation.</p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1048</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1065/expansion">Dependents in Home</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of the number of dependents in home.</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1065</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="border-color:#cccccc; height:41.25pt; vertical-align:top; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1030/expansion">English Proficiency</a></p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:132.7pt">
                <p>This set of values addresses terms representing an observation of English proficiency.</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1030</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1080/expansion">Experiences of Discrimination</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of an experiences of discrimination.</p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1080</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:white; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1075/expansion">Exposure to Environmental Hazards</a></p>
            </td>
            <td style="background-color:white; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of exposure to environmental hazards.</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1075</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1083/expansion">Immigration Status</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of immigration status or citizenship.</p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1083</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:white; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1053/expansion">Income Level</a></p>
            </td>
            <td style="background-color:white; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of an individual or household income level.</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1053</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1069/expansion">Leisure Activity Engagement</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of engagement in leisure activities.</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1069</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1060/expansion">Living Situation</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of a patient&#39;s living situation/living arrangements.</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1060</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:white; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1064/expansion">Marital or Spousal Status</a></p>
            </td>
            <td style="background-color:white; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of marital or spousal status.</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1064</p>
            </td>
            <td style="background-color:white; height:41.25pt; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:27.75pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1042/expansion">Neglect</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:27.75pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of neglect.</p>
            </td>
            <td style="background-color:#fcfdfd; height:27.75pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1042</p>
            </td>
            <td style="height:27.75pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1068/expansion">Physical Activity Level</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of physical activity level.</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1068</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1076/expansion">Unsafe Neighborhood</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation that a patient lives in an unsafe neighborhood.</p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1076</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
        <tr>
            <td style="background-color:#fcfdfd; border-color:#cccccc; height:41.25pt; width:116.75pt">
                <p><a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1222.1050/expansion">Work Productivity</a></p>
            </td>
            <td style="background-color:#fcfdfd; height:41.25pt; width:132.7pt">
                <p>This set of values addresses terms representing an observation of work productivity.</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:153.55pt">
                <p>2.16.840.1.113762.1.4.1222.1050</p>
            </td>
            <td style="height:41.25pt; vertical-align:top; width:64.9pt">
                <p>Observation.code</p>
            </td>
        </tr>
    </tbody>
</table>
