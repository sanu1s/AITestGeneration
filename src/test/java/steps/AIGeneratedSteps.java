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
public void clickButton(String buttonName) {
    System.out.println("Executing: User clicks the " + buttonName + " button");
    page.locator("button:has-text('" + buttonName + "')").click();
}

@Then("The order status should be {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Executing: The order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
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

@Given("User is on the order tracking page {string}")
public void userIsOnTheOrderTrackingPage(String url) {
    System.out.println("Executing: User is on the order tracking page " + url);
    page.navigate(url);
    assertThat(page).hasURL(url);
}

@Then("I should see the order status {string}")
public void iShouldSeeTheOrderStatus(String status) {
    System.out.println("Executing: I should see the order status " + status);
    assertThat(page.locator(".result")).containsText("Status: " + status);
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Executing: I am on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The page should display {string}")
public void verifyPageContainsText(String expectedText) {
    System.out.println("Executing: The page should display " + expectedText);
    assertThat(page.locator("body")).containsText(expectedText);
}

@When("I click the {string} button")
public void iClickTheButton(String buttonName) {
    System.out.println("Executing: I click the " + buttonName + " button");
    page.locator("button:has-text('" + buttonName + "')").click();
}

@Then("The order details should include {string}")
public void theOrderDetailsShouldInclude(String detailText) {
    System.out.println("Executing: The order details should include " + detailText);
    assertThat(page.locator(".result")).containsText(detailText);
}

@When("User enters order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The order status should be displayed as {string}")
public void theOrderStatusShouldBeDisplayedAs(String expectedStatus) {
    System.out.println("Executing: The order status should be displayed as " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("I should see {string}")
public void iShouldSee(String text) {
    System.out.println("Executing: I should see " + text);
    assertThat(page.locator(".result")).containsText(text);
}

}
