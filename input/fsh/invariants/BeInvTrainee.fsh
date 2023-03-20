Invariant: be-inv-trainee
Description: "Trainee SHALL only occur in a GP's attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'generalpractice').empty() implies Claim.careTeam.where(role.coding.code = 'assist').where(qualification.coding.code = 'persphysician').empty()"