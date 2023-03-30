Invariant: mcn-1
Description: "If identifier is present: (category, code, quantityQuantity, supportingInfo, authoredOn and contained) SHALL not be present."
Severity: #error
Expression: "identifier.exists() implies (category.empty() and code.empty() and quantityQuantity.empty() and authoredOn.empty() and supportingInfo.empty() and contained.empty())"