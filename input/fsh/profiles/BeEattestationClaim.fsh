Profile: BeEattestationClaim
Parent: Claim
Id: be-eattestation-claim
Title: "MyCareNet eAttestation Claim BE profile"
Description: "Claim profile for use in the different eAttestation flow from MyCareNet."
* careTeam 0..* MS //zero only for cancel
* careTeam.provider.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* careTeam.qualification 1..1 MS
* careTeam.qualification from BeVSCdHcParty (required)
* careTeam.role 1..1 MS
* enterer 1..1 MS
* enterer only Reference(BePractitionerRole)
* extension contains BeExtEAttestationSupplement named supplement 0..1 MS
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.rules = #open
* identifier 0.. MS
* identifier contains eattestid 0..1 MS
* identifier[eattestid].system = $eattestid (exactly)
* identifier[eattestid].value 1..1
* insurance.coverage.display = "use of mandatory insurance coverage, no further details provided here."
* insurance.focal = true
* insurance.sequence = 1
* item 0..* MS //zero only for cancel
* item.bodySite.coding from be-vs-bodysite (required)
* item.bodySite 0..1 MS
* item.bodySite.extension contains BeExtLaterality named bodyLaterality 0..1 MS
* item.bodySite.extension[bodyLaterality].valueCoding from BeVSBasicLaterality
* item.careTeamSequence 1..* MS
* item.extension contains BeExtPatientIdentityDocument named eid 0..1 MS
* item.extension contains BeExtEAttestationItemPreAuthRef named preAuthRef 0..1 MS
* item.extension contains BeExtEAttestationItemSupplement named supplement 0..1 MS
* item.informationSequence MS
* item.locationReference 0..1 MS
* item.net 1..1 MS
* item.productOrService 1..1 MS
* item.productOrService.coding 1..1 MS
* item.productOrService.coding.code 1..1 MS
* item.productOrService.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/be-ns-nihdi-nomenclature"
* item.productOrService.coding.system 1..1 MS
* item.productOrService MS
* item.quantity 1..1 MS
* item.servicedDate 1..1 MS
* item.unitPrice 1..1 MS
* obeys be-inv-eattestation-prescription-standard and 
    be-inv-bodySite and
    be-inv-eattestation-create-cancel and 
    be-inv-gmf-holder and
    be-inv-location and 
    be-inv-medical-advisor-decision-nr and
    be-inv-oral-hygienist and
    be-inv-toothNumber and
    be-inv-trainee and
    be-inv-transplantation 
* patient 1..1 MS
* patient only Reference(BePatient)
* payee.party only Reference(BePatient)
* payee.type.coding = http://terminology.hl7.org/CodeSystem/payeetype#subscriber
* priority.coding = http://terminology.hl7.org/CodeSystem/processpriority#stat
* provider 1..1 MS
* provider only Reference(BePractitionerRole or BeOrganization)
* status = #active 
* subType 1..1 MS
* subType from BeVSEattestationTypes (extensible)
* supportingInfo 0..* MS
* supportingInfo.code MS
* supportingInfo.valueReference MS
* total 0..1 MS // zero only cancel
* type.coding 1..1
* type.coding.system 1..
//* type.coding =  http://terminology.hl7.org/CodeSystem/claim-type#professional
* type.coding.code 1..
* use = #claim
* use MS



