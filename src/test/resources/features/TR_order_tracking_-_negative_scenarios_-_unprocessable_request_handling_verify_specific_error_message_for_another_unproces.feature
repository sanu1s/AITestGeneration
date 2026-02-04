Feature: Order Tracking - Negative Scenarios - Unprocessable Request Handling

  Scenario: Verify specific error message for another unprocessable query
    Given User is on the order tracking page
    When User enters "customer support" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Sorry, I had trouble coming up with a response for your request about the delivery emails. Could you please try rephrasing your question."
