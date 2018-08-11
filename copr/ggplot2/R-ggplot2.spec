%define debug_package %{nil}
%global packname  ggplot2
%global rlibdir  %{_libdir}/R/library


Name:             R-%{packname}
Version:          3.0.0
Release:          2%{?dist}
Summary:          Create Elegant Data Visualisations Using the Grammar of Graphics

Group:            Applications/Engineering 
License:          GPL-2 | file LICENSE
URL:              https://cran.r-project.org/web/packages/%{packname}/index.html
Source0:          https://cran.r-project.org/src/contrib/%{packname}_%{version}.tar.gz
BuildRoot:        %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

# tbh lazy deps resolution == all R packages that are installed on a working system, regardless of if necessary
Requires:         libxml2
Requires:         openssl
Requires:         tex(latex)
Requires:         R
Requires:         R-ALL
Requires:         R-AnnotationDbi
Requires:         R-BSgenome
Requires:         R-BSgenome.Celegans.UCSC.ce2
Requires:         R-Biobase
Requires:         R-BiocGenerics
Requires:         R-BiocParallel
Requires:         R-Biostrings
Requires:         R-BufferedMatrix
Requires:         R-BufferedMatrixMethods
Requires:         R-COPASI
Requires:         R-DBI
Requires:         R-DelayedArray
Requires:         R-DynDoc
Requires:         R-GeneR
Requires:         R-GenomeInfoDb
Requires:         R-GenomeInfoDbData
Requires:         R-GenomicAlignments
Requires:         R-GenomicFeatures
Requires:         R-GenomicRanges
Requires:         R-IRanges
Requires:         R-R6
Requires:         R-RCurl
Requires:         R-RInside
Requires:         R-RInside-examples
Requires:         R-RM2
Requires:         R-ROC
Requires:         R-RODBC
Requires:         R-RSQLite
Requires:         R-RUnit
Requires:         R-Rcompression
Requires:         R-Rcpp
Requires:         R-Rcpp-examples
Requires:         R-Rsamtools
Requires:         R-Rsolid
Requires:         R-S4Vectors
Requires:         R-SEDML
Requires:         R-SummarizedExperiment
Requires:         R-TH-data
Requires:         R-XML
Requires:         R-XVector
Requires:         R-abind
Requires:         R-acepack
Requires:         R-affy
Requires:         R-affydata
Requires:         R-affyio
Requires:         R-assertthat
Requires:         R-backports
Requires:         R-base64enc
Requires:         R-biglm
Requires:         R-bindr
Requires:         R-bindrcpp
Requires:         R-biomaRt
Requires:         R-bitops
Requires:         R-caTools
Requires:         R-callr
Requires:         R-car
Requires:         R-clipr
Requires:         R-combinat
Requires:         R-core
Requires:         R-crayon
Requires:         R-curl
Requires:         R-devel
Requires:         R-dichromat
Requires:         R-digest
Requires:         R-evaluate
Requires:         R-expm
Requires:         R-fibroEset
Requires:         R-futile.logger
Requires:         R-futile.options
Requires:         R-gtable
Requires:         R-hgu133acdf
Requires:         R-hgu95av2cdf
Requires:         R-hgu95av2probe
Requires:         R-highlight
Requires:         R-highr
Requires:         R-htmltools
Requires:         R-inline
Requires:         R-java
Requires:         R-jsonlite
Requires:         R-knitr
Requires:         R-labeling
Requires:         R-lambda.r
Requires:         R-lazyeval
Requires:         R-libSBML
Requires:         R-littler
Requires:         R-littler-examples
Requires:         R-lmtest
Requires:         R-lubridate
Requires:         R-mAr
Requires:         R-maanova
Requires:         R-magrittr
Requires:         R-markdown
Requires:         R-matrixStats
Requires:         R-memoise
Requires:         R-mime
Requires:         R-mnormt
Requires:         R-msm
Requires:         R-multcomp
Requires:         R-multtest
Requires:         R-mvtnorm
Requires:         R-nws
Requires:         R-openssl
Requires:         R-pkgconfig
Requires:         R-plogr
Requires:         R-pls
Requires:         R-plyr
Requires:         R-praise
Requires:         R-preprocessCore
Requires:         R-preprocessCore
Requires:         R-qcc
Requires:         R-qtl
Requires:         R-qvalue
Requires:         R-rematch
Requires:         R-reshape2
Requires:         R-rlang
Requires:         R-rlecuyer
Requires:         R-rprojroot
Requires:         R-rstudioapi
Requires:         R-rtracklayer
Requires:         R-sandwich
Requires:         R-sciplot
Requires:         R-selectr
Requires:         R-shogun
Requires:         R-snow
Requires:         R-statmod
Requires:         R-stringi
Requires:         R-stringr
Requires:         R-systemfit
Requires:         R-testthat
Requires:         R-timeDate
Requires:         R-tkWidgets
Requires:         R-viridisLite
Requires:         R-waveslim
Requires:         R-wavethresh
Requires:         R-whisker
Requires:         R-widgetTools
Requires:         R-xml2
Requires:         R-xtable
Requires:         R-yaml
Requires:         R-zoo

