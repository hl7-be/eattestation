Invariant: be-inv-medical-advisor-decision-nr
Description: "Medical advisor decision number SHALL occur for physiotherapy and SHALL NOT for the other eattestations"
Severity: #error
Expression: "Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').code = 'physiotherapy' implies Claim.item.count() <= Claim.item.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/StructureDefinition/be-ext-eattestation-item-preauthref').count()
                and
                Claim.subType.coding.where(system = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/CodeSystem/be-cs-eattestation-types').where(code = 'physiotherapy').empty() implies Claim.item.extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/eattestation/StructureDefinition/be-ext-eattestation-item-preauthref').empty()"