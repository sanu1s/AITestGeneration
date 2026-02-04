Feature: Reprint Label Functionality - Positive Test Cases

  Scenario: Successful Reprint with Valid Data 1
    Given User is on the "https://www.OwnCompanybarnOwnCompany.com/customer-service/return/reprint-label.html" page
    When User enters reference number "0153949684" and postal code "22302"
    And User clicks on "Reprint Label" button
    Then The success message should display "Your return label is ready for reprint."
