/**
 * Ananya Pradhan — Personal Academic Research Dossier
 * Client-side script: Theme management, abstract toggles, BibTeX drawers,
 * interactive multi-slide lightbox, reading progress, and accessible navigation.
 */

document.addEventListener('DOMContentLoaded', () => {
  initTheme();
  initReadingProgress();
  initBackToTop();
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
      <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
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
    themeToggle.setAttribute('title', 'Switch to light theme');
  } else {
    themeToggle.innerHTML = `
      <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
        <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
      </svg>`;
    themeToggle.setAttribute('aria-label', 'Switch to dark theme');
    themeToggle.setAttribute('title', 'Switch to dark theme');
  }
}

/* --- 2. Reading Progress Indicator --- */
function initReadingProgress() {
  const bar = document.getElementById('reading-progress');
  if (!bar) return;

  window.addEventListener('scroll', () => {
    const totalHeight = document.documentElement.scrollHeight - window.innerHeight;
    if (totalHeight > 0) {
      const progress = Math.min(100, Math.max(0, (window.scrollY / totalHeight) * 100));
      bar.style.width = `${progress}%`;
    }
  }, { passive: true });
}

/* --- 3. Floating Back to Top Button --- */
function initBackToTop() {
  const backBtn = document.getElementById('back-to-top');
  if (!backBtn) return;

  window.addEventListener('scroll', () => {
    if (window.scrollY > 420) {
      backBtn.classList.add('show');
    } else {
      backBtn.classList.remove('show');
    }
  }, { passive: true });

  backBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });
}

/* --- 4. Mobile Navigation Toggle --- */
function initMobileNav() {
  const toggleBtn = document.getElementById('mobile-toggle');
  const navLinks = document.getElementById('nav-links');

  if (toggleBtn && navLinks) {
    toggleBtn.addEventListener('click', () => {
      const isExpanded = navLinks.classList.contains('active');
      navLinks.classList.toggle('active');
      toggleBtn.setAttribute('aria-expanded', String(!isExpanded));
    });

    navLinks.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        navLinks.classList.remove('active');
        toggleBtn.setAttribute('aria-expanded', 'false');
      });
    });
  }
}

/* --- 5. ScrollSpy Active Link Tracking --- */
function initScrollSpy() {
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('.nav-link');

  window.addEventListener('scroll', () => {
    let current = '';
    const scrollPos = window.scrollY + 160;

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

/* --- 6. Abstract Expand/Collapse --- */
function initAbstractToggles() {
  document.querySelectorAll('.btn-toggle-abstract').forEach(btn => {
    btn.setAttribute('aria-expanded', 'false');
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
        btn.setAttribute('aria-expanded', 'false');
      } else {
        abstract.classList.add('show');
        btn.textContent = '[ Close Abstract ]';
        btn.setAttribute('aria-expanded', 'true');
      }
    });
  });
}

/* --- 7. BibTeX Drawers & Clipboard Copy --- */
function initBibtexDrawers() {
  document.querySelectorAll('.btn-toggle-bibtex').forEach(btn => {
    btn.setAttribute('aria-expanded', 'false');
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
        btn.setAttribute('aria-expanded', 'false');
      } else {
        drawer.classList.add('show');
        btn.textContent = '[ Close BibTeX ]';
        btn.setAttribute('aria-expanded', 'true');
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

/* --- 8. Multi-Slide Lightbox Modal Gallery --- */
function initLightbox() {
  const modal = document.getElementById('image-modal');
  const modalImg = document.getElementById('modal-img');
  const modalCaption = document.getElementById('modal-caption');
  const modalClose = document.getElementById('modal-close');
  const prevBtn = document.getElementById('modal-prev');
  const nextBtn = document.getElementById('modal-next');
  const counterEl = document.getElementById('modal-counter');

  if (!modal || !modalImg) return;

  const galleryItems = Array.from(document.querySelectorAll('.gallery-item'));
  if (galleryItems.length === 0) return;

  let currentIndex = 0;

  const updateModalContent = (index) => {
    currentIndex = index;
    const item = galleryItems[currentIndex];
    const img = item.querySelector('img');
    const title = item.querySelector('h4') ? item.querySelector('h4').innerText : '';
    const desc = item.querySelector('p') ? item.querySelector('p').innerText : '';

    if (img) {
      modalImg.src = img.getAttribute('src');
      modalImg.alt = img.getAttribute('alt') || title;
      if (modalCaption) {
        modalCaption.innerHTML = `<strong>${title}</strong> &mdash; ${desc}`;
      }
      if (counterEl) {
        counterEl.textContent = `Figure ${currentIndex + 1} of ${galleryItems.length}`;
      }
    }
  };

  galleryItems.forEach((item, idx) => {
    item.addEventListener('click', () => {
      updateModalContent(idx);
      modal.classList.add('active');
      document.body.style.overflow = 'hidden';
      if (modalClose) modalClose.focus();
    });

    // Support keyboard activation for accessibility
    item.setAttribute('tabindex', '0');
    item.setAttribute('role', 'button');
    item.addEventListener('keydown', (e) => {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        item.click();
      }
    });
  });

  const closeModal = () => {
    modal.classList.remove('active');
    document.body.style.overflow = '';
  };

  const showNext = () => {
    const nextIdx = (currentIndex + 1) % galleryItems.length;
    updateModalContent(nextIdx);
  };

  const showPrev = () => {
    const prevIdx = (currentIndex - 1 + galleryItems.length) % galleryItems.length;
    updateModalContent(prevIdx);
  };

  if (modalClose) modalClose.addEventListener('click', closeModal);
  if (nextBtn) nextBtn.addEventListener('click', showNext);
  if (prevBtn) prevBtn.addEventListener('click', showPrev);

  modal.addEventListener('click', (e) => {
    if (e.target === modal) closeModal();
  });

  document.addEventListener('keydown', (e) => {
    if (!modal.classList.contains('active')) return;

    if (e.key === 'Escape') {
      closeModal();
    } else if (e.key === 'ArrowRight') {
      showNext();
    } else if (e.key === 'ArrowLeft') {
      showPrev();
    }
  });
}

/* --- 9. Toast Feedback --- */
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
