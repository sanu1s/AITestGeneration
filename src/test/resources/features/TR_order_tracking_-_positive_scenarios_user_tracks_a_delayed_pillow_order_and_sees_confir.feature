Feature: Order Tracking - Positive Scenarios

  Scenario: User tracks a delayed pillow order and sees confirmed new date
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "PILLOW_ORD_123"
    And User clicks the "Track Order" button
    Then The status message should display "Your pillow order PILLOW_ORD_123 is delayed. New delivery date: August 11th."
