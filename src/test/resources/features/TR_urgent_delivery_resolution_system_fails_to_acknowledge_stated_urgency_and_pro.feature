Feature: Urgent Delivery Resolution

  Scenario: System fails to acknowledge stated urgency and provides a generic response for a delayed order
    Given the order ID "123123321" has an original delivery date of "July 25-26"
    And the current estimated delivery date is "Monday"
    When the user communicates the urgency, stating "birthday party is tomorrow"
    Then the system should provide a generic status update for order "123123321"
    And the system should not offer a specific resolution addressing the critical event or urgency
