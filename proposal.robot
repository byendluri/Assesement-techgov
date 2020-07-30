*** Settings ***
Documentation    Sample Test to Open Browser

Resource   testkeywords.robot
Resource   GrantLogin.resource
Resource   MyGrantDashboard.resource
Resource   SectorSelector.resource
Resource   GrantTypeSelector.resource
Resource   FunctionalArea.resource
Resource   ApplicationForm.resource
Resource   Eligibility.resource
Resource   ContactDetails.resource
Resource    Proposal.resource
Resource   BusinessImpact.resource
Resource   CostDetails.resource


*** Variables ***
${URL}   https://bgp-qa.gds-gov.tech
${BROWSER}    Chrome
${TITLE}   Business Grants Portal
${SETTIMEOUT}    20
${APPLICATIONFORMVALIDATIONTEXT}    Complete your grant application

*** Test Cases ***
Submit Proposal Details
     Open Browser To Login Page   ${URL}    ${BROWSER}   ${TITLE}
  Perform Initial Login
  Click on GrantLoginButton    ${LoginWithCorpPass}
  Perform MyGrant Login     ${NRICLOCATOR}     ${FULLNAMELOCATOR}     ${UENLOCATOR}    ${ROLELOCATOR}    ${LOGINBUTTONLOCATOR}     ${NRICVALUE}     ${FULLNAMEVALUE}    ${UENVALUE}    {ROLEVALUE}
  Click On Get New Grant Form button in the MyGrant Dashboard    ${GETNEWGRANTBUTTON}    ${SETTIMEOUT}
  Click On Get New Grant Form button in the MyGrant Dashboard     ${ITLOCATOR}    ${SETTIMEOUT}
  Click On Get New Grant Form button in the MyGrant Dashboard     ${BRINGMYBUSINESS}     ${SETTIMEOUT}
  Choose a Functional Area    ${MRALOCATOR}     ${SETTIMEOUT}     ${FUNCTIONALAREAAPPLYBUTTON}
  Click On Proceed Button in the Application Form Page    ${APPLICATIONFORMVALIDATIONTEXT}    ${APPLICATIONFORMPROCEEDBUTTON}    ${SETTIMEOUT}
  Submit the Eligibility Form With all Checked with Yes    ${REGISTEREDINSINGAPOREYES}    ${GROUPSALESYES}    ${LOCALEQUITYYES}    ${TARGETMARKETYES}    ${MUTLIPLESTATEMENTYES}    ${ELIGIBILITYNEXTBUTTON}     ${SETTIMEOUT}

  Enter Name Field in the Contact Details Page    ${CONTACTNAME}    Bhargav    ${SETTIMEOUT}
  Enter Job Title Field in the Contact Details Page    ${CONTACTJOBTITLE}     QA    ${SETTIMEOUT}
  Enter Contact Number Field in the Contact Details Page     ${CONTACTNUMBER}       86850046    ${SETTIMEOUT}
  Enter Email Field in the Contact Details Page    ${CONTACTPRIMARYEMAIL}     byendluri@gmail.com     ${SETTIMEOUT}
  Select Same As Registered Address Check Box     ${CONTACTREGISTERADDCHECKBOX}
  Select Same As Main Contact Check Box     ${CONTACTMAINCONTACTCHECKBOX}
  Click on the Next Button in the Contact Details Page    ${CONTACTNEXTBUTTON}

  Enter Project Title in the Proposal Page     ${PROJECTTILE}    Bhargav Trade    ${SETTIMEOUT}
  Enter Start Date in the Proposal Page        ${STARTDATE}      01 Aug 2020      ${SETTIMEOUT}
  Enter End Date in the Proposal Page          ${ENDDATE}        31 Dec 2020      ${SETTIMEOUT}
  Enter Project Description in the Proposal page     ${PROJECTDESCRIPTION}      Bhargav Project for QA     ${SETTIMEOUT}
  #Select an Activity in the Proposal Page     ${ACTIVITY}    ${ACTIVITYLIST}    Market Entry     ${SETTIMEOUT}
  #${Result}= Page Should Contain Element  ${ACTIVITY}
  #Log   ${Result}
  Select the Target Market Radio Button    ${RADIOBUTTONYES}
  Upload the Document     ${ATTACHFILES}    //Downloads//screenshot.png
  Click on Next Button in the Proposal Page    ${PROPOSALNEXTBUTTON}
  
  Enter Financial Year End Date     ${FYEAREND}     31 Dec 2020   ${SETTIMEOUT}
  Enter Overseas Sales Details     ${OVERSEASSALES1}     ${OVERSEASSALES2}     ${OVERSEASSALES3}      ${OVERSEASSALES4}     100000     200000      3000000     4000000     ${SETTIMEOUT}
  Enter Overseas Investments Details     ${OVERSEASINVESTMENTS1}    ${OVERSEASINVESTMENTS2}     ${OVERSEASINVESTMENTS3}     ${OVERSEASINVESTMENTS4}     25000    64000    48000    50000   ${SETTIMEOUT}
  Enter Rationale For Projections    ${PROJECTIONRATIONALE}     This is a Test Project
  Enter Non Tangible Benefits    ${NONTANGILEBENEFITS}     This is a Test Project
  Click Next Button    ${NEXTBUTTON}
  
  Click on Third Party Vendors    ${THIRDPARTYVENDORS}    ${SETTIMEOUT}
  Click ADD ITEM Under Third Party    ${THIRDPARTADDITEM}      ${SETTIMEOUT}
  Select Vendor Reguisterd option     ${VENDORREGISTEROVS}
  Enter the Name of the Vendor   ${VENDORNAME}     Matrix Solutions
  Enter Estimated Cost of Billing     ${ESTIMATEDCOST}     100000
  Click on Next Button in the Cost Details Page    ${COSTDETAILSNEXTBUTTON}
