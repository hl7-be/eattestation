Logical: BeModelEAttestation
Parent: Element
Id: be-model-eattestation
* serviceProvider 1..1 Identifier "NIHDI number (identification number) of the service provider/organization that certifies the eAttest"
* patient 1..1 Identifier "Patient identification - INSZ (RR or BIS)"
* attestationType 1..1 CodeableConcept "Identification of the type of eAttestation. Ex: physiotherapy - see codesystem eAgreement"
* attestationID 0..1 Identifier "eAttestation ID (created by the AO that is in the claim response) in order to cancel"
* cancelReason 0..1 CodeableConcept "cancellation request justification - reuse list that is already used Values: A = Patient error B = Provider error C = Error in one of the elements of the ASD D = Double encoding E = eAttestation replaced by e-Fact F = eAttestation replaced by ASD paper G = Situation not allowing the establishment of an eAttestation"
* totalFee 1..1 Money "Amount (in euros) charged to the patient for all services, limited to the legal fee."
* supplement 0..1 Money "Amount (in euros) of the supplement paid by the patient in addition to the legal fee."
* collector 1..1 Identifier "CBE number of the collecting entity."
* treatmentCauses 0..1 CodeableConcept "Causes of treatment (NIHDI specific for eInvoicing third-party payer). This zone allows you to give a first accounting orientation to the eAttestation Values: See 'Instructions for electronic invoicing' (RT20Z17 - record type 20 value Z17)"
* service 0..* BackboneElement "Data of the prescription concerned by the request"
* service.provider 1..1 Identifier "Healthcare provider, Identification of the provider. NIHDI number of the provider"
* service.identifier 1..1 Identifier "(pseudo-)nomenclature code of the service performed."
* service.standard 1..1 CodeableConcept "This code provides certain necessary information for pricing. Values: See 'Electronic invoicing instructions' (RT50Z3)"
* service.related 1..1 CodeableConcept "The related service must be completed when the reimbursement of the service depends on the performance of another service. It is the latter which must be mentioned as a related service."
* service.toothNumber 0..1 CodeableConcept "The services for which a tooth number must be mentioned are indicated in the list of prices for dental services published on the NIHDI website"
* service.laterality 0..1 CodeableConcept "In this zone, it is mentioned, by means of a code, whether the treatment was carried out on a left or right limb."
* service.transplantation 0..1 CodeableConcept "This field must be completed for organ or bone marrow transplants. Values: See  'Electronic invoicing instructions' (RT50Z48)"
* service.identical 0..1 CodeableConcept "For certain services, the rules for applying the nomenclature provide for a maximum number of services in a certain period. In certain cases, the nomenclature also provides for derogations from this maximum number. Such derogations can be communicated in this area. The supporting documents for the derogation are made available to the insurers for a posteriori checks. This area is also used to indicate that it is indeed a second (or third or following) identical service on the same day for services without maximum rules (eg consultations or visits by general practitioners). Values: See 'Electronic invoicing instructions' (RT50Z23)"
* service.date 1..1 dateTime "Date on which the service was performed."
* service.location 0..1 BackboneElement "Place where the service was performed. (RT50Z14) When the service was not performed in a particular place, this field is not present."
* service.location.identifier 1..1 Identifier "NIHDI number of the place of service"
* service.location.department 0..1 Identifier "When the place of service is a hospital, the service code must also be added. The service code can be found in the invoicing instructions (RT50Z13)"
* service.prescription 0..1 BackboneElement "Prescription"
* service.prescription.requester 0..1 BackboneElement "mentioned for the services listed on the 'prescriber list', forming part of the electronic invoicing instructions for third-party payment."
* service.prescription.requester.identifier 0..1 Identifier "Identification of the prescriber This content must be filled in if the prescriber standard is different from 3. This content is absent if the prescriber standard is equal to 3."
* service.prescription.authoredOn 0..1 dateTime "Date of prescription This content must be filled in if the prescriber standard is different from 3. This content is absent if the prescriber standard is equal to 3."
* service.prescription.standard 1..1 CodeableConcept "Prescriber standard Values: See 'Electronic invoicing instructions' (RT50Z26)  in https://www.inami.fgov.be/SiteCollectionDocuments/instructions_facturation_electronique. pdf"
* service.auxiliaryProvider 0..2 BackboneElement "Auxiliary provider (RT50Z49) - look for 'type 50 zone 49' in https://www.inami.fgov.be/SiteCollectionDocuments/instructions_facturation_electronique.pdf"
* service.auxiliaryProvider.GMF 0..1 Identifier "Identification of the Physician holding the patient's GMF (Dutch: GMD, French: DMG). Mentioned when the 'G' concept is applied, if the physician is not the holder thereof."
* service.auxiliaryProvider.trainee 0..1 Identifier "When it is a service certified by a physician (training supervisor) but carried out by a trainee physician, then this zone is completed by the identification number of the trainee physician who carried out the service."
* service.auxiliaryProvider.oralHygienist 0..1 Identifier "When it is a service delegated by a dentist but carried out by an oral hygienist then this field is completed by the identification number of the oral hygienist who performed the service"
* service.count 1..1 positiveInt "Number of units The number of times a service was provided on the date indicated OR The number of supplies that were delivered on the date indicated"
* service.fee 1..1 Money "Amount charged to the patient for the service, limited to the legal fee."
* service.supplement 0..1 Money "Amount of the supplement paid by the patient for the service in addition to the legal fee."
* service.medicalAdvisorDecisionNr 0..1 Identifier "The reference number of a medical decision following  a request for agreement"
* service.patientIdentityDocument 0..1 BackboneElement "Patient identity document. This item contains the reading data of the patient's identity document."
* service.patientIdentityDocument.readingDate 0..1 date "Date of reading of the patient's identity document See 'Electronic invoicing instructions' (RT52Z6)"
* service.patientIdentityDocument.readingTime 0..1 time "Time of reading of the patient's identity document See 'Electronic billing instructions' (RT52Z12-13)"
* service.patientIdentityDocument.entryType 1..1 CodeableConcept "Entry type of the patient's identity document See 'Electronic invoicing instructions' (RT52Z9)"
* service.patientIdentityDocument.reasonManual 0..1 CodeableConcept "Reason for manual encoding See 'Electronic invoicing instructions' (RT52Z3)"
* service.patientIdentityDocument.medium 1..1 CodeableConcept "Type of medium of the patient's identity document See 'Instructions for electronic invoicing' (RT52Z10)"
* service.patientIdentityDocument.stickerReason 0..1 CodeableConcept "Reason for using sticker See 'Electronic invoicing instructions' (RT52Z11)"
* service.patientIdentityDocument.serialNumber 0..1 string "Media serial number See 'Electronic invoicing instructions' (RT52Z16)"