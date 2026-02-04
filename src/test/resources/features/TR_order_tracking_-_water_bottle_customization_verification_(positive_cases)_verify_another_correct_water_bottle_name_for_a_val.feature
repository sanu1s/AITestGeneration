Feature: Order Tracking - Water Bottle Customization Verification (Positive Cases)

  Scenario: Verify another correct water bottle name for a valid order
    Given User is on the order tracking page
    When User enters order number "WB_CORRECT_2"
    And User clicks the "Track Order" button
    Then The status message should display "Order WB_CORRECT_2 details: Water bottle with name 'Charlie'"
