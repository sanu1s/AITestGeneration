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
        
        // Set default timeout to 60 seconds (60000 ms)
        context.setDefaultTimeout(30000); 
        context.setDefaultNavigationTimeout(30000);

        page = context.newPage();
    }
}
