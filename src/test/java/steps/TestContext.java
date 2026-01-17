package steps;

import com.microsoft.playwright.*;

public class TestContext {
    public Playwright playwright;
    public Browser browser;
    public BrowserContext context;
    public Page page;

    public TestContext() {
        // PicoContainer calls this no-arg constructor first
        playwright = Playwright.create();
        browser = playwright.chromium().launch(new BrowserType.LaunchOptions().setHeadless(true));
        context = browser.newContext();
        page = context.newPage();
    }
}
