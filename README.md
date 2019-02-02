# blogger-comments
Utilities for scraping G+ blogger comments

## Usage
`./savepostlist.sh http://yourblog.com`

This parses your blog (it's messy, it pulls down quite a lot of content to do this), and identifies things that appear to be posts, of the form: `http://yourblog.com/<year>/<mo>/<title>.html'

`./wgetWidgetsForPostList.sh`

This command uses the embeddable G+ comment widget, which finds related posts. It then wgets these into the work/widgets directory, so you have a record of each for all of your blog posts.

## Warning

This is not all of the comments. The comment widget uses dynamic JS calls to expand the comment list, so this approach (for now) is lossy.
