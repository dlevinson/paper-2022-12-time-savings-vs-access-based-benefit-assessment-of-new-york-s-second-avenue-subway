# Time Savings Vs Access-Based Benefit Assessment Of New York's Second Avenue Subway

Data and code package for:

Wang, Y., & Levinson, D. M. (2022). Time Savings Vs Access-Based Benefit Assessment Of New York's Second Avenue Subway. Journal of Benefit-Cost Analysis, 13(1), 120-147. https://doi.org/10.1017/bca.2022.3

## Status

Pipeline status: `PUBLIC-GITHUB-PACKAGE`

Yadi Wang supplied the Second Avenue Subway paper data folder on 2026-05-31. The package stages the paper-specific code and manageable public/derived data files. Very large public accessibility-source files are documented but excluded from this normal GitHub package. The published article itself is cited by DOI rather than redistributed in this repository.

## Included Files

- `code/Panel Data Regression.R`: panel regression script.
- `data/2019 Subway ridership Tables_UL.xlsx`: MTA subway ridership workbook.
- `data/property/*.csv`: property/rental/sales/access joined data tables.
- `data/accessibility/35620_tr_2014_0700-0859.csv` through `35620_tr_2017_0700-0859.csv`: Access Across America accessibility extracts.
- `data/accessibility/tr_30_2018_Simplified.csv`: simplified 2018 accessibility extract.
- `data/accessibility/*DataDoc_all_LEHD.pdf`: source data documentation PDFs.
- `DATA_DICTIONARY.csv`, `ARCHIVE_MANIFEST.csv`, `CHECKSUMS.sha256`, and `EXCLUDED_LARGE_PUBLIC_SOURCE_FILES.md`.

## Excluded Large Public Source Files

The supplied folder also contains large accessibility source files, including GeoPackage and zip files from the University of Minnesota Accessibility Observatory. They are too large for ordinary GitHub storage and are excluded from this package. See `EXCLUDED_LARGE_PUBLIC_SOURCE_FILES.md`.

## License And Release Boundary

The public package boundary is the script, paper-specific derived/analysis tables, manageable source extracts, documentation, and source-data provenance. Large public source archives should remain cited/reconstructable from their public source rather than copied into this repository. See `LICENSE.md`.

## Published Paper

The paper is available at https://doi.org/10.1017/bca.2022.3.
