pjax-rails-example
==================

This is a simple, working implementation of Pjax on a vanilla rails app. Based off of Chris Wanstrath's [PJAX](https://github.com/defunkt/jquery-pjax)


JS
```html
<script type="text/javascript">
	$(document).pjax('a[data-pjax]', '[data-pjax-container]')
</script>
```

ERB
```html
<h2>
	Cat In The Hat
</h2>
<p>
	To show the page is not reloading: <%= Time.now %>
</p>

<a href="/book/beginning" data-pjax >Beginning</a>
<a href="/book/middle" data-pjax >Middle</a>
<a href="/book/end" data-pjax >End</a>

<div data-pjax-container >
	<%= yield %>
</div>

<script type="text/javascript">
	$(document).pjax('a[data-pjax]', '[data-pjax-container]')
</script>
```