Profile: BeEattestationRequest
Parent: Bundle
Id: be-eattestation-request
Title: "MyCareNet eAttestation Request Bundle BE profile"
Description: "Profile for the request of an eAttestation in the MyCareNet flows."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/eattestation/StructureDefinition/be-eattestation-request"
* ^version = "1.0.0"
* id 1.. MS
* type MS
* type = #message
* timestamp 1.. MS
* entry 2..
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.description = "Slice based on the entry.resource type"
* entry ^slicing.rules = #open
* entry contains
    messageHeader 1..1 MS and
    practitioner 0..* MS and
    practitionerRole 0..* MS and
    organization 0..1 MS and
    patient 1..1 MS and
    serviceRequest 0..* MS and 
    location 0..* MS and
    claim 1..1 MS
* entry[messageHeader].fullUrl 1..
* entry[messageHeader].resource 1..
* entry[messageHeader].resource only BeMyCareNetMessageHeader
* entry[practitioner].fullUrl 1..
* entry[practitioner].resource 1..
* entry[practitioner].resource only BePractitioner
* entry[practitionerRole].fullUrl 1..
* entry[practitionerRole].resource 1..
* entry[practitionerRole].resource only BePractitionerRole
* entry[organization].fullUrl 1..
* entry[organization].resource 1..
* entry[organization].resource only BeOrganization
* entry[patient].fullUrl 1..
* entry[patient].resource 1..
* entry[patient].resource only BePatient
* entry[serviceRequest].fullUrl 1..
* entry[serviceRequest].resource 1..
* entry[serviceRequest].resource only BeEattestationServiceRequest
* entry[location].fullUrl 1..
* entry[location].resource 1..
* entry[location].resource only Location
* entry[claim].fullUrl 1..
* entry[claim].resource 1..
* entry[claim].resource only BeEattestationClaim
* obeys be-inv-supplement
