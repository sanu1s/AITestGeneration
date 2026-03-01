package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
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

@Then("I should see a status display area with ID {string} which is initially empty")
public void verifyEmptyStatusArea(String id) {
    System.out.println("Executing: Verify status display area " + id + " is initially empty");
    assertThat(page.locator("#" + id)).isHidden();
}

@Then("the dropdown with ID {string} should contain option {string}")
public void verifyDropdownContainsOption(String id, String optionText) {
    System.out.println("Executing: Verify dropdown " + id + " contains option " + optionText);
    assertThat(page.locator("#" + id).locator("option", new Locator.LocatorOptions().setHasText(java.util.regex.Pattern.compile(optionText))))
        .isVisible();
}

@Then("I should see a dropdown with ID {string}")
public void verifyDropdownById(String id) {
    System.out.println("Executing: Verify dropdown with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@When("I type {string} into the input field with ID {string}")
public void typeIntoInputField(String text, String id) {
    System.out.println("Executing: Type " + text + " into input field " + id);
    page.locator("#" + id).fill(text);
}

@Then("I should see an input field with ID {string}")
public void verifyInputFieldById(String id) {
    System.out.println("Executing: Verify input field with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see a button with ID {string} with text {string}")
public void verifyButtonByIdAndText(String id, String expectedText) {
    System.out.println("Executing: Verify button with ID " + id + " and text " + expectedText);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).hasText(expectedText);
}

@Given("I navigate to {string}")
public void navigateToUrl(String url) {
    System.out.println("Executing: Navigate to URL " + url);
    page.navigate(url);
}

@Then("the button with ID {string} should be enabled")
public void verifyButtonIsEnabled(String id) {
    System.out.println("Executing: Verify button " + id + " is enabled");
    assertThat(page.locator("#" + id)).isEnabled();
}

@Then("the input field with ID {string} should have placeholder {string}")
public void verifyInputFieldPlaceholder(String id, String expectedPlaceholder) {
    System.out.println("Executing: Verify input field " + id + " has placeholder " + expectedPlaceholder);
    assertThat(page.locator("#" + id)).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("I should see the page title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: Verify page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@When("I select {string} from the dropdown with ID {string}")
public void selectOptionFromDropdown(String optionText, String id) {
    System.out.println("Executing: Select " + optionText + " from dropdown " + id);
    page.locator("#" + id).selectOption(optionText);
}

@Then("the input field with ID {string} should have value {string}")
public void verifyInputFieldValue(String id, String expectedValue) {
    System.out.println("Executing: Verify input field " + id + " has value " + expectedValue);
    assertThat(page.locator("#" + id)).hasValue(expectedValue);
}

@Then("the dropdown with ID {string} should have {string} as its selected option")
public void verifyDropdownSelectedOption(String id, String expectedOption) {
    System.out.println("Executing: Verify dropdown " + id + " selected option is " + expectedOption);
    assertThat(page.locator("#" + id)).hasValue(expectedOption);
}

@Then("I should see a result display area with ID {string} which is initially empty")
public void verifyEmptyResultArea(String id) {
    System.out.println("Executing: Verify result display area " + id + " is initially empty");
    assertThat(page.locator("#" + id)).isHidden();
}

@Then("I should see an error display area with ID {string} which is initially empty")
public void verifyEmptyErrorArea(String id) {
    System.out.println("Executing: Verify error display area " + id + " is initially empty");
    assertThat(page.locator("#" + id)).isHidden();
}

}
