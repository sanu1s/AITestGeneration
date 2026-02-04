Feature: Chatbox Photo Upload Unavailability - Negative Scenarios

  Scenario: Verify Specific Message is Displayed When Photo Upload is Not Available
    Given User is on the customer support page
    When User opens the chatbox
    Then The chatbox should display the message "Unfortunately, at this time, we do not have photo upload options available to upload photos through our chatbox."
