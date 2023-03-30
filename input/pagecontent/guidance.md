### Guidance

<p>This guide uses the artefacts and guidance as they are defined in <a href="https://www.ehealth.fgov.be/standards/fhir" target="_blank">the official federal IG as published by eHealth Platform</a>. Please take note when you are validating you also need that IG for the base federal profiles.</p>

### Downloadable contents
<p><a href="https://share.intermut.be/home/MyCareNet/chapterIV/extranet/Webservices%20eAgreement/Forms/AllItems.aspx" target="_blank">Please consult the Sharepoint environment</a> for supporting technical information and guidelines.</p>

### Package Usage using the FHIR Validator
<p>The FHIR Validator is a Java jar that is provided as part of the specification, and that is used during the publication process to validate all the published examples.</p>
<p><a href="https://www.hl7.org/fhir/validation.html#jar" target="_blank">Follow this link for the full description on the usage of this validator</a></p>
<p>As example: This is the command line to validate FHIR resources located in the folder "c:\temp\MCNExamples" and the output HTML file will be available in "c:\temp\validation.html". </p>
<p>Note: As no version is indicated, the validation will be done with the latest published MyCareNet Package.</p>
<p><code>java -jar validator_cli.jar c:\temp\MCNExamples -ig mycarenet.be.r4.profiles -html-output c:\temp\validation.html</code></p>
