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
    System.out.println("Executing: User clicks the '" + buttonText + "' button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String status) {
    System.out.println("Executing: The order status should be " + status);
    assertThat(page.locator(".result")).containsText("The order status " + status);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page.");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User leaves the order number field empty")
public void userLeavesTheOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill(""); // Explicitly ensure the field is empty
}

@Then("An error message {string} should be displayed")
public void anErrorMessageShouldBeDisplayed(String errorMessage) {
    System.out.println("Executing: An error message '" + errorMessage + "' should be displayed");
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

}
