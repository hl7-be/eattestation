Profile: BeEattestationClaimResponse
Parent: ClaimResponse
Id: be-eattestation-claimresponse
Title: "MyCareNet eAttestation Claim Response BE profile"
Description: "Claimresponse profile for use in the different eAttestation flows from MyCareNet."
* ^status = #active
* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains eattestid 0..1 MS
* identifier[eattestid].system = $eattestid (exactly)
* identifier[eattestid].value 1..1
* id 1.. MS
* status MS
* type MS
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* subType 1.. MS
* subType from BeVSEattestationTypes (extensible)
* use MS
* patient only Reference(BePatient)
* patient MS
* created MS
* insurer only Reference(BeOrganization)
* insurer MS
* requestor 1.. MS
* requestor only Reference(BeOrganization or BePractitioner or BePractitionerRole)
* requestor.reference 1..
* outcome MS
* addItem MS
* addItem.itemSequence 1..1 MS
* addItem.productOrService 1.. MS
* addItem.productOrService.coding 1..1
* addItem.productOrService.coding.system 1..
* addItem.productOrService.coding.system  = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/be-ns-nihdi-nomenclature"
* addItem.productOrService.coding.code 1..
* addItem.servicedDate 1.. MS
* addItem.unitPrice 1.. MS
* addItem.net 1.. MS
* addItem.quantity 1.. MS
* addItem.adjudication 1.. MS 
* addItem.adjudication ^short = "Is mandatory on Int'l level"



