<#if is_post?? || is_sheet?? || is_photos?? >
<script src="${theme_base!}/source/plugins/lightGallery/lightgallery.js" defer></script>
<script src="//cdn.jsdelivr.net/npm/justifiedGallery@3.7.0/dist/js/jquery.justifiedGallery.min.js" defer></script>
<script src="${theme_base!}/source/js/gallery.js" defer></script>
<#if settings.gallery_plus!true>
<script src="${theme_base!}/source/plugins/lightGallery/plugins/lg-fullscreen.js" defer></script>
<script src="${theme_base!}/source/plugins/lightGallery/plugins/lg-zoom.js" defer></script>
</#if>
</#if>