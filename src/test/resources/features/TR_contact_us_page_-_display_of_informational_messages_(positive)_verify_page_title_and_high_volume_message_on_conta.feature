Feature: Contact Us Page - Display of Informational Messages (Positive)

  Scenario: Verify page title and high volume message on Contact Us page
    Given User navigates to the "Contact Us" page
    Then The page title should be "Contact Support - Example Inc."
    And The high volume message should display "We are currently experiencing higher than normal volumes."
