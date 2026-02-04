Feature: Reprint Label Functionality - Negative Test Cases

  Scenario: Reprint with Empty Reference Number
    Given User is on the "https://www.OwnCompanybarnOwnCompany.com/customer-service/return/reprint-label.html" page
    When User enters reference number "" and postal code "22302"
    And User clicks on "Reprint Label" button
    Then The error message should display "Reference Number cannot be empty."
