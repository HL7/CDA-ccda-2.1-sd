Profile: AssessmentScaleObservation
Parent: $Observation
Id: AssessmentScaleObservation
Title: "Assessment Scale Observation"
Description: """An assessment scale is a collection of observations that together can yield a calculated or non-calculated summary evaluation of a one or more conditions. Examples include the Braden Scale (assesses pressure ulcer risk), APACHE Score (estimates mortality in critically ill patients), Mini-Mental Status Exam (assesses cognitive function), APGAR Score (assesses the health of a newborn), Glasgow Coma Scale (assesses coma and impaired consciousness), and WE CARE (Well Child Care, Evaluation, Community Resources, Advocacy, Referral, Education - a clinic-based screening and referral system developed for pediatric settings).

When an Assessment Scale Observation is contained in a Problem Observation, a Social History Observation or a Procedure instance that is Social Determinant of Health focused, that Assessment scale **MAY** contain assessment scale observations that represent question and answer pairs from SDOH screening instruments that are represented in LOINC. Note that guidance on the use of LOINC in assessment scales already exists in Assessment Scale Observation constraints and Assessment Scale Supporting Observations constraints."""

* insert LogicalModelTemplate(assessment-scale-obs, 2.16.840.1.113883.10.20.22.4.69, 2022-06-01)

* classCode 1..1
* classCode = #OBS (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @classCode=\"OBS\" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:4515-14434)."
* moodCode 1..1
* moodCode = #EVN (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" (CodeSystem: HL7ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:4515-14435)."
* id 1..*
  * ^comment = "SHALL contain at least one [1..*] id (CONF:4515-14438)."
* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code, which SHALL be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) DYNAMIC (CONF:4515-14439)."
* derivationExpr 0..1
  * ^comment = "MAY contain zero or one [0..1] derivationExpr (CONF:4515-14637)."
* statusCode 1..1
  * ^comment = "SHALL contain exactly one [1..1] statusCode (CONF:4515-14444)."
  * code 1..1
  * code = #completed (exactly)
    * ^comment = "This statusCode SHALL contain exactly one [1..1] @code=\"completed\" Completed (CodeSystem: HL7ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:4515-19088)."
* effectiveTime 1..1
  * ^comment = "SHALL contain exactly one [1..1] effectiveTime (CONF:4515-14445)."
* value 1..1
  * ^comment = "SHALL contain exactly one [1..1] value (CONF:4515-14450)."
* interpretationCode 0..*
  * ^comment = "MAY contain zero or more [0..*] interpretationCode (CONF:4515-14459)."
  * translation 0..*
    * ^comment = "The interpretationCode, if present, MAY contain zero or more [0..*] translation (CONF:4515-14888)."
* author 0..*
  * ^comment = "MAY contain zero or more [0..*] author (CONF:4515-14460)."
* entryRelationship ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^comment = "SHOULD contain zero or more [0..*] entryRelationship (CONF:4515-14451) such that it"
* entryRelationship contains entryRelationship1 0..*
* entryRelationship[entryRelationship1] ^short = "entryRelationship"
  * ^comment = "SHOULD contain zero or more [0..*] entryRelationship (CONF:4515-14451) such that it"
  * typeCode 1..1
  * typeCode = #COMP (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"COMP\" has component (CONF:4515-16741)."
  * observation 1..1
  * observation only AssessmentScaleSupportingObservation
    * ^comment = "SHALL contain exactly one [1..1] Assessment Scale Supporting Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.86) (CONF:4515-16742)."
* referenceRange 0..*
  * ^comment = "MAY contain zero or more [0..*] referenceRange (CONF:4515-16799)."
  * observationRange 1..1
    * ^comment = "The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:4515-16800)."
    * text 0..1
      * ^comment = "This observationRange SHOULD contain zero or one [0..1] text (CONF:4515-16801)."
      * reference 0..1
        * ^comment = "The text, if present, SHOULD contain zero or one [0..1] reference (CONF:4515-16802)."
        * value 0..1
          * obeys 4515-16804
          * ^comment = "The reference, if present, MAY contain zero or one [0..1] @value (CONF:4515-16803)."

Invariant: 4515-16804
Description: "This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:4515-16804)."
Severity: #error