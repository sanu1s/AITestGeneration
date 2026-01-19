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

@Then("Delivery date should be displayed")
public void deliveryDateShouldBeDisplayed() {
    System.out.println("Executing: Delivery date should be displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date");
}

@Then("I should see the order status {string}")
public void iShouldSeeTheOrderStatus(String expectedStatus) {
    System.out.println("Executing: I should see the order status " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("Order status should be {string}")
public void orderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: Order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
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

@When("I enter order number {string}")
public void iEnterOrderNumber(String orderNo) {
    System.out.println("Executing: I enter order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("I should see {string}")
public void iShouldSee(String expectedText) {
    System.out.println("Executing: I should see " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("The order details should show {string}")
public void theOrderDetailsShouldShow(String expectedDetail) {
    System.out.println("Executing: The order details should show " + expectedDetail);
    assertThat(page.locator(".result")).containsText(expectedDetail);
}

}
