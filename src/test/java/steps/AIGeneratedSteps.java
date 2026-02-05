package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Consolidate AI-generated Step Definitions
 */
public class AIGeneratedSteps {

    private final TestContext testContext;
    private final Page page;

    public AIGeneratedSteps(TestContext testContext) {
        this.testContext = testContext;
        this.page = testContext.page;
    }

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User is on the document upload page")
public void userIsOnDocumentUploadPage() {
    System.out.println("Executing: User is on the document upload page");
    page.navigate("/upload");
}

@Then("The upload status should display {string}")
public void theUploadStatusShouldDisplay(String statusMessage) {
    System.out.println("Executing: The upload status should display " + statusMessage);
    assertThat(page.locator("#upload-status")).containsText(statusMessage);
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("/track-order");
}

@When("User selects the file {string} for upload")
public void userSelectsTheFileForUpload(String fileName) {
    System.out.println("Executing: User selects the file " + fileName + " for upload");
    page.locator("input[type='file']").setInputFiles(Paths.get(fileName));
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Executing: The error message should display " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String statusMessage) {
    System.out.println("Executing: The order status should display " + statusMessage);
    assertThat(page.locator(".result")).containsText(statusMessage);
}

}
