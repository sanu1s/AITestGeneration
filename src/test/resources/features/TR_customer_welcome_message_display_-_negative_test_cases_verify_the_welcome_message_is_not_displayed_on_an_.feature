Feature: Customer Welcome Message Display - Negative Test Cases

  Scenario: Verify the welcome message is not displayed on an unrelated page
    Given I navigate to the OwnCompany "About Us" page
    Then I should not see the message "Thank you for being a OwnCompany customer, have a wonderful day!"
