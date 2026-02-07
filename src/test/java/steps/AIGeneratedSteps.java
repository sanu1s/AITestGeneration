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

@Given("I am on the order tracking page")
public void navigateToOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8080/track-order"); // Assuming a URL for tracking
}

@When("I click the {string} button")
public void clickTrackOrderButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("I enter order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("the order status should be displayed as {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("the result message should display {string}")
public void verifyErrorMessage(String expectedMessage) {
    System.out.println("Verifying error message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

}
