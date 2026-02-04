Feature: Photo Upload and Delivery Confirmation - Positive Scenarios

  Scenario: Successful photo upload with exact delivery confirmation message
    Given User is on the photo upload page
    When User uploads a photo file "sample_photo.jpg"
    Then the status message should display "The photos should be in your inbox"
