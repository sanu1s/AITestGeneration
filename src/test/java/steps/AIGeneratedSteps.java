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

@Then("the 'Order Details' section should be visible and empty")
public void verifyOrderDetailsSectionVisibleAndEmpty() {
    System.out.println("Executing: The 'Order Details' section should be visible and empty");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).isEmpty();
}

@Given("the 'Search Type' dropdown is visible")
public void searchTypeDropdownIsVisible() {
    System.out.println("Executing: The 'Search Type' dropdown is visible");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("the 'error' section should be hidden")
public void verifyErrorSectionHidden() {
    System.out.println("Executing: The 'error' section should be hidden");
    assertThat(page.locator("#error")).isHidden();
}

@When("I select {string} from the 'Search Type' dropdown")
public void selectOptionFromSearchTypeDropdown(String optionLabel) {
    System.out.println("Executing: I select " + optionLabel + " from the 'Search Type' dropdown");
    if ("Tracking Number".equals(optionLabel)) {
        page.locator("#searchType").selectOption("tracking");
    } else if ("Order ID".equals(optionLabel)) {
        page.locator("#searchType").selectOption("orderId");
    } else {
        throw new IllegalArgumentException("Unknown option label: " + optionLabel);
    }
}

@Then("the 'errorMessage' paragraph should be hidden")
public void verifyErrorMessageParagraphHidden() {
    System.out.println("Executing: The 'errorMessage' paragraph should be hidden");
    assertThat(page.locator("#errorMessage")).isHidden();
}

@Then("the 'Search' button should be visible with text {string}")
public void verifySearchButtonVisibleWithText(String buttonText) {
    System.out.println("Executing: The 'Search' button should be visible with text " + buttonText);
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Given("I have selected {string} from the 'Search Type' dropdown")
public void iHaveSelectedFromSearchTypeDropdown(String optionLabel) {
    System.out.println("Executing: I have selected " + optionLabel + " from the 'Search Type' dropdown");
    if ("Tracking Number".equals(optionLabel)) {
        page.locator("#searchType").selectOption("tracking");
    } else if ("Order ID".equals(optionLabel)) {
        page.locator("#searchType").selectOption("orderId");
    } else {
        throw new IllegalArgumentException("Unknown option label: " + optionLabel);
    }
}

@Given("I navigate to the Order Quest application")
public void navigateToOrderQuest() {
    System.out.println("Executing: I navigate to the Order Quest application");
    page.navigate("http://orderquest.com:7070");
}

@Then("the page title should be {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: The page title should be " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("the 'Search Type' dropdown should be visible")
public void verifySearchTypeDropdownVisible() {
    System.out.println("Executing: The 'Search Type' dropdown should be visible");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("the 'Order ID' input field should be visible with placeholder {string}")
public void verifyOrderIdInputVisibleWithPlaceholder(String placeholder) {
    System.out.println("Executing: The 'Order ID' input field should be visible with placeholder " + placeholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", placeholder);
}

@Then("the 'Order ID' input field's placeholder should change to {string}")
public void verifyOrderIdInputPlaceholderChange(String expectedPlaceholder) {
    System.out.println("Executing: The 'Order ID' input field's placeholder should change to " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

}
