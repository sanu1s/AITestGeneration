Feature: Order Tracking - Negative Scenarios for Return Information Retrieval

  Scenario: User encounters issue retrieving return information for another invalid order
    Given User is on the order tracking page
    When User enters order number "RET_ISSUE_2"
    And User clicks the "Track Order" button
    Then The error message should display "It looks there was an issue retrieving the return information for your order."
