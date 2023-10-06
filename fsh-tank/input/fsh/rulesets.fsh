////////////////////////////////////////////////////////////
//                                                        //
//          Constrinat (Invariant) Generation             //
//                                                        //
////////////////////////////////////////////////////////////

// Creates an error-level constraint. Pass strings unquoted. If they contain , or ) surround the string with [[ ]] 
RuleSet: ConstraintError(key, human, expression)
* ^constraint[+].key = "{key}"
* ^constraint[=].severity = #error
* ^constraint[=].human = "{human}"
* ^constraint[=].expression = "{expression}"

// Creates a warning-level constraint. Pass strings unquoted. If they contain , or ) surround the string with [[ ]] 
RuleSet: ConstraintWarning(key, human, expression)
* ^constraint[+].key = "{key}"
* ^constraint[=].severity = #warning
* ^constraint[=].human = "{human}"
* ^constraint[=].expression = "{expression}"


////////////////////////////////////////////////////////////
//                                                        //
//              Common Rules for all Models               //
//                                                        //
////////////////////////////////////////////////////////////

// Common rules for basically every LogicalModel
RuleSet: LogicalModelTemplate(sliceName, root, extension)
* insert LogicalModelNA
* ^identifier.value = "urn:hl7ii:{root}:{extension}"
* ^version = "{extension}"
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "extension"
  * ^slicing.rules = #open
* templateId contains {sliceName} 1..1
* templateId[{sliceName}]
  * root 1..1
  * root = "{root}"
  * extension 1..1
  * extension = "{extension}"

// Variant for old models with no extension (Gradually phase out and replace with above)
RuleSet: LogicalModelTemplateRootOnly(sliceName, root)
* insert LogicalModelNA
* ^identifier.value = "urn:oid:{root}"
* templateId ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "root"
  * ^slicing.rules = #open
* templateId contains {sliceName} 1..1
* templateId[{sliceName}]
  * root 1..1
  * root = "{root}"
  * extension 0..0

// CDA Section common constraints - this is the most-likely-appropriate RuleSet
RuleSet: Section(loinc, title, templateId, extension)
* insert LogicalModelTemplate(section, {templateId}, {extension})
* insert _SectionCommon
* code ^short = "{title}"
  * code = {loinc}

RuleSet: _SectionNoCode(templateId, extension)
* insert LogicalModelTemplate(section, {templateId}, {extension})
* insert _SectionCommon

// Copy of Section - but with no extension! (Gradually phase out, probably, by replacing with a call to Section and including an extension)
RuleSet: OldSection(loinc, title, templateId)
* insert LogicalModelTemplateRootOnly(section, {templateId})
* insert _SectionCommon
* code ^short = "{title}"
  * code = {loinc}

// Common rules for each of the above RuleSets - don't call directly
RuleSet: _SectionCommon
* code 1..1
  * code 1..1
  * codeSystem 1..1
  * codeSystem = "2.16.840.1.113883.6.1"
* title 1..1
* text 1..1




Alias: $LogicalTarget = http://hl7.org/fhir/tools/StructureDefinition/logical-target
Alias: $DAR = http://hl7.org/fhir/StructureDefinition/data-absent-reason
// Insert the logical-target extension with DAR = NA to hide the "This logical model cannot be the target of a reference"
RuleSet: LogicalModelNA
* ^extension[$LogicalTarget].valueBoolean.extension[$DAR].valueCode = #not-applicable