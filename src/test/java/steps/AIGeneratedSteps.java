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

@Then("I should see a dropdown with ID {string}")
public void verifyDropdownById(String id) {
    System.out.println("Executing: I should see a dropdown with ID " + id);
    assertThat(page.locator("select#" + id)).isVisible();
}

@Then("I should see an input field with ID {string}")
public void verifyInputFieldById(String id) {
    System.out.println("Executing: I should see an input field with ID " + id);
    assertThat(page.locator("input#" + id)).isVisible();
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see an empty designated area for search results with ID {string}")
public void verifyEmptyResultAreaById(String id) {
    System.out.println("Executing: I should see an empty designated area for search results with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).isEmpty();
}

@Then("I should see a {string} button with ID {string}")
public void verifyButtonById(String buttonText, String id) {
    System.out.println("Executing: I should see a " + buttonText + " button with ID " + id);
    assertThat(page.locator("button#" + id)).isVisible();
    assertThat(page.locator("button#" + id)).hasText(buttonText);
}

@Then("And the {string} dropdown should be selected with {string}")
public void verifyDropdownSelectedValue(String id, String expectedValue) {
    System.out.println("Executing: The " + id + " dropdown should be selected with " + expectedValue);
    assertThat(page.locator("select#" + id)).hasText(Pattern.compile(Pattern.quote(expectedValue)));
}

@Then("And the {string} field should have placeholder {string}")
public void verifyInputFieldPlaceholder(String id, String expectedPlaceholder) {
    System.out.println("Executing: The " + id + " field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("input#" + id)).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("the {string} field should have placeholder {string}")
public void verifyInputFieldPlaceholder_8(String id, String expectedPlaceholder) {
    System.out.println("Executing: The " + id + " field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("input#" + id)).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("I should see a prominent title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see a prominent title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@When("I select {string} from the {string} dropdown")
public void selectFromDropdown(String optionText, String dropdownId) {
    System.out.println("Executing: I select " + optionText + " from the " + dropdownId + " dropdown");
    page.locator("select#" + dropdownId).selectOption(optionText);
}

}
