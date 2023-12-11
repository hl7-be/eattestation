Invariant: be-inv-trainee
Description: "Trainee CAN only occur in a GP's attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'generalpractice').empty() implies Claim.careTeam.where(role.coding.where(code = 'assist').exists()).where(qualification.coding.where(code = 'persphysician').exists()).empty()"