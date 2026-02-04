Feature: Delivery Location Change Functionality - Negative Scenarios

  Scenario: User is prompted to contact agent when trying to edit location details
    Given User is on the "delivery details" page for order "ORD101"
    When User clicks on the "Edit Location" button
    Then The system should display the message "You'll need assistance from a care representative for changing the delivery location."
    And The system should display a button "Check Agent Availability"
