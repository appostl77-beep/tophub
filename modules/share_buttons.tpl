<div class="share-buttons">
    <button class="share-btn" onclick="shareNative()" title="Поделиться">
        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
            <path d="M18 16.08c-.76 0-1.44.3-1.96.77L8.91 12.7c.05-.23.09-.46.09-.7s-.04-.47-.09-.7l7.05-4.11c.54.5 1.25.81 2.04.81 1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3c0 .24.04.47.09.7L8.04 9.81C7.5 9.31 6.79 9 6 9c-1.66 0-3 1.34-3 3s1.34 3 3 3c.79 0 1.5-.31 2.04-.81l7.12 4.16c-.05.21-.08.43-.08.65 0 1.61 1.31 2.92 2.92 2.92s2.92-1.31 2.92-2.92-1.31-2.92-2.92-2.92z"/>
        </svg>
        Поделиться
    </button>
    
    <a href="https://t.me/share/url?url={canonical}&text={title}" target="_blank" class="share-btn" title="Telegram">
        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
            <path d="M9.78 18.65l.28-4.23 7.68-6.92c.34-.31-.07-.46-.52-.19L7.74 13.3 3.64 12c-.88-.25-.89-.86.2-1.3l15.97-6.16c.73-.33 1.43.18 1.15 1.3l-2.72 12.81c-.19.91-.74 1.13-1.5.71L12.6 16.3l-1.99 1.93c-.23.23-.42.42-.83.42z"/>
        </svg>
        TG
    </a>
    
    <a href="https://www.facebook.com/sharer/sharer.php?u={canonical}" target="_blank" class="share-btn" title="Facebook">
        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
            <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
        </svg>
        FB
    </a>
    
    <a href="https://vk.com/share.php?url={canonical}" target="_blank" class="share-btn" title="VKontakte">
        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
            <path d="M15.684 0H8.316C1.592 0 0 1.592 0 8.316v7.368C0 22.408 1.592 24 8.316 24h7.368C22.408 24 24 22.408 24 15.684V8.316C24 1.592 22.408 0 15.684 0zm3.692 17.123h-1.744c-.66 0-.864-.525-2.05-1.727-1.033-1.01-1.49-.9-1.49.45v1.57c0 .417-.133.667-1.25.667-1.85 0-3.898-1.119-5.352-3.202-2.18-3.085-2.78-5.4-2.78-5.88 0-.417.167-.6.584-.6h1.744c.434 0 .6.2.767.667.967 2.367 2.084 4.434 2.617 4.434.2 0 .284-.092.284-.6V9.917c-.067-.934-.4-1.017-.4-1.35 0-.2.167-.4.434-.4h2.733c.367 0 .5.2.5.65v3.583c0 .367.167.5.267.5.2 0 .367-.133.733-.5 1.217-1.367 2.084-3.467 2.084-3.467.117-.267.317-.534.784-.534h1.744c.517 0 .617.267.517.65-.167.934-2.267 3.734-2.267 3.734-.2.267-.267.4 0 .684 1.917 2.267 2.284 3.383 2.284 3.383.133.434-.234.75-.667.75z"/>
        </svg>
        VK
    </a>
    
    <button class="share-btn" onclick="copyLink()" title="Копировать ссылку">
        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
            <path d="M3.9 12c0-1.71 1.39-3.1 3.1-3.1h4V7H6.9C4.01 7 1.9 9.11 1.9 12s2.11 5 5 5h4v-1.9H6.9c-1.71 0-3.1-1.39-3.1-3.1zM8 13h8v-2H8v2zm9.1-6h-4v1.9h4c1.71 0 3.1 1.39 3.1 3.1s-1.39 3.1-3.1 3.1h-4V17h4c2.89 0 5-2.11 5-5s-2.11-5-5-5z"/>
        </svg>
    </button>
</div>

<script>
function shareNative() {
    if (navigator.share) {
        navigator.share({
            title: document.title,
            url: window.location.href
        });
    } else {
        copyLink();
    }
}

function copyLink() {
    navigator.clipboard.writeText(window.location.href).then(function() {
        alert('Ссылка скопирована в буфер обмена');
    });
}
</script>