# Sales Operations Manual

## Running locally

Start with a ruby development environment and Install LiveReload if you haven't
already. [Jekyll's installation guide](https://jekyllrb.com/docs/installation/)
has more detailed instructions.

```
bundle install
bundle exec jekyll contentful # if you don't have a _site or _data file locally
bundle exec jekyll serve --livereload
```

### Pulling content

We use Contentful as our CMS, by default we're not tracking or importing any
data. To get the latest content, pull it down from Contentful.

```
bundle exec jekyll contentful
```

### Debugging

If you run into an error when trying to serve locally such as the following:

```
jekyll 3.7.3 | Error:  undefined method `each' for nil:NilClass
```

It's probably due to a lack of local content. Follow the instructions under 
Pulling content above and try again.
