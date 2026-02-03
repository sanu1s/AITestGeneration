Feature: Order Tracking Price Adjustment Functionality - Positive Scenarios

  Scenario: User tracks another eligible order for price adjustment
    Given User is on the order tracking page
    When User enters order number "PA67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order PA67890 is eligible for price adjustment. A refund of $15.00 has been initiated."
    And The current URL should be "https://example.com/order-status/PA67890"
