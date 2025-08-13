<aside class="sidebar">
    <!-- Telegram Widget -->
    <div class="sidebar-card">
        <div class="sidebar-title">
            <div class="sidebar-icon">
                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M9.78 18.65l.28-4.23 7.68-6.92c.34-.31-.07-.46-.52-.19L7.74 13.3 3.64 12c-.88-.25-.89-.86.2-1.3l15.97-6.16c.73-.33 1.43.18 1.15 1.3l-2.72 12.81c-.19.91-.74 1.13-1.5.71L12.6 16.3l-1.99 1.93c-.23.23-.42.42-.83.42z"/>
                </svg>
            </div>
            <span>Наш Telegram</span>
        </div>
        <p style="color: var(--muted-foreground); font-size: 0.875rem; margin-bottom: 0.75rem;">
            Подписывайтесь на канал, чтобы не пропустить новые рейтинги.
        </p>
        <a href="#" class="btn btn-secondary" style="width: 100%; justify-content: center;">
            Подписаться
        </a>
    </div>
    
    <!-- Rating Menu -->
    <div class="sidebar-card">
        <div class="sidebar-title">Меню рейтингов</div>
        <ul class="sidebar-list">
            <li><a href="/?sort=views">Самые просматриваемые</a></li>
            <li><a href="/?sort=rating">Самые высокие оценки</a></li>
            <li><a href="/?sort=date">Последние добавленные</a></li>
            <li><a href="/?sort=comments">Самые обсуждаемые</a></li>
        </ul>
    </div>
    
    <!-- Site Sections -->
    <div class="sidebar-card">
        <div class="sidebar-title">Разделы</div>
        <ul class="sidebar-list">
            <li>
                <a href="/categories/">
                    Категории
                    <svg style="display: inline; width: 12px; height: 12px; margin-left: 4px;" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z"/>
                    </svg>
                </a>
            </li>
            <li>
                <a href="/ratings/">
                    Все рейтинги
                    <svg style="display: inline; width: 12px; height: 12px; margin-left: 4px;" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z"/>
                    </svg>
                </a>
            </li>
            <li>
                <a href="/tags/">
                    Теги
                    <svg style="display: inline; width: 12px; height: 12px; margin-left: 4px;" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z"/>
                    </svg>
                </a>
            </li>
        </ul>
    </div>
    
    <!-- Popular Tags -->
    [tags]
    <div class="sidebar-card">
        <div class="sidebar-title">Популярные теги</div>
        <div style="display: flex; flex-wrap: wrap; gap: 0.5rem;">
            {tags}
        </div>
    </div>
    [/tags]
    
    <!-- Statistics -->
    <div class="sidebar-card">
        <div class="sidebar-title">Статистика</div>
        <div style="font-size: 0.875rem; color: var(--muted-foreground);">
            <div style="display: flex; justify-content: space-between; margin-bottom: 0.5rem;">
                <span>Всего рейтингов:</span>
                <strong>{news_num}</strong>
            </div>
            <div style="display: flex; justify-content: space-between; margin-bottom: 0.5rem;">
                <span>Комментариев:</span>
                <strong>{comm_num}</strong>
            </div>
            <div style="display: flex; justify-content: space-between;">
                <span>Пользователей:</span>
                <strong>{user_num}</strong>
            </div>
        </div>
    </div>
</aside>