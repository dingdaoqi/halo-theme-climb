<#include "../plugin/animejs.ftl">
<#include "../plugin/gallery.ftl">
<#include "../plugin/outdated-browser.ftl">
<#include "../plugin/mathjax.ftl">
<#include "../plugin/back-to-top.ftl">
<#include "../plugin/sakura.ftl">
<#include "../plugin/snow.ftl">

<#if settings.sidebar_toc?? && settings.sidebar_toc != 'none'>
    <script src="${theme_base!}/source/js/toc.js"></script>
</#if>
<script src="${theme_base!}/source/js/main.js"></script>