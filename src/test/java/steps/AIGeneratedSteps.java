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

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page...");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User leaves the order number field empty")
public void userLeavesTheOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty...");
    page.locator("#order_no").fill("");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The order status should display {string} and {string}")
public void theOrderStatusShouldDisplayAnd(String statusMessage, String deliveryDate) {
    System.out.println("Verifying order status and delivery date...");
    assertThat(page.locator(".result")).containsText(statusMessage);
    assertThat(page.locator(".result")).containsText(deliveryDate);
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying result message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

}
