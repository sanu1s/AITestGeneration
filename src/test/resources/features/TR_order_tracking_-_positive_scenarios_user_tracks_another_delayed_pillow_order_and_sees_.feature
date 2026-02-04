Feature: Order Tracking - Positive Scenarios

  Scenario: User tracks another delayed pillow order and sees a different confirmed date
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "PILLOW_ORD_456"
    And User clicks the "Track Order" button
    Then The status message should display "Your pillow order PILLOW_ORD_456 is delayed. New delivery date: August 15th."
