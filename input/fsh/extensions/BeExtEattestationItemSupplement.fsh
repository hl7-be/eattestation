Extension: BeExtEAttestationItemSupplement
Id: be-ext-eattestation-item-supplement
Title: "BeExtEAttestationItemSupplement"
Description: "Supplement to be paid by the patient per item"
* value[x] 1..1 MS
* value[x] only Money
* ^context.type = #element
* ^context.expression = "Claim.item"

