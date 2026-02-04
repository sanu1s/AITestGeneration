Feature: Order Tracking System - Price Adjustment Query Handling (Positive)

  Scenario: User enters 'price adjustment' query into order number field
    Given User is on the order tracking page
    When User enters "price adjustment" into the order number input field
    And User clicks the "Track Order" button
    Then The status message should display "I understand you're looking for a price adjustment. Could you please provide more information about the issue you're experiencing so I can route you to the correct department? Here are some options:"
