# Excluded Large Local Scenario Files

The supplied `Second_Ave_paper` folder includes large full-format NYC accessibility scenario files that are not suitable for ordinary GitHub storage. These are treated as locally supplied paper scenario outputs, not as generic public Accessibility Observatory files.

Excluded examples:

- `Accessibility_Data/35620_transit_accessibility_data_2018_geopackage.zip` (~685 MB)
- `Accessibility_Data/35620_transit_accessibility_data_2019_geopackage.zip` (~690 MB)
- `Accessibility_Data/35620_transit_accessibility_data_2018_geopackage/35620_tr_2018_0700-0859-avg.gpkg` (~1.9 GB)
- `Accessibility_Data/35620_transit_accessibility_data_2019_geopackage/35620_tr_2019_0700-0859-avg.gpkg` (~1.9 GB)
- `Accessibility_Data/tr_30_2018.csv` (~226 MB)
- `Accessibility_Data/35620_transit_accessibility_data_2019_geopackage/2019tr_30_mins.csv` (~226 MB)

The repository retains manageable CSV extracts, simplified 2018 and 2019 accessibility scenario outputs, and documentation PDFs. Large full-format scenario files remain in the local source folder and should be handled through a release asset, Git LFS, or an external archive only if exact-file preservation becomes necessary.
