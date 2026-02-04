Feature: Reprint Label Functionality - Positive Test Cases

  Scenario: Successful Reprint with Another Valid Data Set
    Given I am on the "reprint return label" page
    When I enter reference number "0153944911" and postal code "60662"
    And I click the "Reprint Label" button
    Then I should see the success message "Return label successfully generated and sent to your email."
