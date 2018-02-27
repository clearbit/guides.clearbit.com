---
layout: default
title: Clearbit Guides
---

{% assign posts = site.data.posts.post %}
{% assign sorted_posts = posts | sort: 'created_at' | reverse %}

{% for p in sorted_posts %}

<div class="cms pt2 pt3-m pt4-l">
<time class="gray avenir f6-5" datetime="{{ p.created_at | date: "%Y-%m-%d" }}">{{ p.created_at | date: "%d %B %Y" }}</time>
<h1 class="f3 f2-m f1-l mt2">
<a href="/posts/{{ p.title | slugify }}/">
{{ p.title }}
</a>
</h1>
</div>

{{ p.markdown | markdownify }}

{% endfor %}

