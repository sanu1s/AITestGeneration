Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid numeric order
    Given User is on the Order Tracking page
    When User enters order number "123"
    And User clicks the Track Order button
    Then The order status should be "The order status Delayed"
    And The URL should remain on the Order Tracking page
