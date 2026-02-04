Feature: Customer Service Post-Interaction Message Verification - Positive Test Cases

  Scenario: Successful Display of Post-Interaction Thank You and Apology Message
    Given the user has completed a customer service interaction
    When the post-interaction confirmation message is presented
    Then the status message result should contain the thank you message "Thank you for being a valued OwnCompany Customer."
    And the status message result should contain the pleasure message "It was my pleasure to assist you today."
    And the status message result should contain the apology message "I apologize for any delays that were experienced during our conversation."
