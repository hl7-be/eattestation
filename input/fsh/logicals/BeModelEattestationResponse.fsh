Logical: BeModelEAttestationResponse
Parent: Element
Id: be-model-eattestation-response
* insurer 1..1 Identifier "Identification of the insurer"
* patient 1..1 Identifier "Patient ID"
* attestationType 1..1 CodeableConcept "Identification of the type of eAttestation. Ex: physiotherapy"
* attestationID 1..1 Identifier "Identifier of the eAttestation"
* service 0..* BackboneElement "List of services"
* service.provider 1..1 Identifier "HealthCare Provider Identification (NIHDI number)"
* service.identifier 1..1 CodeableConcept "(pseudo-)nomenclature code of the service performed."
* service.date 1..1 dateTime "Date the service was performed."
* service.count 1..1 positiveInt "Number of units\n The number of times a service has been provided on the date indicated\nOR\nThe number of supplies that have been issued on the date indicated"
* service.fee 1..1 Money "Legal fee for the service"