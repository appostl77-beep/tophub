<!-- Ratings Page -->
<div class="ratings-page">
    <!-- Page Header -->
    <header class="page-header" style="margin-bottom: 2rem;">
        <div style="display: flex; justify-content: space-between; align-items: flex-start; gap: 1rem; margin-bottom: 1rem;">
            <div>
                <h1 style="margin: 0 0 0.5rem 0; font-size: 2rem; font-weight: 700;">Все рейтинги</h1>
                <p style="margin: 0; color: var(--muted-foreground); font-size: 1.1rem;">Найдите лучшие рейтинги по любой теме</p>
            </div>
            {include file="modules/share_buttons.tpl"}
        </div>
        
        <!-- Search and Filters -->
        <div style="background: var(--card); border: 1px solid var(--border); border-radius: var(--radius); padding: 1.5rem;">
            <form method="get" action="" style="display: flex; gap: 1rem; flex-wrap: wrap; align-items: center;">
                <input type="hidden" name="do" value="search">
                <input type="hidden" name="subaction" value="search">
                
                <div style="flex: 1; min-width: 250px;">
                    <input type="text" name="story" class="search-input" placeholder="Поиск по рейтингам..." value="{search_query}" style="width: 100%; padding: 0.75rem 1rem; border: 1px solid var(--border); border-radius: var(--radius); background: var(--background);">
                </div>
                
                <select name="category" style="padding: 0.75rem 1rem; border: 1px solid var(--border); border-radius: var(--radius); background: var(--background); min-width: 150px;">
                    <option value="">Все категории</option>
                    {custom category="1" template="categorymenu" limit="20"}
                </select>
                
                <select name="sort" style="padding: 0.75rem 1rem; border: 1px solid var(--border); border-radius: var(--radius); background: var(--background); min-width: 150px;">
                    <option value="date" {if-sort-date}selected{/if-sort-date}>По дате</option>
                    <option value="rating" {if-sort-rating}selected{/if-sort-rating}>По рейтингу</option>
                    <option value="views" {if-sort-views}selected{/if-sort-views}>По просмотрам</option>
                    <option value="comments" {if-sort-comments}selected{/if-sort-comments}>По комментариям</option>
                </select>
                
                <button type="submit" class="btn btn-primary">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m21 21-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                    </svg>
                    Найти
                </button>
            </form>
        </div>
    </header>

    <!-- Quick Filters -->
    <div class="quick-filters" style="margin-bottom: 2rem;">
        <div style="display: flex; gap: 0.5rem; flex-wrap: wrap;">
            <button class="filter-btn active" data-filter="all" onclick="filterRatings('all')">
                Все
            </button>
            <button class="filter-btn" data-filter="top" onclick="filterRatings('top')">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                </svg>
                Топ рейтинги
            </button>
            <button class="filter-btn" data-filter="new" onclick="filterRatings('new')">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
                </svg>
                Новые
            </button>
            <button class="filter-btn" data-filter="popular" onclick="filterRatings('popular')">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                </svg>
                Популярные
            </button>
        </div>
    </div>

    <!-- Ratings Grid -->
    <div class="ratings-grid" style="display: grid; grid-template-columns: repeat(auto-fill, minmax(350px, 1fr)); gap: 1.5rem; margin-bottom: 2rem;">
        {custom category="1" template="shortstory" limit="12"}
    </div>

    <!-- Pagination -->
    <div class="pagination-wrapper" style="display: flex; justify-content: center;">
        {navigation}
    </div>
</div>

<style>
/* Ratings page styles */
.quick-filters .filter-btn {
    padding: 0.5rem 1rem;
    border: 1px solid var(--border);
    background: var(--background);
    color: var(--foreground);
    border-radius: var(--radius);
    cursor: pointer;
    font-weight: 500;
    transition: all 0.2s;
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.quick-filters .filter-btn:hover {
    background: var(--accent);
    border-color: var(--primary);
}

.quick-filters .filter-btn.active {
    background: var(--primary);
    color: var(--primary-foreground);
    border-color: var(--primary);
}

/* Responsive */
@media (max-width: 768px) {
    .page-header > div:first-child {
        flex-direction: column;
        align-items: flex-start;
    }
    
    .page-header form {
        flex-direction: column;
    }
    
    .page-header form > * {
        width: 100%;
    }
    
    .ratings-grid {
        grid-template-columns: 1fr !important;
    }
    
    .quick-filters {
        overflow-x: auto;
        padding-bottom: 0.5rem;
    }
    
    .quick-filters > div {
        min-width: max-content;
    }
}
</style>

<script>
function filterRatings(filter) {
    // Remove active class from all buttons
    document.querySelectorAll('.filter-btn').forEach(btn => {
        btn.classList.remove('active');
    });
    
    // Add active class to clicked button
    event.target.classList.add('active');
    
    // Update URL with filter parameter
    const url = new URL(window.location);
    url.searchParams.set('filter', filter);
    window.history.pushState({}, '', url);
    
    // Reload page with new filter
    window.location.reload();
}

// Initialize filters based on URL parameters
document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const filter = urlParams.get('filter');
    
    if (filter) {
        document.querySelectorAll('.filter-btn').forEach(btn => {
            btn.classList.remove('active');
        });
        
        const activeBtn = document.querySelector(`[data-filter="${filter}"]`);
        if (activeBtn) {
            activeBtn.classList.add('active');
        }
    }
});
</script>