Invariant: be-inv-supplement
Description: "A supplement MUST occur in a specialised medicine, general practice and dentistry attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'specializedmedicine' or code = 'generalpractice' or code = 'dentistry').exists() implies Claim.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/StructureDefinition/be-ext-eattestation-supplement').exists()"