#!/bin/bash

## Geotiff

# Extracting tiles from a GeoTIFF dataset.
#

raw=${HOME}/sea/bathymetry/ETOPO1_Bed_c_geotiff.tif
tiles=${HOME}/sea/bathymetry/tiles/tile
stride=18
offset=0
for i in {-10..9}; do
	for j in {-5..4}; do
		cell=-$((i+10))-$((j+5))
		xmin=$((stride*i))
		ymin=$((stride*j+offset))
		xmax=$((stride*(i+1)))
		ymax=$((stride*(j+1)+offset))
		echo $xmin $ymin $xmax $ymax $cell
		gdalwarp -overwrite -r cubicspline -te $xmin $ymin $xmax $ymax $raw $tiles$cell.tif
		gdal_translate -ot UInt16 -scale -10000 10000 0 20000 -of ENVI $tiles$cell.tif $tiles$cell.raw
		gdal_translate -ot UInt16 -scale -of ENVI $tiles$cell.tif $tiles$cell.raw
	done
done

