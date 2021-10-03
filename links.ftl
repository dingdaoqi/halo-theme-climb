<#include "layout/layout.ftl">
<@layout title="友链 - ${blog_title!}" canonical="${links_url!}">
    <div class="card">
        <#if settings.links_thumbnail?? && settings.links_thumbnail!=''>
            <div class="card-image">
            <span class="image is-7by1">
                <img class="thumbnail" src="${settings.links_thumbnail!}" alt="友链">
            </span>
            </div>
        </#if>
        <div class="card-content">
            <h1 class="title is-size-3 is-size-4-mobile has-text-weight-normal">友链</h1>
            <div class="content">
                <@linkTag method="listTeams">
                <#assign defaultAvatar= (settings.links_default_avatar?? && settings.links_default_avatar!='')?string(settings.links_default_avatar!, static + "/source/images/thumbnail.svg") />
                <#list teams as item>
                <div class="links">
                    <#if item.team?? && item.team!=''>
                        <h2 class="link-title" id="toc${item_index}"><span class="fake-title">${item.team}</span></h2>
                    <#else>
                        <h2 class="link-title" id="toc${item_index}"><span class="fake-title">好友</span></h2>
                    </#if>
                    <ul class="link-items">
                        <#list item.links as link>
                            <a href="${link.url!}" target="_blank" title="${link.description!}">
                                <li class="link-item">
                                    <#if link.logo?? && link.logo!=''>
                                        <img title="${link.name!}" src="${defaultAvatar!}" onload="if(!this.finish){this.finish=true;this.src='${link.logo!}'}" onerror="this.onerror='';this.finish=true;this.src='${defaultAvatar!}'">
                                    <#else>
                                        <img title="${link.name!}" src="${defaultAvatar!}">
                                    </#if>

                                    <span class="sitename">${link.name!}</span>
                                    <#if link.description?? && link.description!=''>
                                        <div class="linkdes">${link.description!}</div>
                                    <#else>
                                        <div class="linkdes">他还没有自我介绍呢</div>
                                    </#if>
                                </li>
                            </a>
                        </#list>
                    </ul>
                </div>
                </#list>
                </@linkTag>
                申请友链的方法：
                <#assign bloggerAvatar= (settings.links_blogger_avatar?? && settings.links_blogger_avatar!='')?string(settings.links_blogger_avatar!, user.avatar!) />
                <ul>
                    <li>名称：${blog_title!}</li>
                    <li>地址：<a href="${blog_url}">${blog_url}</a></li>
                    <li>图标：<a href="${bloggerAvatar!}">${bloggerAvatar!}</a></li>
                    <li>描述：${meta_description!}</li>
                </ul>
                <div>${settings.links_info!}</div>
            </div>
            <#if settings.share_type?? && settings.share_type!=''>
                <#include "layout/share/${settings.share_type}.ftl">
            </#if>
        </div>
    </div>
    <div class="card" id="comment-wrapper">
        <div class="card-content">
            <h3 class="title is-5 has-text-weight-normal">评论</h3>
            <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
            <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
            <halo-comment id="2" type="sheet"/>
        </div>
    </div>
</@layout>