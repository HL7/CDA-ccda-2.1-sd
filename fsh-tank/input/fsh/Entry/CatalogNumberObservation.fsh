Profile: CatalogNumberObservation
Parent: $Observation
Id: CatalogNumberObservation
Title: "Catalog Number Observation"
Description: "This template is intended to be used in addition to the **Product Instance** template urn:oid:2.16.840.1.113883.10.20.22.4.37 to exchange the **Catalog Number**.  The UDI-DI of the medical device may be used to retrieve the Catalog Number in accessGUDID, which should be considered the source of truth."
* ^meta.versionId = "4"
* ^meta.lastUpdated = "2023-07-11T23:41:38.318Z"
* insert LogicalModelNA
* ^identifier.value = "urn:hl7ii:2.16.840.1.113883.10.20.22.4.302:2019-06-21"
* ^version = "2019-06-21"
* templateId 1..1
  * ^comment = "SHALL contain exactly one [1..1] templateId (CONF:4437-3432)."
  * root 1..1
  * root = "2.16.840.1.113883.10.20.22.4.302"
    * ^short = "template oid"
    * ^comment = "This templateId SHALL contain exactly one [1..1] @root=\"2.16.840.1.113883.10.20.22.4.302\" (CONF:4437-3434)."
  * extension 1..1
  * extension = "2019-06-21"
    * ^comment = "This templateId SHALL contain exactly one [1..1] @extension=\"2019-06-21\" (CONF:4437-3435)."
* code 1..1
  * ^short = "Code for \"Device Catalog Number\""
  * ^comment = "SHALL contain exactly one [1..1] code (CONF:4437-3433)."
  * code 1..1
  * code = #C99286
    * ^comment = "This code SHALL contain exactly one [1..1] @code=\"C99286\" Catalog Number (CodeSystem: NCI Thesaurus (NCIt) urn:oid:2.16.840.1.113883.3.26.1.1 STATIC) (CONF:4437-3436)."
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.3.26.1.1"
    * ^comment = "This code SHALL contain exactly one [1..1] @codeSystem=\"2.16.840.1.113883.3.26.1.1\" (CONF:4437-3437)."
  * codeSystemName 0..1
  * codeSystemName = "NCI Thesaurus"
    * ^comment = "This code MAY contain zero or one [0..1] @codeSystemName=\"NCI Thesaurus\" (CONF:4437-3438)."
  * displayName 0..1
  * displayName = "Catalog Number"
    * ^comment = "This code MAY contain zero or one [0..1] @displayName=\"Catalog Number\" (CONF:4437-3439)."
* value 1..1
* value only $ED
  * ^comment = "SHALL contain exactly one [1..1] value with @xsi:type=\"ED\" (CONF:4437-3440)."