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

@Then("I should see the error message {string}")
public void verifyErrorMessage(String expectedError) {
    System.out.println("Verifying error message: " + expectedError);
    assertThat(page.locator(".result")).containsText(expectedError);
}

@Then("I should see the order status {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("I am on the order tracking page")
public void navigateToOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8088/order/tracking");
}

@When("I click the {string} button")
public void clickButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("I enter order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

}
