Invariant: be-inv-transplantation
Description: "Transplantation CAN only occur in a specialised medicine attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'specializedmedicine').empty() implies Claim.supportingInfo.code.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/nihdi-terminology/CodeSystem/be-cs-claim-transplantation-code').empty()"