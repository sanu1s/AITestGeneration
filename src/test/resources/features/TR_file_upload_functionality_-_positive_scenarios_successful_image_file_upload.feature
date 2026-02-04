Feature: File Upload Functionality - Positive Scenarios

  Scenario: Successful image file upload
    Given User is on the file upload page
    When User selects a valid image file "test_image.png"
    And User clicks the "Upload" button
    Then The success message should display "File uploaded successfully!"
