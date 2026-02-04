Feature: Contact Us Page - Display of Informational Messages (Positive)

  Scenario: Verify high volume and wait time messages are displayed correctly
    Given User navigates to the "Contact Us" page
    Then The high volume message should display "We are currently experiencing higher than normal volumes."
    And The estimated wait time should display "The estimated wait time to connect with a care representative is about 5-10 minutes."
    And The hold option prompt should display "Would you to hold?"
