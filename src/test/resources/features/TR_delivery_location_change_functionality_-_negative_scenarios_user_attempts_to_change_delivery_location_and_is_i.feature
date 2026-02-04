Feature: Delivery Location Change Functionality - Negative Scenarios

  Scenario: User attempts to change delivery location and is informed about agent assistance
    Given User is on the "delivery management" page
    When User navigates to the "change delivery location" section
    Then The system should display the message "For changing the delivery location, you'll need assistance from a care representative."
    And The system should offer to "check if an agent is available"
