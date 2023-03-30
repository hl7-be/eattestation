Extension: BeExtEAttestationSupplement
Id: be-ext-eattestation-supplement
Title: "BeExtEAttestationSupplement"
Description: "Total supplement to be paid by the patient"
* value[x] 1..1 MS
* value[x] only Money
* ^context.type = #element
* ^context.expression = "Claim"

