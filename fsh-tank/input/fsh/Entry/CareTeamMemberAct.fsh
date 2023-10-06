Profile: CareTeamMemberAct
Parent: $Act
Id: CareTeamMemberAct
Title: "Care Team Member Act"
Description: """This template is used to represent a member of the care team. Care team members can include healthcare and community services providers, caregivers, relatives, the patient themselves, etc. A care team member can be another care team or an organization. 
Care team member attributes include the following:
	Care team member status on the care team
	Care team member time (e.g. duration, point-in-time, etc.) on the care team
	Schedule of the care team member describing when the care team member usually participates on the care team
	Care team member function on the care team such as the care team member specialty, relationship to the patient, and also role on the care team
	Care team member name, address, telecom, organization, etc. 
	Care team member information (narrative description about the care team member)

The performer/assignedEntity/id may be set equal to (a pointer to) an id on a performer elsewhere in the document (header or entries) or a new performer can be described here. If the id is pointing to a performer already described elsewhere in the document, assignedEntity/id is sufficient to identify this performer and none of the remaining details of assignedEntity are required to be set. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text.

This id must be a pointer to another Performer."""
* ^meta.versionId = "5"
* ^meta.lastUpdated = "2023-07-11T23:41:50.227Z"

* insert LogicalModelTemplate(care-team-member-act, 2.16.840.1.113883.10.20.22.4.500.1, 2022-06-01)

* classCode 1..1
* classCode = #PCPR (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @classCode=\"PCPR\" Provision of Care (CONF:4515-53)."
* moodCode 1..1
* moodCode = #EVN (exactly)
  * ^comment = "SHALL contain exactly one [1..1] @moodCode=\"EVN\" Event (CONF:4515-54)."
* code 1..1
  * ^comment = "SHALL contain exactly one [1..1] code (CONF:4515-27)."
  * code 1..1
  * code = #85847-2
    * ^comment = "This code SHALL contain exactly one [1..1] @code=\"85847-2\" Patient Care team information (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:4515-48)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
    * ^comment = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.6.1\" LOINC (CONF:4515-49)."
* statusCode 1..1
  * ^comment = "SHALL contain exactly one [1..1] statusCode (CONF:4515-62)."
  * code 1..1
  * code from ActStatus (required)
    * ^comment = "This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ActStatus urn:oid:2.16.840.1.113883.1.11.15933 STATIC 2019-05-27 (CONF:4515-68)."
* effectiveTime 1..1
  * ^comment = "SHALL contain exactly one [1..1] effectiveTime (CONF:4515-33)."
  * low 1..1
    * ^comment = "This effectiveTime SHALL contain exactly one [1..1] low (CONF:4515-167)."
  * high 0..1
    * ^comment = "This effectiveTime MAY contain zero or one [0..1] high (CONF:4515-168)."
* performer ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "sdtcFunctionCode"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "assignedEntity"
  * ^slicing.rules = #open
  * ^comment = "SHALL contain exactly one [1..1] performer (CONF:4515-160) such that it"
* performer contains performer1 1..1
* performer[performer1] ^short = "performer"
  * ^comment = "SHALL contain exactly one [1..1] performer (CONF:4515-160) such that it"
  * sdtcFunctionCode 0..1
  * sdtcFunctionCode from $2.16.840.1.113762.1.4.1099.30 (preferred)
    * ^short = "This sdtc:functionCode represents the function or role of the member on the care team. For example, the care team member roles on the care team can be a caregiver and a professional nurse or a primary care provider and the care coordinator."
    * ^comment = "MAY contain zero or one [0..1] sdtc:functionCode, which SHOULD be selected from ValueSet Care Team Member Function urn:oid:2.16.840.1.113762.1.4.1099.30 DYNAMIC (CONF:4515-161)."
  * assignedEntity 1..1
    * ^comment = "SHALL contain exactly one [1..1] assignedEntity (CONF:4515-175)."
    * id 1..*
      * obeys 4515-180
      * ^comment = "This assignedEntity SHALL contain at least one [1..*] id (CONF:4515-176)."
      * root 0..1
      * root = "2.16.840.1.113883.4.6"
        * ^comment = "Such ids SHOULD contain zero or one [0..1] @root=\"2.16.840.1.113883.4.6\" National Provider Identifier (CONF:4515-177)."
    * addr 0..*
      * ^comment = "This assignedEntity SHOULD contain zero or more [0..*] addr (CONF:4515-182)."
    * telecom 0..*
      * ^comment = "This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:4515-183)."
    * assignedPerson 0..1
      * ^short = "This assignedPerson must be present on at least one performer in this document for each unique assignedEntity/id."
      * ^comment = "This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:4515-178)."
      * name 1..1
      * name only USRealmPersonNamePNUSFIELDED
        * ^comment = "The assignedPerson, if present, SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:4515-179)."
    * representedOrganization 0..1
      * obeys 4515-184
      * ^comment = "This assignedEntity MAY contain zero or one [0..1] representedOrganization (CONF:4515-181)."
