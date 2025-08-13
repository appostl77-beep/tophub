<!-- Full Story Article -->
<article class="card" style="margin-bottom: 2rem;">
    <!-- Article Header -->
    <header class="card-header">
        <div style="display: flex; justify-content: space-between; align-items: flex-start; gap: 1rem; margin-bottom: 1rem;">
            <h1 class="card-title" style="margin: 0;">{title}</h1>
            <div style="display:flex; gap:.5rem; align-items:center;">
                {include file="modules/share_buttons.tpl"}
                <button class="btn btn-outline" onclick="toggleFavorite('{news-id}')" title="Добавить в избранное">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/></svg>
                    В избранное
                </button>
            </div>
        </div>
        
        <!-- Article Meta -->
        <div style="display: flex; gap: 1rem; flex-wrap: wrap; font-size: 0.875rem; color: var(--muted-foreground);">
            <div style="display: flex; align-items: center; gap: 0.25rem;">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                </svg>
                {category}
            </div>
            
            <div style="display: flex; align-items: center; gap: 0.25rem;">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M11.99 2C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zM12 20c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
                    <path d="M12.5 7H11v6l5.25 3.15.75-1.23-4.5-2.67z"/>
                </svg>
                {date}
            </div>
            
            <div style="display: flex; align-items: center; gap: 0.25rem;">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                </svg>
                {views} просмотров
            </div>
            
            <div style="display: flex; align-items: center; gap: 0.25rem;">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M21.99 4c0-1.1-.89-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4-.01-18zM18 14H6v-2h12v2zm0-3H6V9h12v2zm0-3H6V6h12v2z"/>
                </svg>
                {comments-num} комментариев
            </div>
        </div>
    </header>
    
    <!-- Article Content -->
    <div class="card-content">
        <!-- Main Image Gallery -->
        [xfgiven_rating_gallery]
        <div style="margin-bottom: 2rem;">
            <div id="main-image" style="margin-bottom: 1rem;">
                <img src="{xfvalue_rating_gallery}" alt="{title}" style="width: 100%; aspect-ratio: 16/9; object-fit: cover; border-radius: var(--radius); border: 1px solid var(--border);">
            </div>
            
            <!-- Thumbnail Gallery -->
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(100px, 1fr)); gap: 0.5rem;">
                {xfvalue_rating_gallery}
            </div>
        </div>
        [/xfgiven_rating_gallery]
        
        <!-- Article Text -->
        <div class="dle-content" style="margin-bottom: 2rem;">
            {full-story}
        </div>
        
        <!-- Rating Section -->
        <div class="card" style="margin-bottom: 2rem; background: var(--card); border: 1px solid var(--border); border-radius: var(--radius); overflow: hidden;">
            <div class="card-content">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                    <h3 style="margin: 0; font-weight: 600;">Результаты голосования</h3>
                    <div style="font-size: 0.875rem; color: var(--muted-foreground);">
                        Всего голосов: <span id="total-votes">{vote-num}</span>
                    </div>
                </div>
                
                <!-- Vote Buttons -->
                <div style="display: flex; gap: 0.5rem; margin-bottom: 1rem;">
                    <button class="btn btn-secondary" onclick="doVote('{news-id}', 'plus')">
                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M7.41 15.41L12 10.83l4.59 4.58L18 14l-6-6-6 6z"/>
                        </svg>
                        Голосовать за
                    </button>
                    <button class="btn btn-outline" onclick="doVote('{news-id}', 'minus')">
                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6z"/>
                        </svg>
                        Голосовать против
                    </button>
                </div>
                
                <!-- Vote Chart -->
                <div style="height: 200px; background: linear-gradient(135deg, var(--accent) 0%, var(--muted) 100%); border-radius: var(--radius); display: flex; align-items: center; justify-content: center; color: var(--foreground); position: relative; overflow: hidden;">
                    <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; background: url('data:image/svg+xml,<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 100 100\"><defs><pattern id=\"grid\" width=\"10\" height=\"10\" patternUnits=\"userSpaceOnUse\"><path d=\"M 10 0 L 0 0 0 10\" fill=\"none\" stroke=\"%23ffffff\" stroke-width=\"0.5\" opacity=\"0.3\"/></pattern></defs><rect width=\"100\" height=\"100\" fill=\"url(%23grid)\"/></svg>'); opacity: 0.3;"></div>
                    <div style="text-align: center;">
                        <div style="font-size: 3rem; font-weight: bold; color: var(--primary); text-shadow: 0 2px 4px rgba(0,0,0,0.1);" id="rating-score">{rating}</div>
                        <div style="font-size: 1.1rem; font-weight: 500; margin-top: 0.5rem;">Общий рейтинг</div>
                        <div style="font-size: 0.875rem; color: var(--muted-foreground); margin-top: 0.25rem;">на основе {vote-num} голосов</div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Additional Info Tabs -->
        <div class="card" style="background: var(--card); border: 1px solid var(--border); border-radius: var(--radius); overflow: hidden;">
            <div class="card-content">
                <!-- Tab Navigation -->
                <div style="display: flex; gap: 0.25rem; margin-bottom: 1.5rem; border-bottom: 1px solid var(--border); padding-bottom: 0.75rem; overflow-x: auto;">
                    <button class="tab-btn active" onclick="showTab('specs')" style="padding: 0.75rem 1.25rem; border: 1px solid var(--primary); background: var(--primary); color: var(--primary-foreground); border-radius: var(--radius); cursor: pointer; font-weight: 500; transition: all 0.2s; white-space: nowrap;">
                        Характеристики
                    </button>
                    <button class="tab-btn" onclick="showTab('lists')" style="padding: 0.75rem 1.25rem; border: 1px solid var(--border); background: var(--background); color: var(--foreground); border-radius: var(--radius); cursor: pointer; font-weight: 500; transition: all 0.2s; white-space: nowrap;">
                        В списках
                    </button>
                    <button class="tab-btn" onclick="showTab('links')" style="padding: 0.75rem 1.25rem; border: 1px solid var(--border); background: var(--background); color: var(--foreground); border-radius: var(--radius); cursor: pointer; font-weight: 500; transition: all 0.2s; white-space: nowrap;">
                        Ссылки
                    </button>
                </div>
                
                <!-- Tab Content -->
                <div id="tab-specs" class="tab-content" style="min-height: 120px;">
                    [xfgiven_rating_specs]
                    <div style="background: var(--accent); padding: 1.5rem; border-radius: var(--radius); border: 1px solid var(--border);">
                        <h4 style="margin: 0 0 1rem 0; color: var(--foreground); font-weight: 600;">Технические характеристики</h4>
                        {xfvalue_rating_specs}
                    </div>
                    [/xfgiven_rating_specs]
                    [xfnotgiven_rating_specs]
                    <div style="background: var(--muted); padding: 2rem; border-radius: var(--radius); text-align: center; color: var(--muted-foreground);">
                        <svg width="48" height="48" fill="currentColor" viewBox="0 0 24 24" style="margin-bottom: 1rem; opacity: 0.5;">
                            <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-5 14H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z"/>
                        </svg>
                        <p style="margin: 0; font-size: 1.1rem;">Характеристики не указаны</p>
                        <p style="margin: 0.5rem 0 0 0; font-size: 0.875rem;">Ключевые параметры и особенности будут добавлены позже</p>
                    </div>
                    [/xfnotgiven_rating_specs]
                </div>
                
                <div id="tab-lists" class="tab-content" style="display: none; min-height: 120px;">
                    <div style="background: var(--accent); padding: 1.5rem; border-radius: var(--radius); border: 1px solid var(--border);">
                        <h4 style="margin: 0 0 1rem 0; color: var(--foreground); font-weight: 600;">Рейтинги с этим пунктом</h4>
                        {related-news}
                    </div>
                </div>
                
                <div id="tab-links" class="tab-content" style="display: none; min-height: 120px;">
                    [xfgiven_rating_links]
                    <div style="background: var(--accent); padding: 1.5rem; border-radius: var(--radius); border: 1px solid var(--border);">
                        <h4 style="margin: 0 0 1rem 0; color: var(--foreground); font-weight: 600;">Полезные ссылки</h4>
                        {xfvalue_rating_links}
                    </div>
                    [/xfgiven_rating_links]
                    [xfnotgiven_rating_links]
                    <div style="background: var(--muted); padding: 2rem; border-radius: var(--radius); text-align: center; color: var(--muted-foreground);">
                        <svg width="48" height="48" fill="currentColor" viewBox="0 0 24 24" style="margin-bottom: 1rem; opacity: 0.5;">
                            <path d="M3.9 12c0-1.71 1.39-3.1 3.1-3.1h4V7H6.9C4.01 7 1.9 9.11 1.9 12s2.11 5 5 5h4v-1.9H6.9c-1.71 0-3.1-1.39-3.1-3.1zM8 13h8v-2H8v2zm9.1-6h-4v1.9h4c1.71 0 3.1 1.39 3.1 3.1s-1.39 3.1-3.1 3.1h-4V17h4c2.89 0 5-2.11 5-5s-2.11-5-5-5z"/>
                        </svg>
                        <p style="margin: 0; font-size: 1.1rem;">Дополнительные ссылки не указаны</p>
                        <p style="margin: 0.5rem 0 0 0; font-size: 0.875rem;">Официальные сайты и полезные ресурсы будут добавлены</p>
                    </div>
                    [/xfnotgiven_rating_links]
                </div>
            </div>
        </div>
        
        <!-- Tags -->
        [tags]
        <div style="margin-top: 1rem; padding-top: 1rem; border-top: 1px solid var(--border);">
            <div style="font-weight: 600; margin-bottom: 0.5rem; color: var(--muted-foreground); font-size: 0.875rem;">Теги:</div>
            <div style="display: flex; gap: 0.5rem; flex-wrap: wrap;">
                {tags}
            </div>
        </div>
        [/tags]
    </div>
</article>

<!-- Comments Section -->
<div class="comments-section">
    <h3 style="margin-bottom: 1rem;">Комментарии ({comments-num})</h3>
    {comments}
    {addcomments}
</div>

<script>
function showTab(tabName) {
    // Hide all tabs
    document.querySelectorAll('.tab-content').forEach(tab => {
        tab.style.display = 'none';
    });
    
    // Remove active class from all buttons
    document.querySelectorAll('.tab-btn').forEach(btn => {
        btn.style.background = 'var(--background)';
        btn.style.color = 'var(--foreground)';
        btn.style.border = '1px solid var(--border)';
    });
    
    // Show selected tab
    document.getElementById('tab-' + tabName).style.display = 'block';
    
    // Add active class to clicked button
    event.target.style.background = 'var(--primary)';
    event.target.style.color = 'var(--primary-foreground)';
    event.target.style.border = '1px solid var(--primary)';
}

function doVote(newsId, type) {
    // AJAX voting functionality
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/engine/ajax/rating.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            if (response.success) {
                document.getElementById('rating-score').textContent = response.rating;
                document.getElementById('total-votes').textContent = response.votes;
            }
        }
    };
    
    xhr.send('news_id=' + newsId + '&type=' + type);
}
</script>