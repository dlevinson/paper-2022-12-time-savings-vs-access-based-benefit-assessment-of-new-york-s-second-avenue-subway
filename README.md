# Time Savings Vs Access-Based Benefit Assessment Of New York's Second Avenue Subway

Data and code package for:

Wang, Y., & Levinson, D. M. (2022). Time Savings Vs Access-Based Benefit Assessment Of New York's Second Avenue Subway. Journal of Benefit-Cost Analysis, 13(1), 120-147. https://doi.org/10.1017/bca.2022.3

## Status

Pipeline status: `PUBLIC-GITHUB-PACKAGE`

Yadi Wang supplied the Second Avenue Subway paper data folder on 2026-05-31. The package stages the paper-specific code, property/ridership tables, and compact locally constructed NYC accessibility scenario outputs used by the paper. Very large full-format accessibility scenario files are documented but excluded from this normal GitHub package. The published article itself is cited by DOI rather than redistributed in this repository.

## Included Files

- `code/Panel Data Regression.R`: panel regression script.
- `data/2019 Subway ridership Tables_UL.xlsx`: MTA subway ridership workbook.
- `data/property/*.csv`: property/rental/sales/access joined data tables.
- `data/accessibility/35620_tr_2014_0700-0859.csv` through `35620_tr_2017_0700-0859.csv`: compact locally supplied NYC accessibility scenario outputs.
- `data/accessibility/tr_30_2018_Simplified.csv`: simplified 2018 accessibility scenario output.
- `data/accessibility/2019tr_30_mins_Simplified.csv`: simplified 2019 accessibility scenario output extracted from the supplied full 2019 file.
- `data/accessibility/*DataDoc_all_LEHD.pdf`: source data documentation PDFs.
- `DATA_DICTIONARY.csv`, `ARCHIVE_MANIFEST.csv`, `CHECKSUMS.sha256`, and `EXCLUDED_LARGE_LOCAL_SCENARIO_FILES.md`.

## Excluded Large Local Scenario Files

The supplied folder also contains large full-format accessibility scenario files, including GeoPackage, zip, full CSV, and shapefile components. They are too large for ordinary GitHub storage and are excluded from this package. See `EXCLUDED_LARGE_LOCAL_SCENARIO_FILES.md`.

## License And Release Boundary

The public package boundary is the script, paper-specific derived/analysis tables, compact accessibility scenario outputs, documentation, and source-data provenance. Large full-format local accessibility scenario files remain in the local source folder and should be handled through GitHub Releases, Git LFS, or an external archive only if exact-file preservation becomes necessary. See `LICENSE.md`.

## Published Paper

The paper is available at https://doi.org/10.1017/bca.2022.3.
