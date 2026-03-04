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

@Then("the input field with ID {string} should have placeholder {string}")
    public void verifyInputFieldPlaceholder(String inputId, String expectedPlaceholder) {
        System.out.println("Executing: The input field with ID " + inputId + " should have placeholder " + expectedPlaceholder);
        assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", expectedPlaceholder);
    }

@Then("I should see the title {string}")
    public void verifyPageTitle(String expectedTitle) {
        System.out.println("Executing: I should see the title " + expectedTitle);
        assertThat(page).hasTitle(expectedTitle);
    }

@Then("I should see the {string} option in the search type dropdown")
    public void verifySearchTypeDropdownOption(String optionText) {
        System.out.println("Executing: I should see the " + optionText + " option in the search type dropdown");
        assertThat(page.locator("#searchType").locator("option", new com.microsoft.playwright.Locator.LocatorOptions().setHasText(optionText))).isVisible();
    }

@Then("I should see a {string} button with text {string}")
    public void verifySearchButton(String buttonId, String buttonText) {
        System.out.println("Executing: I should see a " + buttonId + " button with text " + buttonText);
        assertThat(page.locator("#searchBtn")).isVisible();
        assertThat(page.locator("#searchBtn")).hasText(buttonText);
    }

@Then("I should see an empty area for displaying status messages with ID {string}")
    public void verifyEmptyStatusMessagesArea(String elementId) {
        System.out.println("Executing: I should see an empty area for displaying status messages with ID " + elementId);
        assertThat(page.locator("#" + elementId)).isVisible();
        assertThat(page.locator("#" + elementId)).hasText("");
    }

@Then("I should see an input field with ID {string} and placeholder {string}")
    public void verifyInputFieldWithPlaceholder(String inputId, String expectedPlaceholder) {
        System.out.println("Executing: I should see an input field with ID " + inputId + " and placeholder " + expectedPlaceholder);
        assertThat(page.locator("input#" + inputId)).isVisible();
        assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", expectedPlaceholder);
    }

@Then("I should see an empty area for displaying order details with ID {string}")
    public void verifyEmptyOrderDetailsArea(String elementId) {
        System.out.println("Executing: I should see an empty area for displaying order details with ID " + elementId);
        assertThat(page.locator("#" + elementId)).isVisible();
        assertThat(page.locator("#" + elementId)).hasText("");
    }

@Given("I am on the OrderQuest application page")
    public void iAmOnTheOrderQuestApplicationPage() {
        System.out.println("Executing: I am on the OrderQuest application page");
        page.navigate("http://localhost:7070");
        assertThat(page).hasTitle("OrderQuest | Premium Order Search");
    }

@When("I select {string} from the search type dropdown")
    public void selectSearchTypeFromDropdown(String searchType) {
        System.out.println("Executing: I select " + searchType + " from the search type dropdown");
        page.locator("#searchType").selectOption(searchType);
    }

@Then("I should see an empty area for displaying error messages with ID {string}")
    public void verifyEmptyErrorMessagesArea(String elementId) {
        System.out.println("Executing: I should see an empty area for displaying error messages with ID " + elementId);
        assertThat(page.locator("#" + elementId)).isVisible();
        assertThat(page.locator("#" + elementId)).hasText("");
    }

@Given("I navigate to the OrderQuest application")
    public void navigateToOrderQuestApplication() {
        System.out.println("Executing: I navigate to the OrderQuest application");
        page.navigate("http://localhost:7070");
    }

@Then("the {string} option should be selected by default in the search type dropdown")
    public void verifyDefaultSelectedSearchType(String expectedOption) {
        System.out.println("Executing: The " + expectedOption + " option should be selected by default in the search type dropdown");
        assertEquals(expectedOption, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
    }

}
