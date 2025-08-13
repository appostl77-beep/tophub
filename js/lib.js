// DLE Template JavaScript Library

// Voting functionality
function doVote(newsId, type) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/engine/ajax/rating.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
    
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                try {
                    var response = JSON.parse(xhr.responseText);
                    if (response.success) {
                        // Update vote score
                        var scoreElement = document.getElementById('vote-score-' + newsId);
                        if (scoreElement) {
                            scoreElement.textContent = response.rating;
                        }
                        
                        // Update total votes if element exists
                        var totalElement = document.getElementById('total-votes');
                        if (totalElement && response.votes) {
                            totalElement.textContent = response.votes;
                        }
                        
                        // Update main rating score if exists
                        var ratingElement = document.getElementById('rating-score');
                        if (ratingElement) {
                            ratingElement.textContent = response.rating;
                        }
                        
                        // Show success message
                        showNotification('Ваш голос учтен!', 'success');
                    } else {
                        showNotification(response.message || 'Ошибка при голосовании', 'error');
                    }
                } catch (e) {
                    showNotification('Ошибка обработки ответа сервера', 'error');
                }
            } else {
                showNotification('Ошибка соединения с сервером', 'error');
            }
        }
    };
    
    xhr.send('news_id=' + encodeURIComponent(newsId) + '&type=' + encodeURIComponent(type));
}

