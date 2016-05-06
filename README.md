# Publication

The purpose of the publication gem is to make it easy to 'write once, read anywhere'.

Publication is an opinionated workflow wrapper around [pandoc](http://pandoc.org/README) for documents written in pandoc-flavored markdown.

# Easily publish to multiple targets

There are plenty of competing standards for markup and documentation.

Luckily, pandoc works with a variety of popular targets:

* html
* pdf
* epub
* latex

Using this gem, you can maintain a single set of content that isn't coupled to any particular publication target.

# Usage

```
gem install publication
publication init
...
# Write your docs here
...
publication publish
```

For complete usage, see

```
publication help
```
