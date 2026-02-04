Feature: Customer Service Chatbot - Concluding Messages (Positive Test Cases)

  Scenario: Verify offer for further assistance in concluding message.
    Given user has received help from the customer service chatbot
    When the chatbot presents its final statement
    Then the status message should contain "Are there any additional questions or concerns I can assist you with at this time?"
