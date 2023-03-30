Extension: BeExtEAttestationItemPreAuthRef
Id: be-ext-eattestation-item-preauthref
Title: "BeExtEAttestationItemPreAuthRef"
Description: "Id of the preauthorization of the item"
* value[x] 1..1 MS
* value[x] only string
* ^context.type = #element
* ^context.expression = "Claim.item"
