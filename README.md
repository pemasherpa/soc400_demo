###The data for this demo was obtained from [Gun Violence Archive](http://www.gunviolencearchive.org/reports/mass-shootings/2015)

Resources
---------

-   R plotly graphics [reference](https://plot.ly/r/reference/)
-   Bubble map [example](https://plot.ly/r/bubble-maps/)
-   Bubble map [documentation](https://plot.ly/r/reference/#scattergeo)
-   Documentation for manipulating the visual representation of [markers](https://plot.ly/r/reference/#scattergeo-marker) on a bubble map
-   Scatterplot [documentation](https://plot.ly/r/reference/#scatter) (though your second plot **does not** have to be a scatter plot -- this is just an example)
-   Chart layout [documentation](https://plot.ly/r/reference/#layout)
-   RMarkdown [documentation](http://rmarkdown.rstudio.com/)


Create a gh-pages branch
------------------------

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
