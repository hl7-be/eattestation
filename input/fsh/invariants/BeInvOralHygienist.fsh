Invariant: be-inv-oral-hygienist
Description: "Oral Hygienist CAN only occur a dentist's attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'dentistry').empty() implies Claim.careTeam.qualification.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty').where(code = 'persoraldentalhygienist').empty()"