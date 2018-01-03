echo "Reformating to png...";
mogrify -background none -format png -density 2000 *.svg;

echo "Scaling to 32x32 image...";
mogrify -scale 32 *.png;

echo "Sharpening image...";
mogrify -sharpen 0x3 *.png

echo "Scaling to 16x16 image...";
mogrify -scale 16 *.png;

echo "Scaling to big icons...";
mogrify -scale 320 *.png;

echo "Moving to subdirectory..."
mkdir png
mv *.png ./png/


echo "Formating to svg..."
cd ./png/
mogrify -format svg *.png
rm *.png

echo "DONE !"
