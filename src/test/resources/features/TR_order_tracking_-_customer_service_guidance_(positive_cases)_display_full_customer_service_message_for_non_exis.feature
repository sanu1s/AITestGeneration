Feature: Order Tracking - Customer Service Guidance (Positive Cases)

  Scenario: Display Full Customer Service Message for Non-Existent Order Number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT12345"
    And User clicks the "Track Order" button
    Then The status message should display "If you have any other questions, feel free to send a message at your earliest convenience."
    And The status message should display "Either I or a fellow member of our Customer Service team will be happy to assist you with resolving."
