Resources
---------

The following resources may be helpful for getting started with your project. As always, google and stackoverflow will likely be needed to supplement this information when you run into specific problems:

-   R plotly graphics [reference](https://plot.ly/r/reference/)
-   Bubble map [example](https://plot.ly/r/bubble-maps/)
-   Bubble map [documentation](https://plot.ly/r/reference/#scattergeo)
-   Documentation for manipulating the visual representation of [markers](https://plot.ly/r/reference/#scattergeo-marker) on a bubble map
-   Scatterplot [documentation](https://plot.ly/r/reference/#scatter) (though your second plot **does not** have to be a scatter plot -- this is just an example)
-   Chart layout [documentation](https://plot.ly/r/reference/#layout)
-   RMarkdown [documentation](http://rmarkdown.rstudio.com/)


Using R Markdown
----------------

As a refresher from the previous assignment, you can embed an R code chunk by wrapping some R code with three back ticks (```` ``` ````) at the start and end of a code block.

<pre>
  ```&#123;r}
  x <- 1
  ```
</pre>
If you don't want the R code to appear in your document, you can simply include the `echo=FALSE` parameter.

<pre>
  ```&#123;r, echo=FALSE}
  # This would not be printed to your Markdown file once rendered.
  x <- 1
  ```
</pre>
Conversely, if you would like to show R code, but not actually execute it, the `eval=FALSE` parameter prevents the R code from actually running.
<pre>
  ```&#123;r eval=FALSE}
  # The variable x would not be created, but this would appear in your Markdown document for your user to see.
  x <- 1
  ```
</pre>

Create a gh-pages branch
------------------------

Similarly to last week, we'll create a `gh-pages` branch so that our final product can be posted on the web. Here's the syntax you'll want to use in your terminal:

<pre>
# Get into your repository
cd a6-mapping-shootings

# Add and commit changes to your current (master) branch
git add .
git commit -m "Commit message goes in here"

# Create and checkout a new branch called 'gh-pages'
git checkout -b gh-pages

# Push all changes (including your new branch) up to GitHub
git push --all
</pre>
You should now see your `index.html` file up on the web at 'your-username.github.io/a5-github-report'.
