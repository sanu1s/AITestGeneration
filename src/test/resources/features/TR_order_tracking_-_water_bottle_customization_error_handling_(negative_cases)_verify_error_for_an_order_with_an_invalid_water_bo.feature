Feature: Order Tracking - Water Bottle Customization Error Handling (Negative Cases)

  Scenario: Verify error for an order with an invalid water bottle name
    Given User is on the order tracking page
    When User enters order number "WB_ERROR_1"
    And User clicks the "Track Order" button
    Then The error message should display "Issue with water bottle name for Order WB_ERROR_1: Invalid characters"
