<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сайт временно недоступен</title>
    <link rel="stylesheet" href="{THEME}/css/offline.css">
</head>
<body>
    <div class="offline-container">
        <div class="offline-content">
            <div class="offline-icon">
                <svg width="64" height="64" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
                </svg>
            </div>
            <h1>Сайт временно недоступен</h1>
            <p>Проводятся технические работы. Приносим извинения за неудобства.</p>
            <p>Ожидаемое время восстановления: <strong>{date}</strong></p>
            <div class="offline-actions">
                <button onclick="location.reload()" class="btn btn-primary">Обновить страницу</button>
            </div>
        </div>
    </div>
</body>
</html>