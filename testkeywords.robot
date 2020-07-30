*** Settings ***

Library           SeleniumLibrary
Library           Dialogs
#Resource          GrantLogin.resource

*** Keywords ***

Open Browser To Login Page
   [Arguments]  ${LOGINURL}    ${BROWSER}    ${TITLEVAL}
      Open Browser    ${LOGINURL}    ${BROWSER}
      #Title Should Be     ${TITLEVAL}

Perform Initial Login
   Execute Manual Step    Complete Login

Click on GrantLoginButton
  [Arguments]     ${MYGRANTLOGIN}
     Page Should Contain Element    ${MYGRANTLOGIN}
     Click Element     ${MYGRANTLOGIN}

Perform MyGrant Login
   [Arguments]    ${NRICTEXT}    ${NAMETEXT}    ${UENTEXT}    ${ROLESELECT}    ${LOGINBUTTON}    ${NRICVAL}    ${NAMEVAL}    ${UENVAL}    ${ROLEVAL}
      Page Should Contain Textfield    ${NRICTEXT}
      Clear Element Text     ${NRICTEXT}
      Input Text    ${NRICTEXT}    ${NRICVAL}
      Page Should Contain Textfield    ${NAMETEXT}
      Clear Element Text    ${NAMETEXT}
      Input Text    ${NAMETEXT}    ${NAMEVAL}
      Page Should Contain Textfield    ${UENTEXT}
      Clear Element Text     ${UENTEXT}
      Input Text    ${UENTEXT}     ${UENVAL}
      Click Button    ${LOGINBUTTON}

Click On Get New Grant Form button in the MyGrant Dashboard
   [Arguments]    ${GETGRANTFORMBUTTON}    ${TIMEOUT}
      Wait Until Element is Visible    ${GETGRANTFORMBUTTON}    ${TIMEOUT}
      Click Element    ${GETGRANTFORMBUTTON}


Choose a Sector From the Sector Selector Page
   [Arguments]   ${SECTORLOCATOR}    ${TIMEOUT}
      Wait Until Page Contains Element    ${SECTORLOCATOR}    ${TIMEOUT}
      Click Element    ${SECTORLOCATOR}

Choose a Grant Type From the From the Grant Type Page
     [Arguments]    ${GRANTTYPELOCATOR}     ${TIMEOUT}
          Wait Until Page Contains Element    ${GRANTTYPELOCATOR}    ${TIMEOUT}
          Click Element    ${GRANTTYPELOCATOR}

Choose a Functional Area
   [Arguments]    ${FUNCTIONALAREALOCATOR}     ${TIMEOUT}    ${NEXTBUTTON}
     Wait Until Page Contains Element    ${FUNCTIONALAREALOCATOR}    ${TIMEOUT}
     Click Element    ${FUNCTIONALAREALOCATOR}
     Element Should Be Enabled    ${NEXTBUTTON}
     Click Element    ${NEXTBUTTON}

Click On Proceed Button in the Application Form Page
   [Arguments]    ${PAGEVALIDATIONTEXT}    ${PROCEEDBUTTON}    ${TIMEOUT}
      Wait Until Page Contains Element    ${PROCEEDBUTTON}    ${TIMEOUT}
      Page Should Contain    ${PAGEVALIDATIONTEXT}
      Element Should Be Enabled    ${PROCEEDBUTTON}
      Click Element    ${PROCEEDBUTTON}

#Eligibility PAGE KEYWORDS

Validate the Error Message for Registered in Singapore in Eligibility Page
    [Arguments]    ${REGISTEREDLOCATOR}    ${MESSAGE}     ${TIMEOUT}
       Wait Until Page Contains Element    ${REGISTEREDLOCATOR}    ${TIMEOUT}
       Click Element    ${REGISTEREDLOCATOR}
       Page Should Contain    ${MESSAGE}

Validate the Error Message for Group Sales in Elgibility Page
      [Arguments]   ${GROUPSALESLOCATOR}     ${MESSAGE}     ${TIMEOUT}
          Wait Until Page Contains Element    ${GROUPSALESLOCATOR}     ${TIMEOUT}
          Click Element    ${GROUPSALESLOCATOR}
          Page Should Contain     ${MESSAGE}

Validate the Error Message for Local Equity in Eligibility Page
    [Arguments]    ${LOCALEQUITYLOCATOR}     ${MESSAGE}     ${TIMEOUT}
       Wait Until Page Contains Element     ${LOCALEQUITYLOCATOR}     ${TIMEOUT}
       Click Element     ${LOCALEQUITYLOCATOR}
       Page Should Contain     ${MESSAGE}

Validate the Error Message for target Market in Eligibility Page
      [Arguments]    ${TARGETMARKETLOCATOR}     ${MESSAGE}    ${TIMEOUT}
        Wait Until Page Contains Element     ${TARGETMARKETLOCATOR}    ${TIMEOUT}
        Click Element     ${TARGETMARKETLOCATOR}
        Page Should Contain    ${MESSAGE}

