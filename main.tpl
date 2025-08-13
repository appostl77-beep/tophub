<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title}</title>
    <meta name="description" content="{description}">
    <meta name="keywords" content="{keywords}">
    <link rel="canonical" href="{canonical}">
    
    <!-- Open Graph -->
    <meta property="og:title" content="{title}">
    <meta property="og:description" content="{description}">
    <meta property="og:type" content="website">
    <meta property="og:url" content="{canonical}">
    <meta property="og:image" content="{THEME}/images/logo.png">
    
    <!-- Twitter Card -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{title}">
    <meta name="twitter:description" content="{description}">
    <meta name="twitter:image" content="{THEME}/images/logo.png">
    
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{THEME}/images/favicon.ico">
    <link rel="apple-touch-icon" href="{THEME}/images/apple-touch-icon.png">
    
    <!-- Styles -->
    <link rel="stylesheet" href="{THEME}/css/styles.css">
    <link rel="stylesheet" href="{THEME}/css/engine.css">
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    {headers}
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <div class="header-content">
                <!-- Logo -->
                <a href="/" class="logo">
                    <div class="logo-icon">
                        <svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                        </svg>
                    </div>
                    <span class="logo-text">TopHub</span>
                </a>
                
                <!-- Search Form -->
                <form class="search-form" method="get" action="">
                    <input type="hidden" name="do" value="search">
                    <input type="hidden" name="subaction" value="search">
                    <div class="search-wrapper">
                        <svg class="search-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m21 21-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                        <input type="text" name="story" class="search-input" placeholder="Поиск по рейтингам..." value="{search_query}">
                    </div>
                    <button type="submit" class="btn btn-secondary">Найти</button>
                </form>
                
                <!-- User Actions - Desktop -->
                <div class="user-actions-desktop">
                    [not-logged]
                    <a href="{login-link}" class="btn btn-primary">
                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                        </svg>
                        Войти
                    </a>
                    [/not-logged]
                    
                    [logged]
                    <a href="{addnews-link}" class="btn btn-outline">
                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/>
                        </svg>
                        Добавить
                    </a>
                    <a href="{profile-link}" class="btn btn-primary">
                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                        </svg>
                        {login}
                    </a>
                    [/logged]
                </div>
                
                <!-- Mobile Menu Toggle -->
                <button class="mobile-menu-toggle" id="mobile-menu-toggle">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
            
            <!-- Navigation -->
            {include file="modules/topmenu.tpl"}
        </div>
    </header>
    
    <!-- Mobile Menu -->
    <div class="mobile-menu" id="mobile-menu">
        <div class="mobile-menu-content">
            <div class="mobile-menu-header">
                <h3>Меню</h3>
                <button class="mobile-menu-close" id="mobile-menu-close">
                    <svg width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/>
                    </svg>
                </button>
            </div>
            
            <div class="mobile-menu-actions">
                [not-logged]
                <a href="{login-link}" class="btn btn-primary btn-full">Войти</a>
                [/not-logged]
                [logged]
                <a href="{addnews-link}" class="btn btn-outline btn-full">Добавить рейтинг</a>
                <a href="{profile-link}" class="btn btn-primary btn-full">{login}</a>
                [/logged]
            </div>
            
            <nav class="mobile-nav">
                <a href="/" class="mobile-nav-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z"/>
                    </svg>
                    Главная
                </a>
                <a href="/categories/" class="mobile-nav-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"/>
                    </svg>
                    Категории
                </a>
                <a href="/ratings/" class="mobile-nav-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z"/>
                    </svg>
                    Рейтинги
                </a>
                <a href="/tags/" class="mobile-nav-item">
                    <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M21.41 11.58l-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58.55 0 1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41 0-.55-.23-1.06-.59-1.42zM5.5 7C4.67 7 4 6.33 4 5.5S4.67 4 5.5 4 7 4.67 7 5.5 6.33 7 5.5 7z"/>
                    </svg>
                    Теги
                </a>
            </nav>
        </div>
    </div>
    
    <!-- Main Content -->
    <div class="container">
        <!-- Breadcrumbs -->
        {speedbar}
        
        <div class="main-content">
            <!-- Content Area -->
            <main class="content-area">
                {info}
                {content}
            </main>
            
            <!-- Sidebar -->
            [desktop] {include file="modules/sidebar.tpl"} [/desktop]
        </div>
    </div>
    
    <!-- Footer -->
    {include file="modules/footer.tpl"}
    
    <!-- Scripts -->
    <script src="{THEME}/js/lib.js"></script>
    {AJAX}
</body>
</html>