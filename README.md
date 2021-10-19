# `theme_bray`


## Description

R package implementing a `ggplot2` theme matching my LaTeX theme.


## Installation

``` r
devtools::install_github("fr-pscz/theme_bray")
```

## Dependencies

* `ggplot2` for plots
* `DepthProc` for `ddplot`

## Usage

After installation, the theme can be initialized with:

``` r
start_bray()
```
New plots will follow the theme.
To revert back to `ggplot2` defaults (since `start_bray()` updates geoms to match the dark background, but they won't be legible on light backgrounds) call:

``` r
end_bray()
```

## New functions

### `ddplot`

Bringing `DepthProc`'s `ddPlot` to the `ggplot2` ecosystem. In addition to enhanced theme capabilities, it supports point coloring depending on generating distribution.

#### Example

```r
# Start theme without horizontal grid lines
start_bray(gridh = FALSE)

# Plot ddplot with two bivariate normals
# X ~ Norm(0,10) colored in white
# Y ~ Norm(0,1)  colored in gold
p <- ddplot(X,Y,colory=TRUE)
show(p)
```
![ddplot](https://user-images.githubusercontent.com/21090470/137966446-c059c0f6-f47a-4e25-ac66-2ce7bf158e71.png)

