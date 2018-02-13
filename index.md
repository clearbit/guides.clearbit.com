---
layout: default
---

{% for p in site.data.contentful.spaces.posts.post reversed %}

<div class="container mx-auto fit">
<h1>{{ p.title }}</h1>
{{ p.markdown | markdownify }}
</div>

{% endfor %}

