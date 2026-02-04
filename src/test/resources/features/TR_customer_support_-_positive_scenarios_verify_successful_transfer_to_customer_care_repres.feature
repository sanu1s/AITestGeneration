Feature: Customer Support - Positive Scenarios

  Scenario: Verify successful transfer to customer care representative after agent request
    Given User is on the customer support portal
    When User clicks on the "Speak to an Agent" button
    Then The confirmation message should display "Agents are available to assist you right now. I'll transfer you to a customer care representative immediately."
