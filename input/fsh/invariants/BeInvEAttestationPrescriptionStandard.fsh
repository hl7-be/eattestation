Invariant: be-inv-eattestation-prescription-standard
Description: "Every service request in supporting info SHALL have an BeExtPrescriptionRequesterStandard"
Severity: #error
Expression: "supportingInfo.select(value as Reference).resolve().ofType(ServiceRequest).extension('https://www.ehealth.fgov.be/standards/fhir/eattestation/StructureDefinition/be-ext-prescription-requester-standard').count() = supportingInfo.select(value as Reference).resolve().ofType(ServiceRequest).count()"