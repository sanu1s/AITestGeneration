Feature: Order Tracking - Water Bottle Customization Verification (Positive Cases)

  Scenario: Verify correct water bottle name for a valid order
    Given User is on the order tracking page
    When User enters order number "WB_CORRECT_1"
    And User clicks the "Track Order" button
    Then The status message should display "Order WB_CORRECT_1 details: Water bottle with name 'Alice'"
