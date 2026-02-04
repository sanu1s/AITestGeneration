Feature: Customer Service Wait Time Notifications (Positive Test Cases)

  Scenario: Verify High Volume Wait Time Message after Contact Us Link
    Given User navigates to the "Home" page
    When User clicks on "Contact Us" link
    Then the wait time message "We are currently experiencing higher than normal volumes, and the estimated wait time to connect with a care representative is greater than 30 minutes." should be displayed
