Invariant: be-inv-bodySite
Description: "BodySite and laterality SHALL only occur in a specialised medicine attestation or a dentistry attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'specializedmedicine' or code = 'dentistry').empty() implies Claim.bodySite.empty()"