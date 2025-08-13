<!-- Category Page -->
<div class="category-page">
    <!-- Category Header -->
    <header class="category-header">
        <div class="category-header-content">
            <h1 class="category-title">{category-title}</h1>
            <div class="category-meta">
                <span class="category-count">{category-count} рейтингов</span>
                <span class="category-description">{category-description}</span>
            </div>
        </div>
        
        <!-- Category Actions -->
        <div class="category-actions">
            {include file="modules/share_buttons.tpl"}
        </div>
    </header>
    
    <!-- Category Description -->
    [category-description]
    <div class="category-description-card">
        <div class="category-description-content">
            {category-description}
        </div>
        <button class="category-description-toggle" onclick="toggleDescription()">
            <span class="toggle-text">Показать больше</span>
            <svg class="toggle-icon" width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                <path d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6z"/>
            </svg>
        </button>
    </div>
    [/category-description]
    
    <!-- Category Filters -->
    <div class="category-filters">
        <div class="filter-group">
            <button class="filter-btn active" data-sort="rating">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                </svg>
                По рейтингу
            </button>
            <button class="filter-btn" data-sort="views">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                </svg>
                По просмотрам
            </button>
            <button class="filter-btn" data-sort="comments">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M21.99 4c0-1.1-.89-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4-.01-18zM18 14H6v-2h12v2zm0-3H6V9h12v2zm0-3H6V6h12v2z"/>
                </svg>
                По отзывам
            </button>
            <button class="filter-btn" data-sort="date">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2H6v2H5c-1.1 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z"/>
                </svg>
                По дате
            </button>
        </div>
    </div>
    
    <!-- Category Grid -->
    <div class="category-grid">
        {custom category="1" template="shortstory" limit="12"}
    </div>
    
    <!-- Pagination -->
    <div class="pagination-wrapper">
        {navigation}
    </div>
</div>

<style>
.category-page {
    max-width: 100%;
}

.category-header {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 2rem;
    margin-bottom: 2rem;
    padding: 2rem;
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    box-shadow: var(--shadow);
}

.category-header-content {
    flex: 1;
}

.category-title {
    margin: 0 0 0.5rem 0;
    font-size: 2rem;
    font-weight: 700;
    color: var(--foreground);
}

.category-meta {
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
}

.category-count {
    font-weight: 600;
    color: var(--primary);
}

.category-description {
    color: var(--muted-foreground);
    font-size: 0.875rem;
}

.category-actions {
    flex-shrink: 0;
}

.category-description-card {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    margin-bottom: 2rem;
    overflow: hidden;
    box-shadow: var(--shadow);
}

.category-description-content {
    padding: 1.5rem;
    max-height: 120px;
    overflow: hidden;
    transition: max-height 0.3s ease;
}

.category-description-content.expanded {
    max-height: none;
}

.category-description-toggle {
    width: 100%;
    padding: 1rem 1.5rem;
    background: var(--accent);
    border: none;
    border-top: 1px solid var(--border);
    color: var(--foreground);
    font-weight: 500;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    transition: all 0.2s ease;
}

.category-description-toggle:hover {
    background: var(--muted);
}

.toggle-icon {
    transition: transform 0.2s ease;
}

.toggle-icon.rotated {
    transform: rotate(180deg);
}

.category-filters {
    margin-bottom: 2rem;
}

.filter-group {
    display: flex;
    gap: 0.5rem;
    flex-wrap: wrap;
}

.filter-btn {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.75rem 1rem;
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    color: var(--foreground);
    font-size: 0.875rem;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.2s ease;
    text-decoration: none;
}

.filter-btn:hover {
    background: var(--accent);
    border-color: var(--primary);
}

.filter-btn.active {
    background: var(--primary);
    color: var(--primary-foreground);
    border-color: var(--primary);
}

.category-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
    gap: 1.5rem;
    margin-bottom: 2rem;
}

.pagination-wrapper {
    display: flex;
    justify-content: center;
    margin-top: 2rem;
}

@media (max-width: 768px) {
    .category-header {
        flex-direction: column;
        gap: 1rem;
        padding: 1.5rem;
    }
    
    .category-title {
        font-size: 1.5rem;
    }
    
    .category-grid {
        grid-template-columns: 1fr;
        gap: 1rem;
    }
    
    .filter-group {
        gap: 0.25rem;
    }
    
    .filter-btn {
        padding: 0.5rem 0.75rem;
        font-size: 0.8rem;
    }
}
</style>

<script>
function toggleDescription() {
    const content = document.querySelector('.category-description-content');
    const toggle = document.querySelector('.category-description-toggle');
    const text = toggle.querySelector('.toggle-text');
    const icon = toggle.querySelector('.toggle-icon');
    
    if (content.classList.contains('expanded')) {
        content.classList.remove('expanded');
        text.textContent = 'Показать больше';
        icon.classList.remove('rotated');
    } else {
        content.classList.add('expanded');
        text.textContent = 'Скрыть';
        icon.classList.add('rotated');
    }
}

// Filter functionality
document.querySelectorAll('.filter-btn').forEach(btn => {
    btn.addEventListener('click', function() {
        // Remove active class from all buttons
        document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
        // Add active class to clicked button
        this.classList.add('active');
        
        // Get sort parameter
        const sort = this.dataset.sort;
        
        // Update URL with sort parameter
        const url = new URL(window.location);
        url.searchParams.set('sort', sort);
        window.history.pushState({}, '', url);
        
        // Reload page with new sort parameter
        window.location.reload();
    });
});
</script>