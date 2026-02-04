Feature: Customer Support Query - Negative Scenarios for Personalization

  Scenario: System fails to understand a complex backpack personalization request
    Given User is on the support query page
    When User enters the query "Can I add custom embroidery and choose specific materials for my backpack?"
    And User submits the query
    Then The error message should display "Sorry, I had trouble coming up with a response for your question about the personalization of your backpack. Could you please try rephrasing your question or provide more details?"
