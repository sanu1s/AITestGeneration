Feature: Order Tracking - Negative Scenarios: System Under High Volume

  Scenario: Display High Volume Message with a different valid order number
    Given User is on the order tracking page "https://www.example.com/track-order"
    When User enters order number "XYZ98765" and clicks track
    Then The error message should display "We are currently experiencing higher than normal volumes. Please try again later."
