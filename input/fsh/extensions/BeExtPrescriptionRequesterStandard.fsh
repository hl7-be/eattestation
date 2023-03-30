//be-ext-prescription-requester-standard
Extension: BeExtPrescriptionRequesterStandard
Id: be-ext-prescription-requester-standard
Title: "BeExtPrescriptionRequesterStandard"
Description: "Standard of the prescriber"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from BeVSRequesterNorm (required)
* ^context.type = #element
* ^context.expression = "ServiceRequest"