Feature: OrderTracking_UIVerification.feature

  Scenario: Verify initial page elements and URL
    Given User navigates to the order tracking URL
    Then The URL should be "http://127.0.0.1:8000/order/tracking"
    And The order number input field should be visible
    And The "Track Order" button should be visible
