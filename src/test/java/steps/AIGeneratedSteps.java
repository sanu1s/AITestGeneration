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
public void userClicksTheButton(String buttonName) {
    System.out.println("Executing: User clicks the " + buttonName + " button");
    page.locator("button:has-text('" + buttonName + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: The order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("I enter order number {string}")
public void iEnterOrderNumber(String orderNo) {
    System.out.println("Executing: I enter order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User navigates to the order tracking page")
public void navigateToOrderTrackingPage() {
    System.out.println("Executing: User navigates to the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("I should also see {string}")
public void iShouldAlsoSee(String expectedText) {
    System.out.println("Executing: I should also see " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("The result should show {string}")
public void theResultShouldShow(String expectedText) {
    System.out.println("Executing: The result should show " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Executing: I am on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("I click the {string} button")
public void iClickTheButton(String buttonName) {
    System.out.println("Executing: I click the " + buttonName + " button");
    page.locator("button:has-text('" + buttonName + "')").click();
}

@Then("I should see the status {string}")
public void iShouldSeeTheStatus(String expectedStatus) {
    System.out.println("Executing: I should see the status " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
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

@Then("{string} should be displayed")
public void textShouldBeDisplayed(String expectedText) {
    System.out.println("Executing: " + expectedText + " should be displayed");
    assertThat(page.locator(".result")).containsText(expectedText);
}

}
