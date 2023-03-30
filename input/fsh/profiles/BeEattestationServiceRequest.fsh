Profile: BeEattestationServiceRequest
Parent: ServiceRequest
Id: be-eattestationservicerequest
Title: "MyCareNet eAttestation ServiceRequest BE profile"
Description: "The ServiceRequest profile for use in the different eAttestation flows from MyCareNet."
* ^status = #active
* authoredOn MS
* category ..1 MS
* category.coding 1..1
* category.coding.code 1..
* category.coding.system = "http://snomed.info/sct" (exactly)
* category.coding.system 1..
* code MS
* code.coding 1..1
* code.coding.code 1..
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.system 1..
* extension contains BeExtPrescriptionRequesterStandard named requesterStandard 1..1 MS
* id 1.. MS
* intent = #order (exactly)
* intent MS
* requester MS
* requester only Reference(BePractitionerRole)
* status = #active (exactly)
* status MS
* subject MS
* subject only Reference(BePatient)
//* contained ..1 MS
//* contained only BeMyCareNetEagreementServiceRequestBinary
//* quantity[x] MS
//* quantity[x] only Quantity
//* supportingInfo ..1 MS
//* supportingInfo.reference 1.. MS