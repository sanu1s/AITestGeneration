Feature: Reprint Label Functionality - Negative Test Cases

  Scenario: Reprint with Invalid Postal Code
    Given User is on the "https://www.OwnCompanybarnOwnCompany.com/customer-service/return/reprint-label.html" page
    When User enters reference number "0153949684" and postal code "00000"
    And User clicks on "Reprint Label" button
    Then The error message should display "Invalid Reference Number or Postal Code."
