Feature: Urgent Delivery Resolution

  Scenario: System acknowledges stated urgency for a delayed order and offers a relevant solution
    Given the order ID "123123321" has an original delivery date of "July 25-26"
    And the current estimated delivery date is "Monday"
    When the user communicates the urgency, stating "birthday party is tomorrow"
    Then the system should acknowledge the critical nature of the request
    And the system should offer a specific resolution (e.g., expedited shipping, local pickup options, re-order with priority, refund)
