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

*** Variables ***
${URL}   https://bgp-qa.gds-gov.tech
${BROWSER}    Chrome
${TITLE}   Business Grants Portal
${SETTIMEOUT}    20
${APPLICATIONFORMVALIDATIONTEXT}    Complete your grant application


*** Test Cases ***
Validate the Error Message in the Eligibility Page
  Open Browser To Login Page   ${URL}    ${BROWSER}   ${TITLE}
  Perform Initial Login
  Click on GrantLoginButton    ${LoginWithCorpPass}
  Perform MyGrant Login     ${NRICLOCATOR}     ${FULLNAMELOCATOR}     ${UENLOCATOR}    ${ROLELOCATOR}    ${LOGINBUTTONLOCATOR}     ${NRICVALUE}     ${FULLNAMEVALUE}    ${UENVALUE}    {ROLEVALUE}
  Click On Get New Grant Form button in the MyGrant Dashboard    ${GETNEWGRANTBUTTON}    ${SETTIMEOUT}
  Click On Get New Grant Form button in the MyGrant Dashboard     ${ITLOCATOR}    ${SETTIMEOUT}
  Click On Get New Grant Form button in the MyGrant Dashboard     ${BRINGMYBUSINESS}     ${SETTIMEOUT}
  Choose a Functional Area    ${MRALOCATOR}     ${SETTIMEOUT}     ${FUNCTIONALAREAAPPLYBUTTON}
  Click On Proceed Button in the Application Form Page    ${APPLICATIONFORMVALIDATIONTEXT}    ${APPLICATIONFORMPROCEEDBUTTON}    ${SETTIMEOUT}
  Validate the Error Message for Registered in Singapore in Eligibility Page    ${REGISTEREDINSINGAPORENO}    ${ELIGIBILITYERRORMESSAGE}    ${SETTIMEOUT}
  Validate the Error Message for Group Sales in Elgibility Page    ${GROUPSALESNO}    ${ELIGIBILITYERRORMESSAGE}   ${SETTIMEOUT}
  Validate the Error Message for Local Equity in Eligibility Page    ${LOCALEQUITYNO}    ${ELIGIBILITYERRORMESSAGE}    ${SETTIMEOUT}
  Validate the Error Message for target Market in Eligibility Page     ${TARGETMARKETNO}     ${ELIGIBILITYERRORMESSAGE}     ${SETTIMEOUT}
  Validate the Error Message for Multiple Statements in Eligibility Page      ${MULTIPLESTATEMENTNO}     ${ELIGIBILITYERRORMESSAGE}     ${SETTIMEOUT}
  Close Browser     

Submit Eligibility Criteria For the MRA GRANT
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
  Close Browser

Validate the Error Message in the Contact Details Page For Each Field
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
  Clear the Entered Text in the Field    ${CONTACTNAME}
  Click on a Specified Field    ${CONTACTJOBTITLE}
  Check the Error Message is Generated in the Contact Details Page     ${CONTACTERRORMESSAGE}
  Enter Name Field in the Contact Details Page    ${CONTACTNAME}    Bhargav    ${SETTIMEOUT}

  Enter Job Title Field in the Contact Details Page    ${CONTACTJOBTITLE}     ${EMPTY}    ${SETTIMEOUT}
  Clear the Entered Text in the Field    ${CONTACTJOBTITLE}
  Click on a Specified Field    ${CONTACTNUMBER}
  Check the Error Message is Generated in the Contact Details Page    ${CONTACTERRORMESSAGE}
  Enter Job Title Field in the Contact Details Page    ${CONTACTJOBTITLE}     QA    ${SETTIMEOUT}

  Enter Contact Number Field in the Contact Details Page     ${CONTACTNUMBER}       ${EMPTY}    ${SETTIMEOUT}
  Clear the Entered Text in the Field     ${CONTACTNUMBER}
  Click on a Specified Field      ${CONTACTPRIMARYEMAIL}
  Check the Error Message is Generated in the Contact Details Page     ${CONTACTERRORMESSAGE}
  Enter Contact Number Field in the Contact Details Page     ${CONTACTNUMBER}       86850046    ${SETTIMEOUT}

  #Enter Email Field in the Contact Details Page    ${CONTACTPRIMARYEMAIL}     ${EMPTY}     ${SETTIMEOUT}
 
  #Check the Error Message is Generated in the Contact Details Page     ${CONTACTERRORMESSAGE}
  #Enter Email Field in the Contact Details Page    ${CONTACTPRIMARYEMAIL}     byendluri@gmail.com     ${SETTIMEOUT}
  Close Browser

Submit Contact Details Form
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
  Select an Activity in the Proposal Page     ${ACTIVITY}     MARKET ENTRY

