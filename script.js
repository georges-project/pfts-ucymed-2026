document.addEventListener('DOMContentLoaded', () => {
    setupLightbox();
    setupClipboard();
    setupAccordion();
});

/**
 * Handles the lightbox overlay for viewing the poster image in full screen.
 */
function setupLightbox() {
    const trigger = document.getElementById('posterPreview');
    const lightbox = document.getElementById('posterLightbox');
    const closeBtn = document.getElementById('lightboxClose');

    if (!trigger || !lightbox || !closeBtn) return;

    // Open lightbox
    trigger.addEventListener('click', () => {
        lightbox.classList.add('active');
        document.body.style.overflow = 'hidden'; // Prevents scrolling behind modal
    });

    // Close lightbox functions
    const closeLightbox = () => {
        lightbox.classList.remove('active');
        document.body.style.overflow = '';
    };

    closeBtn.addEventListener('click', closeLightbox);

    // Close on click outside the image
    lightbox.addEventListener('click', (e) => {
        if (e.target === lightbox || e.target.classList.contains('lightbox-content-wrapper')) {
            closeLightbox();
        }
    });

    // Close on Escape key press
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && lightbox.classList.contains('active')) {
            closeLightbox();
        }
    });
}

/**
 * Handles copy-to-clipboard for the student authors' email addresses.
 */
function setupClipboard() {
    const copyButtons = document.querySelectorAll('.copy-btn');
    const toast = document.getElementById('toastNotification');

    copyButtons.forEach(button => {
        button.addEventListener('click', () => {
            const email = button.getAttribute('data-email');
            if (!email) return;

            navigator.clipboard.writeText(email).then(() => {
                showToast(toast, 'Email copied to clipboard! / Το email αντιγράφηκε!');
            }).catch(err => {
                console.error('Failed to copy text: ', err);
                // Fallback method for older browsers or restricted permissions
                const textarea = document.createElement('textarea');
                textarea.value = email;
                textarea.style.position = 'fixed'; // Avoid scrolling to bottom
                document.body.appendChild(textarea);
                textarea.select();
                try {
                    document.execCommand('copy');
                    showToast(toast, 'Email copied to clipboard! / Το email αντιγράφηκε!');
                } catch (e) {
                    console.error('Fallback copy failed', e);
                }
                document.body.removeChild(textarea);
            });
        });
    });
}

/**
 * Triggers a simple custom toast notification at the bottom of the viewport.
 */
function showToast(toastElement, message) {
    if (!toastElement) return;

    // If there is an existing text element, update its text
    const textSpan = toastElement.querySelector('.toast-text') || toastElement;
    textSpan.textContent = message;

    // Show toast
    toastElement.classList.add('show');

    // Hide after 3 seconds
    setTimeout(() => {
        toastElement.classList.remove('show');
    }, 3000);
}

/**
 * Sets up the collapsible bibliography accordion.
 */
function setupAccordion() {
    const header = document.getElementById('accordionHeader');
    const content = document.getElementById('accordionContent');

    if (!header || !content) return;

    header.addEventListener('click', () => {
        const expanded = header.getAttribute('aria-expanded') === 'true';
        
        // Toggle attribute and active class
        header.setAttribute('aria-expanded', !expanded);
        content.classList.toggle('active');
    });
}
