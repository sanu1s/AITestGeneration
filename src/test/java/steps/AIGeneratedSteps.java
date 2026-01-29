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
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String status) {
    System.out.println("Verifying order status: " + status);
    assertThat(page.locator(".result")).containsText("The order status " + status);
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Ensuring order number field is empty.");
    page.locator("#order_no").fill("");
}

@Given("User is on the Order Tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to Order Tracking page.");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The result should display {string}")
public void theResultShouldDisplay(String expectedText) {
    System.out.println("Verifying result message: " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

}
