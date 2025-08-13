<div class="card" style="margin-top: 1rem;">
    <div class="card-header">
        <h3 style="margin: 0;">Добавить комментарий</h3>
    </div>
    <div class="card-content">
        [not-logged]
        <div style="text-align: center; padding: 2rem; color: var(--muted-foreground);">
            <p>Для добавления комментариев необходимо <a href="{login-link}" style="color: var(--primary);">войти в систему</a></p>
        </div>
        [/not-logged]
        
        [logged]
        <form method="post" name="dle-comments-form">
            <input type="hidden" name="subaction" value="addcomment">
            <input type="hidden" name="comments_post_id" value="{news-id}">
            
            <div style="margin-bottom: 1rem;">
                <label style="display: block; margin-bottom: 0.5rem; font-weight: 500;">Комментарий:</label>
                <textarea name="comments" rows="6" style="width: 100%; padding: 0.75rem; border: 1px solid var(--border); border-radius: var(--radius); background: var(--background); color: var(--foreground); resize: vertical;" placeholder="Напишите ваш отзыв..."></textarea>
            </div>
            
            {question}
            
            <div style="display: flex; gap: 0.5rem; justify-content: flex-end;">
                <button type="submit" class="btn btn-primary">
                    <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M2.01 21L23 12 2.01 3 2 10l15 2-15 2z"/>
                    </svg>
                    Отправить
                </button>
                <button type="button" class="btn btn-outline" onclick="document.forms['dle-comments-form'].reset();">
                    Очистить
                </button>
            </div>
        </form>
        [/logged]
    </div>
</div>