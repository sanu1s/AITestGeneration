Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid numeric order
    Given User is on the Order Tracking page
    When User enters order number "98765"
    And User clicks the Track Order button
    Then The order status should be "The order status Delayed"
    And The URL should remain on the Order Tracking page
