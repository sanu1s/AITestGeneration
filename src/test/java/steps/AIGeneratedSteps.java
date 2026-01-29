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
public void userClicksButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String status) {
    System.out.println("Executing: The order status should be " + status);
    assertThat(page.locator(".result")).containsText("The order status " + status);
}

@When("User enters an empty order number")
public void userEntersEmptyOrderNumber() {
    System.out.println("Executing: User enters an empty order number");
    page.locator("#order_no").fill("");
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The result should contain {string}")
public void theResultShouldContain(String expectedText) {
    System.out.println("Executing: The result should contain " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("The result should display error message {string}")
public void theResultShouldDisplayErrorMessage(String errorMessage) {
    System.out.println("Executing: The result should display error message " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

}