// Notification system
function showNotification(message, type) {
    var notification = document.createElement('div');
    notification.className = 'notification notification-' + type;
    notification.textContent = message;
    
    // Styles
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 12px 20px;
        border-radius: 8px;
        color: white;
        font-weight: 500;
        z-index: 10000;
        animation: slideIn 0.3s ease-out;
        max-width: 300px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    `;
    
    if (type === 'success') {
        notification.style.background = 'hsl(150, 45%, 40%)';
    } else if (type === 'error') {
        notification.style.background = 'hsl(0, 72%, 50%)';
    } else {
        notification.style.background = 'hsl(205, 80%, 40%)';
    }
    
    document.body.appendChild(notification);
    
    // Auto remove after 3 seconds
    setTimeout(function() {
        notification.style.animation = 'slideOut 0.3s ease-out';
        setTimeout(function() {
            if (notification.parentNode) {
                notification.parentNode.removeChild(notification);
            }
        }, 300);
    }, 3000);
}

// Add CSS animations
var style = document.createElement('style');
style.textContent = `
    @keyframes slideIn {
        from {
            transform: translateX(100%);
            opacity: 0;
        }
        to {
            transform: translateX(0);
            opacity: 1;
        }
    }
    
    @keyframes slideOut {
        from {
            transform: translateX(0);
            opacity: 1;
        }
        to {
            transform: translateX(100%);
            opacity: 0;
        }
    }
`;
document.head.appendChild(style);

// Share functionality
function shareNative() {
    if (navigator.share) {
        navigator.share({
            title: document.title,
            url: window.location.href
        }).catch(function(error) {
            console.log('Error sharing:', error);
        });
    } else {
        copyLink();
    }
}

function copyLink() {
    if (navigator.clipboard) {
        navigator.clipboard.writeText(window.location.href).then(function() {
            showNotification('Ссылка скопирована в буфер обмена', 'success');
        }).catch(function() {
            fallbackCopyLink();
        });
    } else {
        fallbackCopyLink();
    }
}

function fallbackCopyLink() {
    var textArea = document.createElement('textarea');
    textArea.value = window.location.href;
    textArea.style.position = 'fixed';
    textArea.style.left = '-999999px';
    textArea.style.top = '-999999px';
    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();
    
    try {
        document.execCommand('copy');
        showNotification('Ссылка скопирована в буфер обмена', 'success');
    } catch (err) {
        showNotification('Не удалось скопировать ссылку', 'error');
    }
    
    document.body.removeChild(textArea);
}

// Tab functionality for full story
function showTab(tabName) {
    // Hide all tabs
    var tabs = document.querySelectorAll('.tab-content');
    tabs.forEach(function(tab) {
        tab.style.display = 'none';
    });
    
    // Remove active class from all buttons
    var buttons = document.querySelectorAll('.tab-btn');
    buttons.forEach(function(btn) {
        btn.style.background = 'var(--secondary)';
        btn.style.color = 'var(--foreground)';
        btn.style.border = '1px solid var(--border)';
        btn.classList.remove('active');
    });
    
    // Show selected tab
    var selectedTab = document.getElementById('tab-' + tabName);
    if (selectedTab) {
        selectedTab.style.display = 'block';
    }
    
    // Add active class to clicked button
    var activeButton = event ? event.target : document.querySelector('.tab-btn');
    activeButton.style.background = 'var(--primary)';
    activeButton.style.color = 'var(--primary-foreground)';
    activeButton.style.border = '1px solid var(--primary)';
    activeButton.classList.add('active');
}

// Comment reply functionality
function showReplyForm(commentId) {
    var existingForm = document.getElementById('reply-form-' + commentId);
    if (existingForm) {
        existingForm.remove();
        return;
    }
    
    var comment = document.getElementById('comment-' + commentId);
    if (!comment) return;
    
    var replyForm = document.createElement('div');
    replyForm.id = 'reply-form-' + commentId;
    replyForm.innerHTML = `
        <div style="margin-top: 1rem; padding: 1rem; background: var(--muted); border-radius: var(--radius);">
            <form method="post" name="reply-form-${commentId}">
                <input type="hidden" name="subaction" value="addcomment">
                <input type="hidden" name="comments_post_id" value="${document.querySelector('input[name="comments_post_id"]').value}">
                <input type="hidden" name="parent" value="${commentId}">
                
                <div style="margin-bottom: 1rem;">
                    <textarea name="comments" rows="3" style="width: 100%; padding: 0.5rem; border: 1px solid var(--border); border-radius: var(--radius); background: var(--background);" placeholder="Ваш ответ..."></textarea>
                </div>
                
                <div style="display: flex; gap: 0.5rem;">
                    <button type="submit" class="btn btn-primary" style="font-size: 0.875rem; padding: 0.5rem 1rem;">Ответить</button>
                    <button type="button" class="btn btn-outline" style="font-size: 0.875rem; padding: 0.5rem 1rem;" onclick="document.getElementById('reply-form-${commentId}').remove();">Отмена</button>
                </div>
            </form>
        </div>
    `;
    
    comment.appendChild(replyForm);
}

function toggleFavorite(newsId){
    try{
        var key = 'fav_'+newsId;
        var isFav = localStorage.getItem(key) === '1';
        var btn = document.querySelector('.btn.btn-outline[onclick*="toggleFavorite"]');
        if(isFav){
            localStorage.removeItem(key);
            if(btn){ btn.innerHTML = '<svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/></svg> В избранное'; }
            showNotification('Удалено из избранного','info');
        } else {
            localStorage.setItem(key,'1');
            if(btn){ btn.innerHTML = '<svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/></svg> В избранном'; }
            showNotification('Добавлено в избранное','success');
        }
    }catch(e){console.log(e)}
}

// Mobile menu functionality
function initMobileMenu() {
    const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
    const mobileMenu = document.getElementById('mobile-menu');
    const mobileMenuClose = document.getElementById('mobile-menu-close');
    
    if (mobileMenuToggle && mobileMenu) {
        mobileMenuToggle.addEventListener('click', function() {
            mobileMenu.classList.add('active');
            document.body.style.overflow = 'hidden';
        });
        
        if (mobileMenuClose) {
            mobileMenuClose.addEventListener('click', function() {
                mobileMenu.classList.remove('active');
                document.body.style.overflow = '';
            });
        }
        
        // Close menu when clicking outside
        mobileMenu.addEventListener('click', function(e) {
            if (e.target === mobileMenu) {
                mobileMenu.classList.remove('active');
                document.body.style.overflow = '';
            }
        });
    }
}

// Initialize on page load
document.addEventListener('DOMContentLoaded', function() {
    // Initialize mobile menu
    initMobileMenu();
    
    // Add smooth scrolling to anchor links
    var anchorLinks = document.querySelectorAll('a[href^="#"]');
    anchorLinks.forEach(function(link) {
        link.addEventListener('click', function(e) {
            var target = document.querySelector(this.getAttribute('href'));
            if (target) {
                e.preventDefault();
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
    
    // Add loading states to vote buttons
    var voteButtons = document.querySelectorAll('.vote-btn');
    voteButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            this.style.opacity = '0.6';
            this.style.pointerEvents = 'none';
            
            setTimeout(function() {
                button.style.opacity = '';
                button.style.pointerEvents = '';
            }, 2000);
        });
    });
});

// Lazy loading for images
function initLazyLoading() {
    var images = document.querySelectorAll('img[loading="lazy"]');
    
    if ('IntersectionObserver' in window) {
        var imageObserver = new IntersectionObserver(function(entries, observer) {
            entries.forEach(function(entry) {
                if (entry.isIntersecting) {
                    var img = entry.target;
                    img.src = img.dataset.src || img.src;
                    img.classList.remove('lazy');
                    imageObserver.unobserve(img);
                }
            });
        });
        
        images.forEach(function(img) {
            imageObserver.observe(img);
        });
    }
}

// Initialize lazy loading
document.addEventListener('DOMContentLoaded', initLazyLoading);