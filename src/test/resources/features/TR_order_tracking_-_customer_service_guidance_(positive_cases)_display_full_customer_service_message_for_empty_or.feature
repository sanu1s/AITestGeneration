Feature: Order Tracking - Customer Service Guidance (Positive Cases)

  Scenario: Display Full Customer Service Message for Empty Order Number Submission
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The status message should display "If you have any other questions, feel free to send a message at your earliest convenience."
    And The status message should display "Either I or a fellow member of our Customer Service team will be happy to assist you with resolving."
