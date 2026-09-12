/**
 * Ananya Pradhan — Personal Academic Research Dossier
 * Client-side script: Theme management, abstract toggles, BibTeX drawers, lightbox, and navigation.
 */

document.addEventListener('DOMContentLoaded', () => {
  initTheme();
  initMobileNav();
  initScrollSpy();
  initAbstractToggles();
  initBibtexDrawers();
  initLightbox();
});

/* --- 1. Theme Management (Light / Dark) --- */
function initTheme() {
  const themeToggle = document.getElementById('theme-toggle');
  const storedTheme = localStorage.getItem('theme');
  const currentTheme = storedTheme || 'light';
  
  document.documentElement.setAttribute('data-theme', currentTheme);
  updateThemeIcon(currentTheme);

  if (themeToggle) {
    themeToggle.addEventListener('click', () => {
      const activeTheme = document.documentElement.getAttribute('data-theme');
      const nextTheme = activeTheme === 'dark' ? 'light' : 'dark';
      document.documentElement.setAttribute('data-theme', nextTheme);
      localStorage.setItem('theme', nextTheme);
      updateThemeIcon(nextTheme);
    });
  }
}

function updateThemeIcon(theme) {
  const themeToggle = document.getElementById('theme-toggle');
  if (!themeToggle) return;
  if (theme === 'dark') {
    themeToggle.innerHTML = `
      <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <circle cx="12" cy="12" r="5"></circle>
        <line x1="12" y1="1" x2="12" y2="3"></line>
        <line x1="12" y1="21" x2="12" y2="23"></line>
        <line x1="4.22" y1="4.22" x2="5.64" y2="5.64"></line>
        <line x1="18.36" y1="18.36" x2="19.78" y2="19.78"></line>
        <line x1="1" y1="12" x2="3" y2="12"></line>
        <line x1="21" y1="12" x2="23" y2="12"></line>
        <line x1="4.22" y1="19.78" x2="5.64" y2="18.36"></line>
        <line x1="18.36" y1="5.64" x2="19.78" y2="4.22"></line>
      </svg>`;
    themeToggle.setAttribute('aria-label', 'Switch to light theme');
  } else {
    themeToggle.innerHTML = `
      <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
      </svg>`;
    themeToggle.setAttribute('aria-label', 'Switch to dark theme');
  }
}

/* --- 2. Mobile Navigation Toggle --- */
function initMobileNav() {
  const toggleBtn = document.getElementById('mobile-toggle');
  const navLinks = document.getElementById('nav-links');

  if (toggleBtn && navLinks) {
    toggleBtn.addEventListener('click', () => {
      navLinks.classList.toggle('active');
    });

    navLinks.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        navLinks.classList.remove('active');
      });
    });
  }
}

/* --- 3. ScrollSpy Active Link Tracking --- */
function initScrollSpy() {
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('.nav-link');

  window.addEventListener('scroll', () => {
    let current = '';
    const scrollPos = window.scrollY + 140;

    sections.forEach(section => {
      const top = section.offsetTop;
      const height = section.offsetHeight;
      if (scrollPos >= top && scrollPos < top + height) {
        current = section.getAttribute('id');
      }
    });

    navLinks.forEach(link => {
      link.classList.remove('active');
      if (link.getAttribute('href') === `#${current}`) {
        link.classList.add('active');
      }
    });
  }, { passive: true });
}

/* --- 4. Abstract Expand/Collapse --- */
function initAbstractToggles() {
  document.querySelectorAll('.btn-toggle-abstract').forEach(btn => {
    btn.addEventListener('click', (e) => {
      e.preventDefault();
      const card = btn.closest('.paper-entry');
      if (!card) return;
      const abstract = card.querySelector('.paper-abstract-box');
      if (!abstract) return;

      const isShowing = abstract.classList.contains('show');
      if (isShowing) {
        abstract.classList.remove('show');
        btn.textContent = '[ Abstract ]';
      } else {
        abstract.classList.add('show');
        btn.textContent = '[ Close Abstract ]';
      }
    });
  });
}

/* --- 5. BibTeX Drawers & Clipboard Copy --- */
function initBibtexDrawers() {
  document.querySelectorAll('.btn-toggle-bibtex').forEach(btn => {
    btn.addEventListener('click', (e) => {
      e.preventDefault();
      const card = btn.closest('.paper-entry');
      if (!card) return;
      const drawer = card.querySelector('.bibtex-box');
      if (!drawer) return;
      
      const isShowing = drawer.classList.contains('show');
      if (isShowing) {
        drawer.classList.remove('show');
        btn.textContent = '[ BibTeX ]';
      } else {
        drawer.classList.add('show');
        btn.textContent = '[ Close BibTeX ]';
      }
    });
  });

  document.querySelectorAll('.bibtex-copy-trigger').forEach(btn => {
    btn.addEventListener('click', () => {
      const code = btn.nextElementSibling ? btn.nextElementSibling.innerText : '';
      if (!code) return;

      navigator.clipboard.writeText(code).then(() => {
        const originalText = btn.innerText;
        btn.innerText = '✓ Copied';
        showToast('BibTeX citation copied to clipboard');
        setTimeout(() => {
          btn.innerText = originalText;
        }, 2000);
      }).catch(err => {
        console.error('Failed to copy BibTeX: ', err);
      });
    });
  });
}

/* --- 6. Lightbox Modal Gallery --- */
function initLightbox() {
  const modal = document.getElementById('image-modal');
  const modalImg = document.getElementById('modal-img');
  const modalCaption = document.getElementById('modal-caption');
  const modalClose = document.getElementById('modal-close');

  if (!modal || !modalImg) return;

  document.querySelectorAll('.gallery-item').forEach(item => {
    item.addEventListener('click', () => {
      const img = item.querySelector('img');
      const title = item.querySelector('h4') ? item.querySelector('h4').innerText : '';
      const desc = item.querySelector('p') ? item.querySelector('p').innerText : '';

      if (img) {
        modalImg.src = img.getAttribute('src');
        modalImg.alt = img.getAttribute('alt') || title;
        modalCaption.innerHTML = `<strong>${title}</strong> &mdash; ${desc}`;
        modal.classList.add('active');
        document.body.style.overflow = 'hidden';
      }
    });
  });

  const closeModal = () => {
    modal.classList.remove('active');
    document.body.style.overflow = '';
  };

  if (modalClose) {
    modalClose.addEventListener('click', closeModal);
  }

  modal.addEventListener('click', (e) => {
    if (e.target === modal) closeModal();
  });

  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape' && modal.classList.contains('active')) {
      closeModal();
    }
  });
}

/* --- 7. Toast Feedback --- */
function showToast(message) {
  let toast = document.getElementById('toast');
  if (!toast) {
    toast = document.createElement('div');
    toast.id = 'toast';
    toast.className = 'toast';
    document.body.appendChild(toast);
  }

  toast.innerText = message;
  toast.classList.add('show');
  setTimeout(() => {
    toast.classList.remove('show');
  }, 2400);
}
