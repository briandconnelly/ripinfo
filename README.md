# ripinfo

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![BSD License](https://img.shields.io/badge/license-BSD-brightgreen.svg)](https://opensource.org/licenses/BSD-2-Clause)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ripinfo)](https://cran.r-project.org/package=ripinfo)


## Overview

This package provides a (very) lightweight interface to the [ipinfo.io](https://ipinfo.io) API, which provides organizational and geographical information about IP addresses.


## Installation

ripinfo is not currently available on [CRAN](http://cran.r-project.org), but you can use [devtools](http://cran.r-project.org/web/packages/devtools/index.html) to install the current development version:
                                                                                
```r                                                                           
    if(!require("devtools")) install.packages("devtools")
    devtools::install_github("briandconnelly/ripinfo")
```

## Example

Here, we'll get information about a [Google Public DNS](https://developers.google.com/speed/public-dns/) IP Address:

```r
library(ripinfo)

ipinfo(ip = "8.8.8.8")

```

```
$ip
[1] "8.8.8.8"

$hostname
[1] "google-public-dns-a.google.com"

$city
[1] "Mountain View"

$region
[1] "California"

$country
[1] "US"

$loc
[1] "37.3860,-122.0840"

$org
[1] "AS15169 Google Inc."

$postal
[1] "94035"

$phone
[1] "650"
```


## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md).
By participating in this project in any way, you agree to abide by its terms.
