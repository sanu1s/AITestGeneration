Feature: Order Tracking - Negative Scenarios: Failed Return Details Retrieval

  Scenario: System fails to retrieve return details for specific order RET987
    Given User is on the order tracking page
    When User enters order number "RET987"
    And User clicks the "Track Order" button
    Then The status message should display "I couldn't retrieve the return details for your order at the moment."
