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
public void clickTrackOrderButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User leaves the order number field empty")
public void leaveOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty.");
    page.locator("#order_no").fill("");
}

@Given("User is on the order tracking page {string}")
public void navigateToTrackingPage(String url) {
    System.out.println("Navigating to: " + url);
    page.navigate(url);
}

@When("User enters order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void verifyErrorMessage(String expectedError) {
    System.out.println("Verifying error message: " + expectedError);
    assertThat(page.locator(".result")).containsText(expectedError);
}

@Then("The order status should display {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

}
