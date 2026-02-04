Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track an order for a monogrammed blanket
    Given User is on the order tracking page
    When User enters order number "BLANKET123"
    And User clicks the "Track Order" button
    Then The status message should display "Order BLANKET123: Shipped - Monogrammed and delivered. We hope you love your heirloom blanket!"
