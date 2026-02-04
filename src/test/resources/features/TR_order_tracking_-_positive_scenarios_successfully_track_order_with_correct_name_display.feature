Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track order with correct name display
    Given User is on the order tracking page
    When User enters order number "0063753110"
    And User clicks "Track Order" button
    Then The order status message should display "Order details for 0063753110"
    And The name on the water bottle should be "Nicole"
    And The zip code should be "10314"
