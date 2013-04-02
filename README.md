pjax-rails-example
==================

This is a simple, working implementation of Pjax on a vanilla rails app. Based off of Chris Wanstrath's [PJAX](https://github.com/defunkt/jquery-pjax) just include the jquery.pjax.js file in your pipeline and start coding.

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
```

JS
```html
<script type="text/javascript">
	$(document).pjax('a[data-pjax]', '[data-pjax-container]')
</script>
```

Ruby
```ruby
class BookController < ApplicationController

  def beginning
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def middle
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def end
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

end
```

for more great reading checkout https://github.com/defunkt/jquery-pjax