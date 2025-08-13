<!-- Rating Card -->
<article class="rating-card" data-id="{news-id}">
    <div class="rating-content">
        <!-- Rating Number -->
        <div class="rating-number">1</div>
        
        <!-- Rating Image -->
        [xfgiven_rating_image]
        <img src="[xfvalue_image_url_rating_image]" alt="{title}" class="rating-image" loading="lazy">
        [/xfgiven_rating_image]
        [xfnotgiven_rating_image]
        <div class="rating-image" style="background: var(--muted); display: flex; align-items: center; justify-content: center; color: var(--muted-foreground);">
            <svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                <path d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.5 13.5l2.5 3.01L14.5 12l4.5 6H5l3.5-4.5z"/>
            </svg>
        </div>
        [/xfnotgiven_rating_image]
        
        <!-- Rating Info -->
        <div class="rating-info">
            <h2 class="rating-title">
                <a href="{full-link}">{title}</a>
            </h2>
            
            <div class="rating-meta">
                <div class="rating-meta-item">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M17.63 5.84C17.27 5.33 16.67 5 16 5L5 5.01C3.9 5.01 3 5.9 3 7v10c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V7c0-1.1-.9-2-2-2l-5.37.84zM12 9l3.5 2L12 13 8.5 11 12 9z"/>
                    </svg>
                    {category}
                </div>
                
                <div class="rating-meta-item">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M21.99 4c0-1.1-.89-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4-.01-18zM18 14H6v-2h12v2zm0-3H6V9h12v2zm0-3H6V6h12v2z"/>
                    </svg>
                    {comments-num} отзывов
                </div>
                
                <div class="rating-meta-item">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                    </svg>
                    {views} просмотров
                </div>
                
                [xfgiven_rating_date]
                <div class="rating-meta-item">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2H6v2H5c-1.1 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z"/>
                    </svg>
                    [xfvalue_rating_date]
                </div>
                [/xfgiven_rating_date]
            </div>
        </div>
        
        <!-- Rating Votes -->
        <div class="rating-votes">
            <button class="vote-btn up" onclick="doVote('{news-id}', 'plus')" title="Голос за">
                <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M7.41 15.41L12 10.83l4.59 4.58L18 14l-6-6-6 6z"/>
                </svg>
            </button>
            
            <div class="vote-score" id="vote-score-{news-id}">
                [xfgiven_rating_score][xfvalue_rating_score][/xfgiven_rating_score]
                [xfnotgiven_rating_score][rating][/xfnotgiven_rating_score]
            </div>
            
            <button class="vote-btn down" onclick="doVote('{news-id}', 'minus')" title="Голос против">
                <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6z"/>
                </svg>
            </button>
        </div>
        
        <!-- Description - Mobile -->
        <div class="rating-description">
            {short-story}
        </div>
    </div>
</article>