document.addEventListener('DOMContentLoaded', () => {
    const runBtn = document.getElementById('runBtn');
    const epicKeyInput = document.getElementById('epicKey');
    const fetchBtn = document.getElementById('fetchBtn');
    const consoleOutput = document.getElementById('consoleOutput');
    const reportLink = document.getElementById('reportLink');
    // const statusText was removed
    const executionStatusText = document.getElementById('executionStatusText');
    const executionStatusIndicator = document.getElementById('executionStatusIndicator');

    const menuToggle = document.getElementById('menu-toggle');
    const sidebar = document.querySelector('.sidebar');

    if (menuToggle) {
        menuToggle.addEventListener('click', () => {
            sidebar.classList.toggle('open');
            // Change icon
            const icon = menuToggle.querySelector('i');
            if (sidebar.classList.contains('open')) {
                icon.classList.remove('fa-bars');
                icon.classList.add('fa-times');
            } else {
                icon.classList.remove('fa-times');
                icon.classList.add('fa-bars');
            }
        });
    }

    function log(message, type = 'info') {
        const entry = document.createElement('div');
        entry.className = `log-entry ${type === 'error' ? 'log-error' : type === 'success' ? 'log-success' : ''}`;
        const timestamp = new Date().toLocaleTimeString();
        entry.textContent = `[${timestamp}] ${message}`;
        consoleOutput.appendChild(entry);
        consoleOutput.scrollTop = consoleOutput.scrollHeight;
    }

    async function fetchReportStats() {
        try {
            const response = await fetch('/report/widgets/summary.json');
            if (response.ok) {
                const data = await response.json();
                const stats = data.statistic;
                const time = data.time;

                const total = stats.total;
                const passed = stats.passed || 0;
                const failed = stats.failed || 0;
                const broken = stats.broken || 0;
                const skipped = stats.skipped || 0;
                const unknown = stats.unknown || 0;

                // Update Legend Counts
                document.getElementById('countPassed').textContent = passed;
                document.getElementById('countFailed').textContent = failed;
                document.getElementById('countBroken').textContent = broken;
                document.getElementById('countSkipped').textContent = skipped;
                document.getElementById('countUnknown').textContent = unknown;

                // Update Header Info
                if (time) {
                    const startDate = new Date(time.start);
                    document.getElementById('reportDate').textContent = startDate.toLocaleDateString('en-GB', { day: 'numeric', month: 'long', year: 'numeric' });
                    
                    const durationMs = time.duration;
                    const durationStr = new Date(durationMs).toISOString().substring(11, 19); // HH:MM:SS
                    document.getElementById('reportDuration').textContent = durationStr;
                }

                // Update Donut Gradient
                // Logic: Calculate cumulative degrees for each segment
                // Colors: passed(#22cc5e), broken(#ffcc00), failed(#ff3333), skipped(#999999), unknown(#aa66cc)
                
                if (total > 0) {
                    const passDeg = (passed / total) * 360;
                    const brokenDeg = (broken / total) * 360;
                    const failedDeg = (failed / total) * 360;
                    const skippedDeg = (skipped / total) * 360;
                    const unknownDeg = (unknown / total) * 360;

                    let currentDeg = 0;
                    const gradParts = [];

                    // Passed
                    if (passed > 0) {
                        gradParts.push(`#22cc5e ${currentDeg}deg ${currentDeg + passDeg}deg`);
                        currentDeg += passDeg;
                    }
                    // Broken
                    if (broken > 0) {
                        gradParts.push(`#ffcc00 ${currentDeg}deg ${currentDeg + brokenDeg}deg`);
                        currentDeg += brokenDeg;
                    }
                    // Failed
                    if (failed > 0) {
                        gradParts.push(`#ff3333 ${currentDeg}deg ${currentDeg + failedDeg}deg`);
                        currentDeg += failedDeg;
                    }
                    // Skipped
                    if (skipped > 0) {
                        gradParts.push(`#999999 ${currentDeg}deg ${currentDeg + skippedDeg}deg`);
                        currentDeg += skippedDeg;
                    }
                    // Unknown
                    if (unknown > 0) {
                        gradParts.push(`#aa66cc ${currentDeg}deg ${currentDeg + unknownDeg}deg`);
                        currentDeg += unknownDeg;
                    }

                    document.getElementById('detailedDonut').style.background = `conic-gradient(${gradParts.join(', ')})`;
                    
                    // Center Text
                    const passRate = Math.round((passed / total) * 100);
                    document.getElementById('centerPercent').textContent = `${passRate}%`;
                } else {
                     document.getElementById('detailedDonut').style.background = `conic-gradient(var(--bg-dark) 0% 100%)`;
                     document.getElementById('centerPercent').textContent = `--%`;
                }
            }
        } catch (e) {
            console.error("Failed to fetch report stats", e);
        }
    }





    async function pollStatus(jobId, isFetchOnly = false) {
        const intervalId = setInterval(async () => {
            try {
                const response = await fetch(`/status/${jobId}`);
                if (response.ok) {
                    const statusData = await response.json();
                    
                    if (statusData.status === 'COMPLETED') {
                        clearInterval(intervalId);
                        
                        log(statusData.message, 'success');
                        
                        executionStatusText.textContent = "Completed";
                        executionStatusText.style.color = "#00ff9d";
                        executionStatusIndicator.className = "status-indicator active";
                        
                        // Show Acceptance Criteria
                        if (statusData.acceptanceCriteria) {
                            const acContainer = document.getElementById('acceptanceCriteriaContainer');
                            acContainer.innerHTML = statusData.acceptanceCriteria;
                        }

                        // Show Quality Badge
                        if (statusData.jiraQuality) {
                            document.getElementById('qualityBadge').innerHTML = statusData.jiraQuality;
                        }
                        
                        if (isFetchOnly) {
                             // Enable Generate Button
                             runBtn.disabled = false;
                             fetchBtn.disabled = false;
                             fetchBtn.disabled = false;
                             fetchBtn.innerHTML = '<i class="fas fa-cloud-download-alt"></i> Pull Requirements';
                             log("Requirements fetched. You can now generate test cases.");
                             setThinkingState(false);
                             return; // Validation stop here for fetch
                        }

                        // Show Report
                        reportLink.style.display = 'inline-block';
                        fetchReportStats();
                        
                        // Show Git Link
                        if (statusData.prUrl) {
                            const gitContainer = document.getElementById('gitLinkContainer');
                            const gitBtn = document.getElementById('gitLinkBtn');
                            gitBtn.href = statusData.prUrl;
                            gitContainer.style.display = 'block';
                            log(`Git Branch created: ${statusData.prUrl}`);
                        }

                        runBtn.disabled = false;
                        runBtn.textContent = 'Generate Test Cases';
                        fetchBtn.disabled = false;
                        

                        // Enable Run Upload Button if exists
                        const runUploadBtn = document.getElementById('runUploadBtn');
                        if (runUploadBtn) runUploadBtn.disabled = false;

                        setThinkingState(false);


                    } else if (statusData.status === 'FAILED') {
                        clearInterval(intervalId);
                        
                        log(statusData.message, 'error');
                        revertUIState();
                        fetchBtn.disabled = false;
                        fetchBtn.textContent = 'Pull Requirements'; // Or innerHTML if you want icon back on error
                        fetchBtn.innerHTML = '<i class="fas fa-cloud-download-alt"></i> Pull Requirements';
                        const runUploadBtn = document.getElementById('runUploadBtn');
                        if (runUploadBtn) runUploadBtn.disabled = false;
                    }
                    // If IN_PROGRESS, do nothing (wait for next poll)
                }
            } catch (e) {
                console.error("Polling error", e);
            }
        }, 2000);
    }
    
    // Spinner Logic
    // Spinner Logic
    function showSpinner(text = "Processing...") {
        console.log("showSpinner called with:", text);
        const overlay = document.getElementById('loadingOverlay');
        const overlayText = overlay ? overlay.querySelector('.loading-text') : null;
        if (overlay && overlayText) {
            overlayText.textContent = text;
            // overlay.style.display = 'flex'; // DISABLED per user request
            console.log("Spinner overlay set to flex (SUPPRESSED)");
        } else {
            console.error("Spinner overlay or text element not found!");
        }
    }

    function hideSpinner() {
        const overlay = document.getElementById('loadingOverlay');
        if (overlay) {
            overlay.style.display = 'none';
        }
    }

    // FETCH BUTTON Logic
    fetchBtn.addEventListener('click', async () => {
        const epicKey = epicKeyInput.value.trim();
        if (!epicKey) {
            log("Error: Please enter a valid Jira Epic Key.", 'error');
            return;
        }

        // Show Spinner
        showSpinner("Fetching Requirements...");

        // UI Reset
        fetchBtn.disabled = true;
        fetchBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Pulling...';
        
        log(`Fetching requirements for Epic: ${epicKey}...`);
        
        // Update execution status
        executionStatusText.textContent = "Fetching";
        executionStatusText.style.color = "#FFD700";
        executionStatusIndicator.className = "status-indicator running";
        
        // Reset AC & Quality
        document.getElementById('acceptanceCriteriaContainer').innerHTML = "Fetching requirements...";
        document.getElementById('qualityBadge').innerHTML = '<span style="color:var(--text-secondary);"><i class="fas fa-hourglass-start"></i> Analyzing Quality...</span>';
        
        setThinkingState(true);

        try {
            const response = await fetch('/fetch-requirements', { // New Endpoint
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ epicKey: epicKey })
            });

            // Hide Spinner immediately after response to allow log viewing during polling
            hideSpinner();

            if (response.ok) {
                const data = await response.json();
                log(`Fetch started. ID: ${data.jobId}`);
                pollStatus(data.jobId, true); // true = Fetch Only
            } else {
                const error = await response.text();
                log(`Failed to fetch requirements: ${error}`, 'error');
                revertUIState();
                fetchBtn.disabled = false;
                fetchBtn.textContent = 'Pull Requirements';
            }
        } catch (e) {
            hideSpinner();
            log(`Network Error: ${e.message}`, 'error');
            revertUIState();
            fetchBtn.disabled = false;
            fetchBtn.textContent = 'Pull Requirements';
        }
    });

    // RUN BUTTON Logic (Generate)
    runBtn.addEventListener('click', async () => {
        const epicKey = epicKeyInput.value.trim();
        if (!epicKey) {
            log("Error: Please enter a valid Jira Epic Key.", 'error');
            return;
        }

        showSpinner("Initializing Generation...");

        // UI Reset
        runBtn.disabled = true;
        fetchBtn.disabled = true; // Disable fetch while generating
        
        log(`Starting test generation for Epic: ${epicKey}...`);
        
        // Update execution status
        executionStatusText.textContent = "Generating";
        executionStatusText.style.color = "#FFD700";
        executionStatusIndicator.className = "status-indicator running";
        
        reportLink.style.display = 'none';
        document.getElementById('gitLinkContainer').style.display = 'none';
        
        // Reset Chart
        document.getElementById('centerPercent').textContent = "--%";
        document.getElementById('detailedDonut').style.background = `conic-gradient(var(--bg-dark) 0% 100%)`;
        
        // Reset Legend
        ['Passed', 'Failed', 'Broken', 'Skipped', 'Unknown'].forEach(status => {
             const el = document.getElementById(`count${status}`);
             if (el) el.textContent = '0';
        });

        setThinkingState(true);

        const transcriptFile = document.getElementById('transcriptFile').files[0];
        // Capture custom column name, default to "Text" if empty
        const columnNameInput = document.getElementById('columnName');
        const columnName = columnNameInput && columnNameInput.value.trim() ? columnNameInput.value.trim() : "Text";

        try {
            const formData = new FormData();
            formData.append("epicKey", epicKey);
            // Append target column name
            formData.append("columnName", columnName);
            
            if (transcriptFile) {
                formData.append("transcript", transcriptFile);
                log(`Uploading transcript: ${transcriptFile.name} (Column: ${columnName})...`);
            }

            const response = await fetch('/run', {
                method: 'POST',
                // Content-Type header excluded to allow browser to calculate boundary
                body: formData
            });
            
            hideSpinner();

            if (response.ok) {
                const data = await response.json();
                log(`Generation started. ID: ${data.jobId}`);
                pollStatus(data.jobId, false); // false = Full Run
            } else {
                const error = await response.text();
                log(`Failed to start generation: ${error}`, 'error');
                revertUIState();
                runBtn.disabled = false; // Re-enable if failed
                fetchBtn.disabled = false;
            }
        } catch (e) {
            hideSpinner();
            log(`Network Error: ${e.message}`, 'error');
            revertUIState();
            runBtn.disabled = false;
            fetchBtn.disabled = false;
        }
    });

    // Generate from Upload Button Logic
    const runUploadBtn = document.getElementById('runUploadBtn');
    
    if (runUploadBtn) {
        runUploadBtn.addEventListener('click', async () => {
            log("Upload button clicked.");
            const transcriptFile = document.getElementById('transcriptFile').files[0];
            if (!transcriptFile) {
                alert("Please select a transcript file to upload.");
                return;
            }

            showSpinner("Uploading & Generating...");

            // Capture custom column name, default to "Text" if empty
            const columnNameInput = document.getElementById('columnName');
            const columnName = columnNameInput && columnNameInput.value.trim() ? columnNameInput.value.trim() : "Text";

            // Disable button
            runUploadBtn.disabled = true;

            setThinkingState(true);

            try {
                const formData = new FormData();
                // Use a special key to indicate upload-only mode
                formData.append("epicKey", "UPLOAD-ONLY");
                formData.append("columnName", columnName);
                formData.append("transcript", transcriptFile);
                
                log(`Uploading transcript: ${transcriptFile.name} (Column: ${columnName})...`);

                const response = await fetch('/run', {
                    method: 'POST',
                    body: formData
                });
                
                hideSpinner();

                if (response.ok) {
                    const data = await response.json();
                    const jobId = data.jobId;
                    log(`Job started: ${jobId} (Upload Mode)`);
                    pollStatus(jobId, false);
                } else {
                    const errorText = await response.text();
                    log(`Error starting job: ${errorText}`, 'error');
                    setThinkingState(false);
                    runUploadBtn.disabled = false;
                }
            } catch (error) {
                hideSpinner();
                log(`Error: ${error.message}`, 'error');
                setThinkingState(false);
                runUploadBtn.disabled = false;
            }
        });
    }

    function setThinkingState(isThinking) {
        const container = document.getElementById('brainContainer'); // .graph-placeholder
        const statusText = document.getElementById('brainStatus');
        
        if (isThinking) {
            container.classList.add('thinking-mode');
            if (statusText) {
                statusText.textContent = "Analyzing Signal...";
                statusText.style.color = "var(--accent-cyan)";
            }
        } else {
            container.classList.remove('thinking-mode');
            if (statusText) {
                statusText.textContent = "Standing By...";
                statusText.style.color = "var(--text-secondary)";
            }
        }
    }

    // Prompt Editor Logic
    const promptSelect = document.getElementById('promptSelect');
    const promptEditor = document.getElementById('promptEditor');
    const savePromptBtn = document.getElementById('savePromptBtn');
    const refreshPromptsBtn = document.getElementById('refreshPromptsBtn');

    async function loadPromptList() {
        try {
            const response = await fetch('/prompts');
            if (response.ok) {
                const files = await response.json();
                promptSelect.innerHTML = '<option value="" disabled selected>Select a prompt...</option>';
                files.forEach(file => {
                    const option = document.createElement('option');
                    option.value = file;
                    option.textContent = file;
                    promptSelect.appendChild(option);
                });
            }
        } catch (e) {
            log("Failed to load prompt list", 'error');
        }
    }

    if (promptSelect) {
        promptSelect.addEventListener('change', async () => {
            const filename = promptSelect.value;
            if (!filename) return;

            try {
                const response = await fetch(`/prompts/${filename}`);
                if (response.ok) {
                    const content = await response.text();
                    if (promptEditor) {
                         promptEditor.value = content;
                    }
                    if (savePromptBtn) {
                        savePromptBtn.disabled = false;
                    }
                } else {
                    log(`Failed to load prompt: ${filename}`, 'error');
                }
            } catch (e) {
                log(`Error loading prompt: ${e.message}`, 'error');
            }
        });
    }

    if (savePromptBtn) {
        savePromptBtn.addEventListener('click', async () => {
            const filename = promptSelect ? promptSelect.value : null;
            const content = promptEditor ? promptEditor.value : "";
            if (!filename) return;

            savePromptBtn.disabled = true;
            savePromptBtn.textContent = 'Saving...';

            try {
                const response = await fetch(`/prompts/${filename}`, {
                    method: 'POST',
                    body: content
                });

                if (response.ok) {
                    log(`Prompt saved: ${filename}`, 'success');
                } else {
                    const err = await response.text();
                    log(`Failed to save prompt: ${err}`, 'error');
                }
            } catch (e) {
                log(`Error saving prompt: ${e.message}`, 'error');
            } finally {
                savePromptBtn.disabled = false;
                savePromptBtn.textContent = 'Save Changes';
            }
        });
    }

    if (refreshPromptsBtn) {
        refreshPromptsBtn.addEventListener('click', loadPromptList);
    }
    
    // Initial Load
    loadPromptList();

    function revertUIState() {
        const runBtn = document.getElementById('runBtn');
        const executionStatusText = document.getElementById('executionStatusText');
        const executionStatusIndicator = document.getElementById('executionStatusIndicator');

        runBtn.disabled = false;
        runBtn.textContent = 'Generate Test Cases';
        
        executionStatusText.textContent = "Failed";
        executionStatusText.style.color = "#ff5252";
        executionStatusIndicator.className = "status-indicator error";
        
        setThinkingState(false);
        
        const runUploadBtn = document.getElementById('runUploadBtn');
        if (runUploadBtn) {
            runUploadBtn.disabled = false;
            runUploadBtn.textContent = 'Generate from Upload';
        }
    }

    // Initial log
    log("System initialized. Ready for commands.");

    // Sidebar Collapse Logic
    const sidebarCollapseBtn = document.getElementById('sidebar-collapse-btn');
    const sidebarEl = document.querySelector('.sidebar');
    
    if (sidebarCollapseBtn && sidebarEl) {
        sidebarCollapseBtn.addEventListener('click', () => {
             sidebarEl.classList.toggle('collapsed');
             // Also collapse nav links if open (optional UI polish)
             // const navLinks = document.querySelector('.nav-links');
             // if (sidebar.classList.contains('collapsed') && navLinks) navLinks.style.display = 'block'; 
        });
    }

    // Kordel AI Logo Toggle Logic
    // Missions Toggle Logic (EliteQE)
    const tabMissions = document.getElementById('tab-missions'); // The wrapper div
    
    if (tabMissions) {
        tabMissions.addEventListener('click', () => {
            // Find the sub-nav-links relative to the clicked tab to be safe
            // The structure is li > div#tab-missions + ul.sub-nav-links
            const parentLi = tabMissions.closest('li');
            const missionsSubMenu = parentLi ? parentLi.querySelector('.sub-nav-links') : null;

            if (missionsSubMenu) {
                const isHidden = missionsSubMenu.style.display === 'none';
                missionsSubMenu.style.display = isHidden ? 'block' : 'none';
                
                const icon = tabMissions.querySelector('.fa-chevron-down');
                if (icon) {
                    // If we are showing it (isHidden was true), rotate 180 (or -180).
                    // If we are hiding it, rotate back to 0.
                    // Adjust rotation based on your preference: 
                    // Usually chevron-down means "expandable" (closed) or "expanded" (open).
                    // Let's say default down = closed. Up = open.
                    icon.style.transform = isHidden ? 'rotate(180deg)' : 'rotate(0deg)';
                }
            }
        });
    }

    // Generic Collapsible Setup
    function setupCollapsible(triggerId) {
        const triggerEl = document.getElementById(triggerId);
        if (triggerEl) {
             // We want the CLICK on the LI/Wrapper to toggle the UL inside it.
             // Currently IDs are on the LI (e.g. tab-elite-qe)
             // But the click might propagate from children.
             
             // Let's attach to the .nav-item-wrapper inside the LI if possible, 
             // OR just the LI itself but ignore clicks on the NESTED items.
             
             // Better approach: Target the wrapper DIV specifically if we can find it.
             const wrapper = triggerEl.querySelector('.nav-item-wrapper');
             
             if(wrapper) {
                 wrapper.addEventListener('click', (e) => {
                     e.stopPropagation(); // Don't trigger parent toggles
                     
                     const nestedNav = triggerEl.querySelector('.nested-nav');
                     const icon = wrapper.querySelector('.fa-chevron-down');
                     
                     if (nestedNav) {
                         const isHidden = nestedNav.style.display === 'none';
                         nestedNav.style.display = isHidden ? 'block' : 'none';
                         
                         if (icon) {
                             icon.style.transform = isHidden ? 'rotate(180deg)' : 'rotate(0deg)';
                         }
                     }
                 });
             }
        }
    }

    // Apply to Sub-Missions
    setupCollapsible('tab-elite-qe');
    setupCollapsible('tab-elite-pmo');
    setupCollapsible('tab-elite-pdm');

    // Sidebar Tab Switching Logic
    const viewJira = document.getElementById('view-jira-lens');
    const viewTranscript = document.getElementById('view-transcript-upload');

    // Button IDs
    const tabJiraLens = document.getElementById('tab-jira-lens'); // QE
    const tabTranscript = document.getElementById('tab-transcript-upload'); // QE
    
    const tabJiraLensPMO = document.getElementById('tab-jira-lens-pmo'); // PMO
    const tabTranscriptPMO = document.getElementById('tab-transcript-upload-pmo'); // PMO

    function switchToJiraScanner() {
        if(viewJira) viewJira.style.display = 'flex';
        if(viewTranscript) viewTranscript.style.display = 'none';
        log("Switched to JIRA Scanner");
    }

    function switchToTranscriptUpload() {
        if(viewJira) viewJira.style.display = 'none';
        if(viewTranscript) viewTranscript.style.display = 'flex';
        log("Switched to Transcript Upload");
    }

    // Bind QE Tabs
    if (tabJiraLens) {
        tabJiraLens.addEventListener('click', (e) => {
            e.stopPropagation();
            switchToJiraScanner();
        });
    }

    if (tabTranscript) {
        tabTranscript.addEventListener('click', (e) => {
            e.stopPropagation();
            switchToTranscriptUpload();
        });
    }

    // JIRA Creator Logic
    const tabJiraCreator = document.getElementById('tab-jira-creator');
    const viewJiraCreator = document.getElementById('view-jira-creator');
    const createJiraBtn = document.getElementById('createJiraBtn');

    function hideAllViews() {
        if(viewJira) viewJira.style.display = 'none';
        if(viewTranscript) viewTranscript.style.display = 'none';
        if(viewJiraCreator) viewJiraCreator.style.display = 'none';
    }

    function switchToJiraCreator() {
        hideAllViews();
        if(viewJiraCreator) viewJiraCreator.style.display = 'flex';
        log("Switched to JIRA Creator");
    }

    // Overwrite previous switch functions to respect all views
    window.switchToJiraScanner = function() {
        hideAllViews();
        if(viewJira) viewJira.style.display = 'flex';
        log("Switched to JIRA Scanner");
    }

    window.switchToTranscriptUpload = function() {
        hideAllViews();
        if(viewTranscript) viewTranscript.style.display = 'flex';
        log("Switched to Transcript Upload");
    }
    
    // Check if we need to re-bind original tabs to new functions? 
    // Just redefining the global functions might not work if listeners bind to old references.
    // Let's re-bind listeners for safety or ensure functions are called fresh.
    // Actually the listeners above call `switchToJiraScanner()` which will use the hoisted value if defined, 
    // but since they were defined as const/function earlier in this scope...
    // To be safe, let's just make the listeners call these new logical blocks.
    
    if (tabJiraCreator) {
        tabJiraCreator.addEventListener('click', (e) => {
             e.stopPropagation();
             switchToJiraCreator();
        });
    }

    if (createJiraBtn) {
        createJiraBtn.addEventListener('click', async () => {
             const requirements = document.getElementById('jiraInfoInput').value.trim();
             const issueType = document.getElementById('jiraIssueType').value;
             
             if (!requirements) {
                 alert("Please enter requirements.");
                 return;
             }
             
             // Disable button and show loading state
             createJiraBtn.disabled = true;
             const originalBtnText = createJiraBtn.innerHTML;
             createJiraBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Creating...';

             showSpinner("Analyzing & Creating JIRA...");
             setThinkingState(true);
             
             try {
                 const response = await fetch('/api/pdm/create-jira-text', {
                     method: 'POST',
                     headers: { 'Content-Type': 'application/json' },
                     body: JSON.stringify({ requirements, type: issueType })
                 });
                 
                 hideSpinner();
                 setThinkingState(false);
                 
                 if (response.ok) {
                     const data = await response.json(); // PdmUploadResult { items: [] } -> wait, PdmUploadResult has 'issues'
                     log(`Created ${data.issues.length} JIRA Issue(s)`, 'success');
                     
                     let msg = "Created Issues:\n";
                     data.issues.forEach(i => {
                         msg += `${i.key}: ${i.summary} (${i.url})\n`;
                         log(`Created: <a href="${i.url}" target="_blank">${i.key}</a> - ${i.summary}`);
                     });
                     
                     // Helper for basic alert
                     setTimeout(() => alert(msg), 100);
                     
                     // Clear input
                     document.getElementById('jiraInfoInput').value = "";
                 } else {
                     const err = await response.text();
                     log("Failed to create JIRA: " + err, 'error');
                 }
             } catch(e) {
                 hideSpinner();
                 setThinkingState(false);
                 log("Error: " + e.message, 'error');
             } finally {
                 // Re-enable button
                 createJiraBtn.disabled = false;
                 createJiraBtn.innerHTML = originalBtnText;
             }
        });
    }

    // Bind PMO Tabs (Sharing same views for now)
    // Settings Modal Logic
    const settingsModal = document.getElementById('settingsModal');
    const tabSettings = document.getElementById('tab-settings');
    const closeSettingsBtn = document.getElementById('closeSettingsBtn');
    const cancelSettingsBtn = document.getElementById('cancelSettingsBtn');
    const saveSettingsBtn = document.getElementById('saveSettingsBtn');
    
    function openSettings() {
        if(settingsModal) settingsModal.style.display = 'flex';
    }
    
    function closeSettings() {
        if(settingsModal) settingsModal.style.display = 'none';
    }
    
    if(tabSettings) {
        tabSettings.addEventListener('click', (e) => {
            e.stopPropagation(); // Avoid other sidebar clicks
            openSettings();
        });
    }
    
    if(closeSettingsBtn) closeSettingsBtn.addEventListener('click', closeSettings);
    if(cancelSettingsBtn) cancelSettingsBtn.addEventListener('click', closeSettings);
    
    if(saveSettingsBtn) {
        saveSettingsBtn.addEventListener('click', async () => {
            const geminiKey = document.getElementById('cfg-gemini-key').value.trim();
            const githubUser = document.getElementById('cfg-github-user').value.trim();
            const githubToken = document.getElementById('cfg-github-token').value.trim();
            const vectorToken = document.getElementById('cfg-vector-token').value.trim();
            
            showSpinner("Saving Configuration...");
            
            try {
                const response = await fetch('/update-config', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        geminiKey,
                        githubUser,
                        githubToken,
                        vectorToken
                    })
                });
                
                hideSpinner();
                
                if(response.ok) {
                    log("Detailed configuration saved successfully.", "success");
                    closeSettings();
                } else {
                    const err = await response.text();
                    log("Failed to save configuration: " + err, "error");
                }
            } catch(e) {
                hideSpinner();
                log("Error saving config: " + e.message, "error");
            }
        });
    }




});
