Feature: Order Tracking - Negative Scenarios for Return Information Retrieval

  Scenario: User tries to retrieve return information for an order where it's currently unavailable
    Given User is on the order tracking page
    When User enters order number "RET_UNAVAIL1"
    And User clicks the track order button
    Then The error message should display "It looks I'm unable to retrieve the return information for your order at the moment."
