Feature: Order Tracking - Negative Scenarios for Return Information Retrieval

  Scenario: User attempts to get return details for an order with temporary system issues
    Given User is on the order tracking page
    When User enters order number "RET_SYSISSUE2"
    And User clicks the track order button
    Then The error message should display "It looks I'm unable to retrieve the return information for your order at the moment."
