# List of packages to install
packages <- c(
  "r6",
  "R6",
  "Rcpp",
  "backports",
  "base64enc",
  "bslib",
  "cachem",
  "checkmate",
  "cli",
  "commonmark",
  "digest",
  "ellipsis",
  "evaluate",
  "fastmap",
  "fontawesome",
  "fs",
  "glue",
  "highr",
  "htmltools",
  "htmlwidgets",
  "httpuv",
  "jquerylib",
  "jsonlite",
  "knitr",
  "later",
  "learnr",
  "lifecycle",
  "magrittr",
  "markdown",
  "memoise",
  "mime",
  "promises",
  "rappdirs",
  "renv",
  "rlang",
  "rmarkdown",
  "rprojroot",
  "sass",
  "shiny",
  "sourcetools",
  "stringi",
  "stringr",
  "tinytex",
  "vctrs",
  "withr",
  "xfun",
  "xtable",
  "yaml"
)

# Install packages if they are not already installed
install_if_missing <- function(package) {
  if (!require(package, character.only = TRUE)) {
    install.packages(package, dependencies = TRUE)
  }
}

# Loop through the list and install each package
invisible(lapply(packages, install_if_missing))

# Optionally, load the packages after installation
invisible(lapply(packages, library, character.only = TRUE))