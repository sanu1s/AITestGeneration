
    // Tab Switching Logic
    const tabPMO = document.getElementById('tab-elite-pmo');
    const tabQA = document.getElementById('tab-elite-qa');
    const viewPMO = document.getElementById('elite-pmo-view');
    const viewQA = document.getElementById('elite-qa-view');

    if (tabPMO && tabQA && viewPMO && viewQA) {
        tabPMO.addEventListener('click', () => {
            // Update Active Tab
            tabPMO.classList.add('active');
            tabQA.classList.remove('active');

            // Switch Views
            viewPMO.style.display = 'grid'; // dashboard-grid uses grid
            viewQA.style.display = 'none';

            log("Switched to ElitePMO Dashboard");
        });

        tabQA.addEventListener('click', () => {
            // Update Active Tab
            tabQA.classList.add('active');
            tabPMO.classList.remove('active');

            // Switch Views
            viewQA.style.display = 'grid';
            viewPMO.style.display = 'none';

            log("Switched to EliteQA Dashboard");
        });
    }
