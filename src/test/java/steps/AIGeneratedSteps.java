package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.Locator;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
import java.util.Arrays;
import java.util.List;
import com.microsoft.playwright.options.SelectOption;
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

@When("I enter a valid order number {string} into the order ID input field")
public void iEnterAValidOrderNumberIntoTheOrderIdInputField(String orderNumber) {
    System.out.println("Entering valid order number: " + orderNumber);
    page.locator("#orderIdInput").fill(orderNumber);
}

@And("the order details should display customer billing address {string}")
public void theOrderDetailsShouldDisplayCustomerBillingAddress(String address) {
    System.out.println("Verifying billing address: " + address);
    assertThat(page.locator("#orderDetails")).containsText(address);
}

@And("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("#searchBtn:has-text(\"" + buttonText + "\")").click();
}

@And("the order details section should be hidden")
public void theOrderDetailsSectionShouldBeHidden() {
    System.out.println("Verifying order details section is hidden.");
    assertThat(page.locator("#orderDetails")).isHidden();
}

@And("the order details should display delivery date {string}")
public void theOrderDetailsShouldDisplayDeliveryDate(String date) {
    System.out.println("Verifying delivery date: " + date);
    assertThat(page.locator("#orderDetails")).containsText(date);
}

@When("I leave the order ID input field empty")
public void iLeaveTheOrderIdInputFieldEmpty() {
    System.out.println("Leaving order ID input field empty.");
    page.locator("#orderIdInput").fill("");
}

@Then("the order details section should be visible")
public void theOrderDetailsSectionShouldBeVisible() {
    System.out.println("Verifying order details section is visible.");
    assertThat(page.locator("#orderDetails")).isVisible();
}

@And("the order details should display customer shipping address {string}")
public void theOrderDetailsShouldDisplayCustomerShippingAddress(String address) {
    System.out.println("Verifying shipping address: " + address);
    assertThat(page.locator("#orderDetails")).containsText(address);
}

@When("I select 'Tracking Number' from the search type dropdown")
public void iSelectTrackingNumberFromTheSearchTypeDropdown() {
    System.out.println("Selecting 'Tracking Number' from search type dropdown.");
    page.locator("#searchType").selectOption(new SelectOption().setLabel("Tracking Number"));
}

@And("the error message section should be visible")
public void theErrorMessageSectionShouldBeVisible() {
    System.out.println("Verifying error message section is visible.");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#errorMessage")).isVisible();
}

@When("I enter an invalid order number {string} into the order ID input field")
public void iEnterAnInvalidOrderNumberIntoTheOrderIdInputField(String invalidOrderNumber) {
    System.out.println("Entering invalid order number: " + invalidOrderNumber);
    page.locator("#orderIdInput").fill(invalidOrderNumber);
}

@Given("I am on the Order Search Page")
public void iAmOnTheOrderSearchPage() {
    System.out.println("Navigating to Order Search Page.");
    page.navigate("http://orderquest.com:7070");
    assertThat(page).hasURL("http://orderquest.com:7070/");
    assertThat(page.locator("#searchType")).isVisible();
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#orderDetails")).isVisible(); // It's initially visible as per discovery
    assertThat(page.locator("#error")).isHidden();
    assertThat(page.locator("#errorMessage")).isHidden();
}

@Then("the error message section should be visible")
public void theErrorMessageSectionShouldBeVisible_13() {
    System.out.println("Verifying error message section is visible.");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#errorMessage")).isVisible();
}

@Then("the order ID input field should have placeholder {string}")
public void theOrderIdInputFieldShouldHavePlaceholder(String expectedPlaceholder) {
    System.out.println("Verifying order ID input field placeholder: " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("the order details section should be hidden")
public void theOrderDetailsSectionShouldBeHidden_15() {
    System.out.println("Verifying order details section is hidden.");
    assertThat(page.locator("#orderDetails")).isHidden();
}

@And("I ensure 'Order ID' is selected in the search type dropdown")
public void iEnsureOrderIdIsSelectedInTheSearchTypeDropdown() {
    System.out.println("Ensuring 'Order ID' is selected in search type dropdown.");
    page.locator("#searchType").selectOption(new SelectOption().setLabel("Order ID"));
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", "Enter Order ID");
}

@And("I enter a tracking number {string} into the order ID input field")
public void iEnterATrackingNumberIntoTheOrderIdInputField(String trackingNumber) {
    System.out.println("Entering tracking number: " + trackingNumber);
    page.locator("#orderIdInput").fill(trackingNumber);
}

@And("the error message section should be hidden")
public void theErrorMessageSectionShouldBeHidden() {
    System.out.println("Verifying error message section is hidden.");
    assertThat(page.locator("#error")).isHidden();
    assertThat(page.locator("#errorMessage")).isHidden();
}

@And("the error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedErrorMessage) {
    System.out.println("Verifying error message: " + expectedErrorMessage);
    assertThat(page.locator("#errorMessage")).containsText(expectedErrorMessage);
}

}
