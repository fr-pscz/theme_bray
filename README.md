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