BuildRequires:    chrpath
BuildRequires:    findutils
BuildRequires:    libxml2-devel
BuildRequires:    openssl-devel
BuildRequires:    tex(latex)
BuildRequires:    R-BH-devel
BuildRequires:    R-Biostrings-devel
BuildRequires:    R-BufferedMatrix-devel
BuildRequires:    R-IRanges-devel
BuildRequires:    R-RInside-devel
BuildRequires:    R-Rcpp-devel
BuildRequires:    R-Rsamtools-devel
BuildRequires:    R-Rsolid-devel
BuildRequires:    R-S4Vectors-devel
BuildRequires:    R-XVector-devel
BuildRequires:    R-core-devel
BuildRequires:    R-devel
BuildRequires:    R-digest-devel
BuildRequires:    R-java-devel
BuildRequires:    R-mvtnorm-devel
BuildRequires:    R-plogr-devel
BuildRequires:    R-preprocessCore-devel
BuildRequires:    R-zoo-devel
BuildRequires:    R
BuildRequires:    R-ALL
BuildRequires:    R-AnnotationDbi
BuildRequires:    R-BSgenome
BuildRequires:    R-BSgenome.Celegans.UCSC.ce2
BuildRequires:    R-Biobase
BuildRequires:    R-BiocGenerics
BuildRequires:    R-BiocParallel
BuildRequires:    R-Biostrings
BuildRequires:    R-BufferedMatrix
BuildRequires:    R-BufferedMatrixMethods
BuildRequires:    R-COPASI
BuildRequires:    R-DBI
BuildRequires:    R-DelayedArray
BuildRequires:    R-DynDoc
BuildRequires:    R-GeneR
BuildRequires:    R-GenomeInfoDb
BuildRequires:    R-GenomeInfoDbData
BuildRequires:    R-GenomicAlignments
BuildRequires:    R-GenomicFeatures
BuildRequires:    R-GenomicRanges
BuildRequires:    R-IRanges
BuildRequires:    R-R6
BuildRequires:    R-RCurl
BuildRequires:    R-RInside
BuildRequires:    R-RInside-examples
BuildRequires:    R-RM2
BuildRequires:    R-ROC
BuildRequires:    R-RODBC
BuildRequires:    R-RSQLite
BuildRequires:    R-RUnit
BuildRequires:    R-Rcompression
BuildRequires:    R-Rcpp
BuildRequires:    R-Rcpp-examples
BuildRequires:    R-Rsamtools
BuildRequires:    R-Rsolid
BuildRequires:    R-S4Vectors
BuildRequires:    R-SEDML
BuildRequires:    R-SummarizedExperiment
BuildRequires:    R-TH-data
BuildRequires:    R-XML
BuildRequires:    R-XVector
BuildRequires:    R-abind
BuildRequires:    R-acepack
BuildRequires:    R-affy
BuildRequires:    R-affydata
BuildRequires:    R-affyio
BuildRequires:    R-assertthat
BuildRequires:    R-backports
BuildRequires:    R-base64enc
BuildRequires:    R-biglm
BuildRequires:    R-bindr
BuildRequires:    R-bindrcpp
BuildRequires:    R-bindrcpp-devel
BuildRequires:    R-biomaRt
BuildRequires:    R-bitops
BuildRequires:    R-caTools
BuildRequires:    R-callr
BuildRequires:    R-car
BuildRequires:    R-clipr
BuildRequires:    R-combinat
BuildRequires:    R-core
BuildRequires:    R-crayon
BuildRequires:    R-curl
BuildRequires:    R-devel
BuildRequires:    R-dichromat
BuildRequires:    R-digest
BuildRequires:    R-evaluate
BuildRequires:    R-expm
BuildRequires:    R-fibroEset
BuildRequires:    R-futile.logger
BuildRequires:    R-futile.options
BuildRequires:    R-gtable
BuildRequires:    R-hgu133acdf
BuildRequires:    R-hgu95av2cdf
BuildRequires:    R-hgu95av2probe
BuildRequires:    R-highlight
BuildRequires:    R-highr
BuildRequires:    R-htmltools
BuildRequires:    R-inline
BuildRequires:    R-java
BuildRequires:    R-jsonlite
BuildRequires:    R-knitr
BuildRequires:    R-labeling
BuildRequires:    R-lambda.r
BuildRequires:    R-lazyeval
BuildRequires:    R-libSBML
BuildRequires:    R-littler
BuildRequires:    R-littler-examples
BuildRequires:    R-lmtest
BuildRequires:    R-lubridate
BuildRequires:    R-mAr
BuildRequires:    R-maanova
BuildRequires:    R-magrittr
BuildRequires:    R-markdown
BuildRequires:    R-matrixStats
BuildRequires:    R-memoise
BuildRequires:    R-mime
BuildRequires:    R-mnormt
BuildRequires:    R-msm
BuildRequires:    R-multcomp
BuildRequires:    R-multtest
BuildRequires:    R-mvtnorm
BuildRequires:    R-nws
BuildRequires:    R-openssl
BuildRequires:    R-pkgconfig
BuildRequires:    R-plogr
BuildRequires:    R-pls
BuildRequires:    R-plyr
BuildRequires:    R-praise
BuildRequires:    R-preprocessCore
BuildRequires:    R-preprocessCore
BuildRequires:    R-qcc
BuildRequires:    R-qtl
BuildRequires:    R-qvalue
BuildRequires:    R-rematch
BuildRequires:    R-reshape2
BuildRequires:    R-rlang
BuildRequires:    R-rlecuyer
BuildRequires:    R-rprojroot
BuildRequires:    R-rstudioapi
BuildRequires:    R-rtracklayer
BuildRequires:    R-sandwich
BuildRequires:    R-sciplot
BuildRequires:    R-selectr
BuildRequires:    R-shogun
BuildRequires:    R-snow
BuildRequires:    R-statmod
BuildRequires:    R-stringi
BuildRequires:    R-stringr
BuildRequires:    R-systemfit
BuildRequires:    R-testthat
BuildRequires:    R-timeDate
BuildRequires:    R-tkWidgets
BuildRequires:    R-viridisLite
BuildRequires:    R-waveslim
BuildRequires:    R-wavethresh
BuildRequires:    R-whisker
BuildRequires:    R-widgetTools
BuildRequires:    R-xml2-devel
BuildRequires:    R-xtable
BuildRequires:    R-yaml
BuildRequires:    R-zoo

