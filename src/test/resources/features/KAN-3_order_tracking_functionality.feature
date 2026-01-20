Feature: Order Tracking Functionality

  Scenario: Verify navigation to tracking page
    Given User navigates to the order tracking page
    Then The current URL should be "http://127.0.0.1:8000/order/tracking"
