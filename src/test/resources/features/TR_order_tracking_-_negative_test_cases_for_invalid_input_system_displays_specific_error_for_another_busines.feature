Feature: Order Tracking - Negative Test Cases for Invalid Input

  Scenario: System displays specific error for another business hours related query as order number
    Given User is on the order tracking page
    When User enters "Tell me about your opening times" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Sorry, I had trouble coming up with a response for your question about our business hours. Could you please try rephrasing your question?"
