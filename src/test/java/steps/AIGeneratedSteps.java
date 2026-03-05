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

@Then("the error message section should be visible")
public void theErrorMessageSectionShouldBeVisible() {
    System.out.println("Executing: The error message section should be visible");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#errorMessage")).isVisible();
}

@When("I clear the order ID input field")
public void iClearTheOrderIdInputField() {
    System.out.println("Executing: I clear the order ID input field");
    page.locator("#orderIdInput").clear();
}

@Then("the order details section should be hidden")
public void theOrderDetailsSectionShouldBeHidden() {
    System.out.println("Executing: The order details section should be hidden");
    assertThat(page.locator("#orderDetails")).isHidden();
}

@Given("I am on the Order Search page")
public void iAmOnTheOrderSearchPage() {
    System.out.println("Executing: I am on the Order Search page");
    page.navigate("http://orderquest.com:7070");
    assertThat(page.locator("#searchType")).isVisible();
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", "Enter Order ID");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#error")).isHidden();
    assertThat(page.locator("#errorMessage")).isHidden();
}

@When("I leave the order ID input field empty")
public void iLeaveTheOrderIdInputFieldEmpty() {
    System.out.println("Executing: I leave the order ID input field empty");
    page.locator("#orderIdInput").fill("");
}

@When("I enter {string} into the order ID input field")
public void iEnterIntoOrderIdInputField(String orderId) {
    System.out.println("Executing: I enter " + orderId + " into the order ID input field");
    page.locator("#orderIdInput").fill(orderId);
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Executing: I click the " + buttonText + " button");
    page.locator("#searchBtn").click();
}

@Then("the order details section should be visible")
public void theOrderDetailsSectionShouldBeVisible() {
    System.out.println("Executing: The order details section should be visible");
    assertThat(page.locator("#orderDetails")).isVisible();
}

@Then("the order details section should display {string}")
public void theOrderDetailsSectionShouldDisplay(String expectedText) {
    System.out.println("Executing: The order details section should display " + expectedText);
    assertThat(page.locator("#orderDetails")).containsText(expectedText);
}

@When("I select {string} from the search type dropdown")
public void iSelectFromSearchTypeDropdown(String searchType) {
    System.out.println("Executing: I select " + searchType + " from the search type dropdown");
    page.locator("#searchType").selectOption(searchType.equals("Order ID") ? "orderId" : "tracking");
}

@Then("the error message section should be hidden")
public void theErrorMessageSectionShouldBeHidden() {
    System.out.println("Executing: The error message section should be hidden");
    assertThat(page.locator("#error")).isHidden();
    assertThat(page.locator("#errorMessage")).isHidden();
}

@Then("the error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The error message should display " + expectedMessage);
    assertThat(page.locator("#errorMessage")).containsText(expectedMessage);
}

}