* participant ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "participantRole"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^comment = "MAY contain zero or more [0..*] participant (CONF:4515-171) such that it"
* participant contains
    participant2 0..* and
    participant1 0..*
* participant[participant2] ^short = "participant"
  * ^comment = "MAY contain zero or more [0..*] participant (CONF:4515-171) such that it"
  * typeCode 1..1
  * typeCode = #LOC (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"LOC\" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:4515-174)."
  * participantRole 1..1
    * ^comment = "SHALL contain exactly one [1..1] participantRole (CONF:4515-173)."
* participant[participant1] obeys 4515-172
  * ^short = "participant"
  * ^comment = "MAY contain zero or more [0..*] participant (CONF:4515-76) such that it"
  * typeCode 1..1
  * typeCode = #IND (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"IND\" Indirect Target (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:4515-78)."
  * sdtcFunctionCode 1..1
  * sdtcFunctionCode from $2.16.840.1.113762.1.4.1099.30 (required)
    * ^short = "sdtc:functionCode"
    * ^comment = "SHALL contain exactly one [1..1] sdtc:functionCode, which SHALL be selected from ValueSet Care Team Member Function urn:oid:2.16.840.1.113762.1.4.1099.30 DYNAMIC (CONF:4515-169)."
* entryRelationship ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "observation"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "typeCode"
  * ^slicing.rules = #open
  * ^comment = "MAY contain zero or one [0..1] entryRelationship (CONF:4515-94) such that it"
* entryRelationship contains
    entryRelationship1 0..* and
    entryRelationship2 0..* and
    entryRelationship3 0..1
* entryRelationship[entryRelationship1] ^short = "entryRelationship"
  * ^comment = "MAY contain zero or more [0..*] entryRelationship (CONF:4515-86) such that it"
  * typeCode 1..1
  * typeCode = #REFR (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:4515-87)."
  * encounter 1..1
    * ^comment = "SHALL contain exactly one [1..1] encounter (CONF:4515-88)."
    * id 1..1
      * obeys 4515-90
      * ^comment = "This encounter SHALL contain exactly one [1..1] id (CONF:4515-89)."
* entryRelationship[entryRelationship2] ^short = "entryRelationship"
  * ^comment = "MAY contain zero or more [0..*] entryRelationship (CONF:4515-91) such that it"
  * typeCode 1..1
  * typeCode = #REFR (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:4515-92)."
  * act 1..1
  * act only NoteActivity
    * ^comment = "SHALL contain exactly one [1..1] Note Activity (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.202:2016-11-01) (CONF:4515-93)."
* entryRelationship[entryRelationship3] ^short = "entryRelationship"
  * ^comment = "MAY contain zero or one [0..1] entryRelationship (CONF:4515-94) such that it"
  * typeCode 1..1
  * typeCode = #REFR (exactly)
    * ^comment = "SHALL contain exactly one [1..1] @typeCode=\"REFR\" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:4515-96)."
  * observation 1..1
  * observation only CareTeamMemberScheduleObservation
    * ^comment = "SHALL contain exactly one [1..1] Care Team Member Schedule Observation (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.500.3:2022-06-01) (CONF:4515-95)."

Invariant: 4515-180
Description: "If the assignedEntity/id is not referencing a Performer elsewhere in the document with an assignedPerson populated, this assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:4515-180)."
Severity: #error

Invariant: 4515-184
Description: "When a provider is working on behalf of an organization an addr & telecom **SHALL** be present in representedOrganization (CONF:4515-184)."
Severity: #error

Invariant: 4515-172
Description: "This participantRole SHALL contain exactly one [1..1] @nullFlavor=\"NI\" No Information. (CONF:4515-172)."
Severity: #error

Invariant: 4515-90
Description: "If the id does not match an encounter/id from an encounter elsewhere within the same document and the id does not contain @nullFlavor=NA, then this entry SHALL conform to the Encounter Activity (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.49:2015-08-01) (CONF:4515-90)."
Severity: #error