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

@When("User enters an ineligible order number {string}")
public void userEntersIneligibleOrderNumber(String orderNo) {
    System.out.println("Typing ineligible order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("User enters a valid order number {string}")
public void userEntersValidOrderNumber(String orderNo) {
    System.out.println("Typing valid order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying status message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters an invalid order number {string}")
public void userEntersInvalidOrderNumber(String orderNo) {
    System.out.println("Typing invalid order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User is on the \"Price Adjustment Request\" page")
public void userIsOnPriceAdjustmentRequestPage() {
    System.out.println("Navigating to Price Adjustment Request page");
    page.navigate("https://example.com/price-adjustment");
}

@When("User clicks the \"Check Eligibility\" button")
public void userClicksCheckEligibilityButton() {
    System.out.println("Clicking Check Eligibility button");
    page.locator("button:has-text('Track Order')").click();
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying error message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

}
