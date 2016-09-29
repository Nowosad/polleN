<!-- README.md is generated from README.Rmd. Please edit that file -->
Pollen
======

[![Build Status](https://travis-ci.org/Nowosad/pollen.png?branch=master)](https://travis-ci.org/Nowosad/pollen) <!--[![Coverage Status](https://img.shields.io/codecov/c/github/hadley/lubridate/master.svg)](https://codecov.io/github/hadley/lubridate?branch=master)--> <!--[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/lubridate)](https://cran.r-project.org/package=lubridate)--> <!--[![Development version](https://img.shields.io/badge/devel-1.5.0.9000-orange.svg)](https://github.com/hadley/lubridate)--> <!--[![CRAN version](http://www.r-pkg.org/badges/version/lubridate)](http://cran.r-project.org/package=lubridate)-->

Installation
------------

``` r
devtools::install_github("nowosad/pollen")
```

Examples
--------

``` r
library('pollen')

data('pollen_count')
head(pollen_count)
#>   site       date alder birch hazel
#> 1   Oz 2007-01-01     0     0     0
#> 2   Oz 2007-01-02     0     0     0
#> 3   Oz 2007-01-03     0     0     0
#> 4   Oz 2007-01-04     0     0     0
#> 5   Oz 2007-01-05     0     0     0
#> 6   Oz 2007-01-06     0     0     0

df <- subset(pollen_count, site=='Oz')
pollen_season(df, value="birch", date="date", method="95")
#>    year      start        end
#> 1  2007 2007-03-31 2007-05-03
#> 2  2008 2008-04-19 2008-05-07
#> 3  2009 2009-04-09 2009-05-09
#> 4  2010 2010-04-14 2010-05-07
#> 5  2011 2011-04-20 2011-05-17
#> 6  2012 2012-04-09 2012-05-14
#> 7  2013 2013-04-09 2013-05-09
#> 8  2014 2014-04-08 2014-05-10
#> 9  2015 2015-04-08 2015-04-30
#> 10 2016 2016-04-06 2016-05-09

df2 <- subset(pollen_count, site=='Atlantis')
pollen_season(df2, value="alder", date="date", method="95")
#>    year      start        end
#> 1  2007       <NA>       <NA>
#> 2  2008 2008-03-23 2008-04-14
#> 3  2009 2009-03-16 2009-04-03
#> 4  2010 2010-03-26 2010-04-07
#> 5  2011 2011-03-28 2011-04-14
#> 6  2012 2012-02-13 2012-04-05
#> 7  2013 2013-02-05 2013-03-16
#> 8  2014 2014-02-11 2014-04-29
#> 9  2015 2015-03-19 2015-04-04
#> 10 2016 2016-03-14 2016-04-23

library('purrr')
pollen_count %>% split(., .$site) %>% 
                map(~pollen_season(., value="hazel", date="date", method="95"))
#> $Atlantis
#>    year      start        end
#> 1  2007 2007-01-29 2007-03-19
#> 2  2008 2008-03-23 2008-04-14
#> 3  2009 2009-03-15 2009-04-11
#> 4  2010 2010-03-24 2010-04-14
#> 5  2011 2011-03-26 2011-04-12
#> 6  2012 2012-01-21 2012-03-26
#> 7  2013 2013-02-02 2013-03-29
#> 8  2014 2014-02-07 2014-04-09
#> 9  2015 2015-03-01 2015-03-30
#> 10 2016 2016-03-11 2016-04-06
#> 
#> $`Hundred Acre Wood`
#>    year      start        end
#> 1  2007 2007-01-29 2007-03-31
#> 2  2008 2008-03-10 2008-05-10
#> 3  2009 2009-02-08 2009-03-31
#> 4  2010 2010-01-24 2010-04-16
#> 5  2011 2011-03-25 2011-04-16
#> 6  2012 2012-01-10 2012-03-29
#> 7  2013 2013-01-24 2013-03-12
#> 8  2014 2014-03-04 2014-03-31
#> 9  2015 2015-02-26 2015-03-31
#> 10 2016 2016-02-06 2016-03-31
#> 
#> $Oz
#>    year      start        end
#> 1  2007 2007-02-03 2007-03-18
#> 2  2008 2008-03-10 2008-04-03
#> 3  2009 2009-02-17 2009-03-26
#> 4  2010 2010-03-18 2010-04-10
#> 5  2011 2011-03-27 2011-04-13
#> 6  2012 2012-01-12 2012-03-14
#> 7  2013 2013-01-22 2013-03-25
#> 8  2014 2014-03-05 2014-04-05
#> 9  2015 2015-03-19 2015-04-02
#> 10 2016 2016-03-10 2016-03-30
#> 
#> $Shire
#>    year      start        end
#> 1  2007 2007-01-28 2007-03-24
#> 2  2008 2008-02-22 2008-04-01
#> 3  2009 2009-02-03 2009-03-27
#> 4  2010 2010-02-07 2010-04-07
#> 5  2011 2011-02-20 2011-04-12
#> 6  2012 2012-01-10 2012-03-18
#> 7  2013 2013-01-21 2013-03-02
#> 8  2014 2014-03-01 2014-03-27
#> 9  2015 2015-02-19 2015-03-30
#> 10 2016 2016-01-17 2016-03-28
```
