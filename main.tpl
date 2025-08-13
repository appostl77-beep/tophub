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
    
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{THEME}/images/favicon.ico">
    
    <!-- Styles -->
    <link rel="stylesheet" href="{THEME}/css/styles.css">
    <link rel="stylesheet" href="{THEME}/css/engine.css">
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;600;700&display=swap" rel="stylesheet">
    
    {headers}
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <div class="header-content">
                <!-- Logo -->
                <a href="/" class="logo">
                    <div class="logo-icon">P</div>
                    <span class="logo-text">Pastel Pulse</span>
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
                    <a href="{login-link}" class="btn btn-primary">
                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                        </svg>
                        Войти
                    </a>


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
                </div>
                
                <!-- User Actions - Mobile -->
                <div class="user-actions-mobile">
                    [not-logged]
                    <a href="{login-link}" class="btn btn-primary btn-mobile">Войти</a>
                    [/not-logged]
                    [logged]
                    <a href="{addnews-link}" class="btn btn-outline btn-mobile">Добавить</a>
                    <a href="{profile-link}" class="btn btn-primary btn-mobile">{login}</a>
                    [/logged]
                </div>
            </div>
            
            <!-- Navigation -->
            {include file="modules/topmenu.tpl"}
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="container">
        <!-- Breadcrumbs -->
        {speedbar}
        
        <div class="main-content">
            <!-- Content Area -->
            <main>
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