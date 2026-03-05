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

@Then("the search results area should display the Customer Bill to Address {string}")
public void theSearchResultsAreaShouldDisplayTheCustomerBillToAddress(String address) {
    System.out.println("Verifying billing address: " + address);
    assertThat(page.locator("#orderDetails")).containsText(address);
}

@Then("I should see a validation message indicating {string}")
public void iShouldSeeAValidationMessageIndicating(String message) {
    System.out.println("Verifying validation message: " + message);
    assertThat(page.locator("#errorMessage")).containsText(message);
}

@And("the Error section should be visible")
public void theErrorSectionShouldBeVisible() {
    System.out.println("Verifying Error section is visible");
    assertThat(page.locator("#error")).isVisible();
}

@And("the Search Type dropdown should be visible with {string} selected")
public void theSearchTypeDropdownShouldBeVisibleWithSelected(String selectedOption) {
    System.out.println("Verifying Search Type dropdown visibility and selected option: " + selectedOption);
    assertThat(page.locator("#searchType")).isVisible();
    assertEquals(selectedOption, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
}

@And("the Error section should be hidden")
public void theErrorSectionShouldBeHidden() {
    System.out.println("Verifying Error section is hidden");
    assertThat(page.locator("#error")).isHidden();
}

@And("the Error Message paragraph should be hidden")
public void theErrorMessageParagraphShouldBeHidden() {
    System.out.println("Verifying Error Message paragraph is hidden");
    assertThat(page.locator("#errorMessage")).isHidden();
}

@And("the Error Message paragraph should be visible")
public void theErrorMessageParagraphShouldBeVisible() {
    System.out.println("Verifying Error Message paragraph is visible");
    assertThat(page.locator("#errorMessage")).isVisible();
}

@And("the Order ID input field should be visible with placeholder {string}")
public void theOrderIdInputFieldShouldBeVisibleWithPlaceholder(String placeholder) {
    System.out.println("Verifying Order ID input field visibility and placeholder: " + placeholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholder);
}

@Then("the search results area should display the Customer Shipping Address {string}")
public void theSearchResultsAreaShouldDisplayTheCustomerShippingAddress(String address) {
    System.out.println("Verifying shipping address: " + address);
    assertThat(page.locator("#orderDetails")).containsText(address);
}

@Given("the application is loaded")
public void theApplicationIsLoaded() {
    System.out.println("Loading application page");
    page.navigate("http://orderquest.com:7070");
}

@Then("the search results area should display an error message {string}")
public void theSearchResultsAreaShouldDisplayAnErrorMessage(String message) {
    System.out.println("Verifying error message: " + message);
    assertThat(page.locator("#errorMessage")).containsText(message);
}

@And("the Order Details section should be visible")
public void theOrderDetailsSectionShouldBeVisible() {
    System.out.println("Verifying Order Details section is visible");
    assertThat(page.locator("#orderDetails")).isVisible();
}

@Given("I am on the Order Search page")
public void iAmOnTheOrderSearchPage() {
    System.out.println("Navigating to Order Search page");
    page.navigate("http://orderquest.com:7070");
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Clicking " + buttonText + " button");
    if ("Search".equals(buttonText)) {
        page.locator("#searchBtn").click();
    } else {
        throw new IllegalArgumentException("Unknown button text: " + buttonText);
    }
}

@And("the Search button should be visible")
public void theSearchButtonShouldBeVisible() {
    System.out.println("Verifying Search button is visible");
    assertThat(page.locator("#searchBtn")).isVisible();
}

@Then("the search results area should display the Delivery Date {string}")
public void theSearchResultsAreaShouldDisplayTheDeliveryDate(String date) {
    System.out.println("Verifying delivery date: " + date);
    assertThat(page.locator("#orderDetails")).containsText(date);
}

@Then("the input field placeholder should change to {string}")
public void theInputFieldPlaceholderShouldChangeTo(String placeholder) {
    System.out.println("Verifying input field placeholder changed to: " + placeholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholder);
}

@When("I enter {string} into the {string} field")
public void iEnterIntoTheField(String value, String fieldName) {
    System.out.println("Entering " + value + " into " + fieldName + " field");
    if ("Order ID".equals(fieldName) || "Tracking Number".equals(fieldName)) {
        page.locator("#orderIdInput").fill(value);
    } else {
        throw new IllegalArgumentException("Unknown field name: " + fieldName);
    }
}

@When("I select {string} from the Search Type dropdown")
public void iSelectFromTheSearchTypeDropdown(String optionText) {
    System.out.println("Selecting " + optionText + " from Search Type dropdown");
    String optionValue = "";
    if ("Order ID".equals(optionText)) {
        optionValue = "orderId";
    } else if ("Tracking Number".equals(optionText)) {
        optionValue = "tracking";
    } else {
        throw new IllegalArgumentException("Unknown option text: " + optionText);
    }
    page.locator("#searchType").selectOption(optionValue);
}

@And("the Order Details section should be empty")
public void theOrderDetailsSectionShouldBeEmpty() {
    System.out.println("Verifying Order Details section is empty");
    assertThat(page.locator("#orderDetails")).hasText("");
}

@Then("the Search Type dropdown should be visible with {string} selected")
public void theSearchTypeDropdownShouldBeVisibleWithSelected_21(String selectedOption) {
    System.out.println("Verifying Search Type dropdown visibility and selected option: " + selectedOption);
    assertThat(page.locator("#searchType")).isVisible();
    assertEquals(selectedOption, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
}

}