Provides: R-RColorBrewer
Provides: R-broom
Provides: R-cellranger
Provides: R-colorspace
Provides: R-dbplyr
Provides: R-dplyr
Provides: R-fansi
Provides: R-forcats
Provides: R-haven
Provides: R-hms
Provides: R-httr
Provides: R-modelr
Provides: R-munsell
Provides: R-pillar
Provides: R-purrr
Provides: R-readr
Provides: R-readxl
Provides: R-reprex
Provides: R-rmarkdown
Provides: R-rvest
Provides: R-scales
Provides: R-tibble
Provides: R-tidyr
Provides: R-tidyselect
Provides: R-tidyverse
Provides: R-tinytex
Provides: R-utf8
Provides: R-xfun

%description
A system for 'declaratively' creating graphics, based on "The Grammar of
Graphics". You provide the data, tell 'ggplot2' how to map variables to
aesthetics, what graphical primitives to use, and it takes care of the

%prep
%setup -q -c -n %{packname}

%build

%install
rm -rf %{buildroot}
mkdir -p %{buildroot}%{rlibdir}
%{_bindir}/echo 'install.packages("tidyverse", lib="%{buildroot}%{rlibdir}", repos="https://cran.r-project.org/")' | %{_bindir}/Rscript -
rm -f %{buildroot}%{rlibdir}/R.css
find %{buildroot}%{rlibdir} -type f -name "*.so" -exec strip {} \;


%check

%clean
rm -rf %{buildroot}

%files
%defattr(-, root, root, -)
%dir %{rlibdir}/%{packname}
%doc %{rlibdir}/%{packname}/doc
%doc %{rlibdir}/%{packname}/html
%doc %{rlibdir}/%{packname}/NEWS.md
%{rlibdir}/%{packname}/DESCRIPTION
%{rlibdir}/%{packname}/LICENSE
%{rlibdir}/%{packname}/CITATION
%{rlibdir}/%{packname}/INDEX
%{rlibdir}/%{packname}/NAMESPACE
%{rlibdir}/%{packname}/Meta
%{rlibdir}/%{packname}/R
%{rlibdir}/%{packname}/help
%{rlibdir}/%{packname}/data
# deps - bundling for efficiency, remove and add to RPM 'Requires' above once packaged in Fedora proper
%{rlibdir}/RColorBrewer
%{rlibdir}/broom
%{rlibdir}/cellranger
%{rlibdir}/colorspace
%{rlibdir}/dbplyr
%{rlibdir}/dplyr
%{rlibdir}/fansi
%{rlibdir}/forcats
%{rlibdir}/haven
%{rlibdir}/hms
%{rlibdir}/httr
%{rlibdir}/modelr
%{rlibdir}/munsell
%{rlibdir}/pillar
%{rlibdir}/purrr
%{rlibdir}/readr
%{rlibdir}/readxl
%{rlibdir}/reprex
%{rlibdir}/rmarkdown
%{rlibdir}/rvest
%{rlibdir}/scales
%{rlibdir}/tibble
%{rlibdir}/tidyr
%{rlibdir}/tidyselect
%{rlibdir}/tidyverse
%{rlibdir}/tinytex
%{rlibdir}/utf8
%{rlibdir}/xfun


%changelog
* Fri Aug 10 2018 David Goerger - 3.0.0-2
- deps fixups

* Mon Jul 09 2018 David Goerger - 3.0.0-1
- update to 3.0.0

* Mon Apr 02 2018 David Goerger - 2.2.1-2
- drop more bundled libs that are now packaged in Fedora proper

* Mon Nov 27 2017 David Goerger - 2.2.1-1
- update to 2.2.1
- remove bundled libs that are now packaged in Fedora proper

* Tue Dec 13 2016 David Goerger - 2.2.0-1
- initial package for Fedora
