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
public void userClicksTheTrackOrderButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("I should see the order status {string}")
public void iShouldSeeTheOrderStatus(String expectedStatus) {
    System.out.println("Executing: Verify order status is " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: The order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Executing: Navigate to order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Executing: Click " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("I enter order number {string}")
public void iEnterOrderNumber(String orderNo) {
    System.out.println("Executing: Enter order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The result should display {string}")
public void theResultShouldDisplay(String expectedText) {
    System.out.println("Executing: The result should display " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("I should see {string}")
public void iShouldSee(String expectedText) {
    System.out.println("Executing: Verify text '" + expectedText + "' is visible");
    assertThat(page.locator(".result")).containsText(expectedText);
}

}
