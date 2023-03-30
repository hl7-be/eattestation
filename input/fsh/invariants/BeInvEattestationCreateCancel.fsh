Invariant: be-inv-eattestation-create-cancel
Description: "Creation requires empty identifier"
Severity: #error
Expression: "Claim.identifier.where(system = 'https://www.mycarenet.be/eattest').empty().not() implies Claim.item.empty() and Claim.total.empty() and Claim.careTeam.empty()"