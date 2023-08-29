Invariant: be-inv-location
Description: "The location SHALL be indicated using a value from https://www.ehealth.fgov.be/standards/fhir/nihdi-terminology/ValueSet/be-vs-hospital-service-cd if it is a department code, or a https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi for an organization"
Severity: #error
Expression: "Claim.item.(location as Reference).empty().not() implies 
(
    Claim.item.(location as Reference).resolve().type.memberOf('https://www.ehealth.fgov.be/standards/fhir/nihdi-terminology/ValueSet/be-vs-hospital-service-cd') 
    or Claim.item.(location as Reference).resolve().managingOrganization.resolve().identifier.where(system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi') 
    or Claim.item.(location as Reference).resolve().managingOrganization.identifier.where(system = 'https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi')
)"