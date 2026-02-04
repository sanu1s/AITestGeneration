Feature: Order Tracking - Water Bottle Customization Error Handling (Negative Cases)

  Scenario: Verify error for an order with a water bottle name that is too long
    Given User is on the order tracking page
    When User enters order number "WB_ERROR_2"
    And User clicks the "Track Order" button
    Then The error message should display "Issue with water bottle name for Order WB_ERROR_2: Name too long"
