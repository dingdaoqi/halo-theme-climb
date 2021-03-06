<div class="card widget">
    <div class="card-content">
        <div class="menu">
        <h3 class="menu-label">
            归档
        </h3>
        <ul class="menu-list">
		<@postTag method="archiveMonth">
		<#list archives as archive>
            <li>
                <a class="level is-marginless" href="">
                    <span class="level-start">
                        <span class="level-item">${archive.month?c}月 ${archive.year?c}</span>
                    </span>
                    <span class="level-end">
                        <span class="level-item tag">${archive.posts?size}</span>
                    </span>
                </a>
            </li>
		</#list>
		</@postTag>
            <% _list_archives().forEach(archive => { %>
            <li>
                <a class="level is-marginless" href="<%= archive.url %>">
                    <span class="level-start">
                        <span class="level-item"><%= archive.name %></span>
                    </span>
                    <span class="level-end">
                        <span class="level-item tag"><%= archive.count %></span>
                    </span>
                </a>
            </li>
            <% }) %>
        </ul>
        </div>
    </div>
</div>