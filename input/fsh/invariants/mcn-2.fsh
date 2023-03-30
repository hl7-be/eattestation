Invariant: mcn-2
Description: "If identifier is not present: (category, code, quantityQuantity, supportingInfo, authoredOn and contained) SHALL be present."
Severity: #error
Expression: "identifier.empty() implies (category.exists() and code.exists() and quantityQuantity.exists() and authoredOn.exists() and supportingInfo.exists() and contained.exists())"