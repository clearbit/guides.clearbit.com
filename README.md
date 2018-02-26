# Sales Operations Manual

## Running locally

Start with a ruby development environment and Install LiveReload if you haven't
already. [Jekyll's installation guide](https://jekyllrb.com/docs/installation/)
has more detailed instructions.

```
bundle install
bundle exec jekyll serve --livereload
```

### Pulling content

We use Contentful as our CMS, by default we're not tracking or importing any
data. To get the latest content, pull it down from Contentful.

```
bundle exec jekyll contentful
```
