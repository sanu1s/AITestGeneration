Feature: Order Tracking - Negative Scenarios (No Results Found)

  Scenario: User attempts to track an order with an invalid format
    Given User is on the order tracking page
    When User enters order number "INVALIDFORMAT"
    And User clicks the "Track Order" button
    Then The status message should display "At this time we do not have any. I do apologize."
