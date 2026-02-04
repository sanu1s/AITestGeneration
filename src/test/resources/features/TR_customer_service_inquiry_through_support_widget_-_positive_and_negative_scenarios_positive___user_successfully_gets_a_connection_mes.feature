Feature: Customer Service Inquiry through Support Widget - Positive and Negative Scenarios

  Scenario: Positive - User successfully gets a connection message for customer service
    Given User is on the homepage
    When User opens the "Support Widget"
    And User types "Can I talk to a customer service?" into the inquiry field
    And User clicks the "Submit" button
    Then The response message should display "We are connecting you to a customer service representative."
