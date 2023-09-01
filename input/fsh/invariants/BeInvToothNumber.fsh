Invariant: be-inv-toothNumber
Description: "BodySite SHALL contain a value from BeVSToothNumberBodySite, if available, in a dentistry attestation"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'dentistry').exists() implies (Claim.item.bodySite.coding.empty() or Claim.item.bodySite.coding.memberOf('https://www.ehealth.fgov.be/standards/fhir/mycarenet/ValueSet/be-vs-toothnumber-bodysite') )"