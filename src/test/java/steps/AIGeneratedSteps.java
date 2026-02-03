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
public void clickTrackButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User is on the order tracking page")
public void navigateToTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8080/track-order"); // Assuming a URL for the tracking page
}

@Then("The status message should display {string}")
public void verifyStatusMessage(String msg) {
    System.out.println("Verifying status message: " + msg);
    assertThat(page.locator(".result")).containsText(msg);
}

@When("User enters order number {string}")
public void enterOrder(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void verifyErrorMessage(String msg) {
    System.out.println("Verifying error message: " + msg);
    assertThat(page.locator(".error")).containsText(msg);
}

}
