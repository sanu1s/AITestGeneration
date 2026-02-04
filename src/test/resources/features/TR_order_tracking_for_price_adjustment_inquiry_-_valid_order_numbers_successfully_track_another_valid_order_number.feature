Feature: Order Tracking for Price Adjustment Inquiry - Valid Order Numbers

  Scenario: Successfully track another valid order number
    Given User is on the Order Tracking page
    When User enters order number "XYZ98765"
    And User clicks the Track Order button
    Then The status message should display "Order XYZ98765 has been shipped."
    And The URL should be "https://example.com/track/XYZ98765"
