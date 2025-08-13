<!-- Category Page -->
<div style="margin-bottom: 2rem;">
    <div style="display: flex; justify-content: space-between; align-items: flex-start; gap: 1rem; margin-bottom: 1rem;">
        <h1 style="font-size: 2rem; font-weight: bold; margin: 0;">
            {category-title}
        </h1>
        {include file="modules/share_buttons.tpl"}
    </div>
    
    [description]
    <div style="color: var(--muted-foreground); margin-bottom: 1rem; line-height: 1.6;">
        {description}
    </div>
    [/description]
    
    <!-- Category Filters -->
    {include file="modules/rating_filters.tpl"}
</div>

<!-- Category Content -->
<div>
    {content}
</div>

<!-- Pagination -->
{pagination}