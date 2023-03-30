### Guidance

<p>This guide uses the artefacts and guidance as they are defined in <a href="https://www.ehealth.fgov.be/standards/fhir" target="_blank">the official federal IG as published by eHealth Platform</a>. Please take note when you are validating you also need that IG for the base federal profiles.</p>

### What is the eAttestation project?
The aim of the eAttest project is to digitalise the exchange of certificates of care given between the care provider and the insurance company (OA).

Two use cases are possible

- The provider sends an electronic care certificate to the insurance company. 

- The provider requests the cancellation of an electronic care certificate previously sent to the insurer.

The process for sending a Statement of Evidence of Care is as follows

- The patient goes for a consultation with his health care provider.

- After having identified the patient in his software (via the NISS), the care provider can consult the patient's rights, such as: is third-party payment compulsory / authorised / prohibited for this patient? Is he in a medical home?

- The provider charges the patient and draws up his electronic certificate of care which he sends to the insurance company electronically, signed and secured.

- The insurance company will check the certificate of care given.

- If the checks are correct, the insurance company sends an acknowledgement of receipt of the care-giving certificate to the care provider. If not, the insurance company sends a rejection message indicating the error encountered so that the provider can correct it.

- The patient then receives a receipt with the amount they have paid and the number of the electronic care certificate returned by the insurance company as proof of receipt of the care certificate sent by the provider to the insurance company.

- The insurance company will then carry out a full check of the electronic care certificate:

- If it is ok, the insurance company pays the patient. 

- If the insurance company cannot reimburse, it will send the patient a justified refusal of payment.

- The patient can also view the status of his or her payments with the insurance company at any time in a secure manner.

The process for requesting the cancellation of a certificate of care given is as follows

- If, after sending an electronic care certificate , the care provider becomes aware of an error that is exclusively the result of one of the situations that can lead to a cancellation request, the provider can then send a cancellation request to the insurance company

- The insurance company will check the cancellation request.

- If the checks are correct, the insurance company sends a confirmation of cancellation of the electronic care certificate. If not, the insurance company sends a rejection message indicating the error encountered so that the provider can correct it.

### Downloadable contents
<p><a href="https://share.intermut.be/home/MyCareNet/chapterIV/extranet/Webservices%20eAgreement/Forms/AllItems.aspx" target="_blank">Please consult the Sharepoint environment</a> for supporting technical information and guidelines.</p>

### Package Usage using the FHIR Validator
<p>The FHIR Validator is a Java jar that is provided as part of the specification, and that is used during the publication process to validate all the published examples.</p>
<p><a href="https://www.hl7.org/fhir/validation.html#jar" target="_blank">Follow this link for the full description on the usage of this validator</a></p>
<p>As example: This is the command line to validate FHIR resources located in the folder "c:\temp\MCNExamples" and the output HTML file will be available in "c:\temp\validation.html". </p>
<p>Note: As no version is indicated, the validation will be done with the latest published MyCareNet Package.</p>
<p><code>java -jar validator_cli.jar c:\temp\MCNExamples -ig mycarenet.be.r4.profiles -html-output c:\temp\validation.html</code></p>