Validate the Error Message for Multiple Statements in Eligibility Page
    [Arguments]     ${MULTIPLELOCATOR}    ${MESSAGE}     ${TIMEOUT}
       Wait Until Page Contains Element    ${MULTIPLELOCATOR}   ${TIMEOUT}
       Click Element     ${MULTIPLELOCATOR}
       Page Should Contain    ${MESSAGE}

#End of Eligibility PAGE KEYWORDS


Submit the Eligibility Form With all Checked with Yes
   [Arguments]    ${REGISTEREDLOCATOR}    ${GROUPSALESLOCATOR}    ${LOCALEQUITYLOCATOR}    ${TARGETMARKETLOCATOR}    ${MULTIPLELOCATOR}    ${NEXTBUTTON}    ${TIMEOUT}
        Wait Until Page Contains Element     ${REGISTEREDLOCATOR}     ${TIMEOUT}
        Click Element    ${REGISTEREDLOCATOR}
        Click Element    ${GROUPSALESLOCATOR}
        Click Element    ${LOCALEQUITYLOCATOR}
        Click Element    ${TARGETMARKETLOCATOR}
        Click Element    ${MULTIPLELOCATOR}
        Click Element    ${NEXTBUTTON}

Enter Name Field in the Contact Details Page
   [Arguments]    ${CONTACTLOCATOR}      ${VALUE}     ${TIMEOUT}
      Wait Until Page Contains Element     ${CONTACTLOCATOR}     ${TIMEOUT}
      Input Text    ${CONTACTLOCATOR}    ${VALUE}

Enter Job Title Field in the Contact Details Page
   [Arguments]    ${CONTACTLOCATOR}    ${VALUE}    ${TIMEOUT}
      Wait Until Page Contains Element     ${CONTACTLOCATOR}     ${TIMEOUT}
      Input Text    ${CONTACTLOCATOR}    ${VALUE}

Enter Contact Number Field in the Contact Details Page
      [Arguments]    ${CONTACTLOCATOR}    ${VALUE}    ${TIMEOUT}
      Wait Until Page Contains Element     ${CONTACTLOCATOR}     ${TIMEOUT}
      Input Text    ${CONTACTLOCATOR}    ${VALUE}

Enter Email Field in the Contact Details Page
      [Arguments]    ${CONTACTLOCATOR}    ${VALUE}    ${TIMEOUT}
      Wait Until Page Contains Element     ${CONTACTLOCATOR}     ${TIMEOUT}
      Input Text    ${CONTACTLOCATOR}    ${VALUE}

Select Same As Registered Address Check Box
    [Arguments]   ${REGISTEREDADDCHECKBOX}
       Select Checkbox    ${REGISTEREDADDCHECKBOX}

Select Same As Main Contact Check Box
    [Arguments]   ${REGISTEREDADDCHECKBOX}    
       Select Checkbox    ${REGISTEREDADDCHECKBOX}

Check the Error Message is Generated in the Contact Details Page
    [Arguments]    ${MESSAGE}
      Page Should Contain    ${MESSAGE}

Click on Save Button in the Contact Details Page
    [Arguments]    ${SAVEBUTTON}
       Click Element    ${SAVEBUTTON}

Click on the Next Button in the Contact Details Page
    [Arguments]    ${NEXTBUTTON}
       Click Element    ${NEXTBUTTON}

Click on the Previous Button in the Contact Details Page
     [Arguments]    ${PREVIOUSBUTTON}
       Click Element    ${PREVIOUSBUTTON}

Clear the Entered Text in the Field
    [Arguments]   ${FIELDNAME}
      Clear Element Text     ${FIELDNAME}

Click on a Specified Field
    [Arguments]   ${FIELDNAME}
       Click Element    ${FIELDNAME}

Enter Project Title in the Proposal Page
   [Arguments]    ${PROJECTTILELOCATOR}    ${VALUE}     ${TIMEOUT}
     Wait Until Page Contains Element    ${PROJECTTILELOCATOR}    ${TIMEOUT}
     Input Text   ${PROJECTTILELOCATOR}    ${VALUE}

Enter Start Date in the Proposal Page
   [Arguments]    ${STARTDATELOCATOR}    ${VALUE}    ${TIMEOUT}
      Wait Until Page Contains Element    ${STARTDATELOCATOR}   ${TIMEOUT}
      Input Text    ${STARTDATELOCATOR}    ${VALUE}

Enter End Date in the Proposal Page
   [Arguments]    ${ENDDATELOCATOR}    ${VALUE}    ${TIMEOUT}
      Wait Until Page Contains Element    ${ENDDATELOCATOR}   ${TIMEOUT}
      Input Text    ${ENDDATELOCATOR}     ${VALUE}

Enter Project Description in the Proposal page
    [Arguments]   ${PROJECTDESCLOCATOR}    ${VALUE}    ${TIMEOUT}
       Wait Until Page Contains Element    ${PROJECTDESCLOCATOR}     ${TIMEOUT}
       Input Text    ${PROJECTDESCLOCATOR}    ${VALUE}

