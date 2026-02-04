Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track another valid order - In Transit
    Given User is on the order tracking page "https://www.ourcompany.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD67890 is In Transit"