Select an Activity in the Proposal Page
    [Arguments]    ${ACTIVITYLOCATOR}     ${ACTIVITYLISTLOCATOR}    ${VALUE}     ${TIMEOUT}
      Page Should Contain Element    ${ACTIVITYLOCATOR}   ${TIMEOUT}
      #Select From List By Value    ${ACTIVITYLOCATOR}     ${VALUE}
      Click Element    ${ACTIVITYLOCATOR}
      #$${Values}=   Get List Items    ${ACTIVITYLISTLOCATOR}
      #Log   ${Values}
      #Page Should Contain Element    ${ACTIVITYLISTLOCATOR}   ${TIMEOUT}
      #Select From List By Value    ${ACTIVITYLISTLOCATOR}     ${VALUE}
      Click Element    ${ACTIVITYLOCATOR}
      Input Text       ${ACTIVITYLOCATOR}     ${VALUE}

Select the Target Market Radio Button
   [Arguments]    ${RADIOBUTTONLOCATOR}
      Click Element   ${RADIOBUTTONLOCATOR}

Upload the Document
   [Arguments]   ${UPLOADLOCATOR}    ${FILENAME}
     #Click Element   ${UPLOADLOCATOR}
     Choose File   ${UPLOADLOCATOR}    ${FILENAME}

Click on Next Button in the Proposal Page
   [Arguments]    ${NEXTBUTTON}
     Click Element    ${NEXTBUTTON}

Enter Financial Year End Date
   [Arguments]   ${YEARENDLOCATOR}    ${VALUE}    ${TIMEOUT}
      Wait Until page Contains Element    ${YEARENDLOCATOR}    ${TIMEOUT}
      Click Element   ${YEARENDLOCATOR}
      Input Text    ${YEARENDLOCATOR}    ${VALUE}

Enter Overseas Sales Details
  [Arguments]   ${QTR1}   ${QTR2}    ${QTR3}   ${QTR4}   ${VALUE1}     ${VALUE2}     ${VALUE3}    ${VALUE4}    ${TIMEOUT}  
     Wait Until page Contains Element   ${QTR1}    ${TIMEOUT}
     Click Element    ${QTR1}
     Input Text    ${QTR1}    ${VALUE1}

     Click Element    ${QTR2}   
     Input Text    ${QTR2}    ${VALUE2}

     Click Element    ${QTR3}   
     Input Text    ${QTR3}    ${VALUE3}

     Click Element    ${QTR4}   
     Input Text    ${QTR4}    ${VALUE4}


Enter Overseas Investments Details
  [Arguments]   ${QTR1}   ${QTR2}    ${QTR3}   ${QTR4}   ${VALUE1}     ${VALUE2}     ${VALUE3}    ${VALUE4}    ${TIMEOUT}
     Wait Until page Contains Element   ${QTR1}    ${TIMEOUT}
     Click Element    ${QTR1}   
     Input Text    ${QTR1}    ${VALUE1}

     Click Element    ${QTR2}    
     Input Text    ${QTR2}    ${VALUE2}

     Click Element    ${QTR3}     
     Input Text    ${QTR3}    ${VALUE3}

     Click Element    ${QTR4}     
     Input Text    ${QTR4}    ${VALUE4}


Enter Rationale For Projections
    [Arguments]    ${RATIONALEPROJECTIONS}     ${VALUE}
        Click Element    ${RATIONALEPROJECTIONS}
        Input Text   ${RATIONALEPROJECTIONS}    ${VALUE}

Enter Non Tangible Benefits
    [Arguments]    ${TANGIBLEBENEFITS}    ${VALUE}
       Click Element    ${TANGIBLEBENEFITS}
       Input Text    ${TANGIBLEBENEFITS}    ${VALUE}

Click Next Button
  [Arguments]   ${NEXTBUTTON}
     Click Element    ${NEXTBUTTON}

Click on Third Party Vendors
    [Arguments]     ${THIRDPARTY}     ${TIMEOUT}
       Wait Until Page Contains Element    ${THIRDPARTY}    ${TIMEOUT}
       Click Element    ${THIRDPARTY}

Click ADD ITEM Under Third Party
     [Arguments]    ${THIRDPARTYADD}    ${TIMEOUT}
        Wait Until Page Contains Element     ${THIRDPARTYADD}     ${TIMEOUT}
        Click Element    ${THIRDPARTYADD}

Select Vendor Reguisterd option
   [Arguments]    ${REGISTEREDLOCATION}
      Click Element     ${REGISTEREDLOCATION}

Enter the Name of the Vendor
  [Arguments]    ${NAMEOFTHEVENDOR}   ${VALUE}
      Click Element     ${NAMEOFTHEVENDOR}
      Input Text    ${NAMEOFTHEVENDOR}    ${VALUE}

Enter Estimated Cost of Billing
    [Arguments]   ${COSTDETAILS}    ${VALUE}
      Click Element    ${COSTDETAILS}
      Input Text    ${COSTDETAILS}    ${VALUE}

Click on Next Button in the Cost Details Page  
    [Arguments]    ${NEXTBTTON}
       Click Element    ${NEXTBTTON} 
