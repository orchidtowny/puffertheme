echo "Clearing old tar..."
rm SamuelTheme.tar > /dev/null 2>&1

echo "Making directories..."
mkdir build-tmp

echo "Compiling custom CSS..."
touch build-tmp/custom.css

echo " e "
echo " e "
echo " e "

ls
mkdir build-tmp/css-tmp
find custom -name 'custom/*.css' -type f -exec cp {} build-tmp/css-tmp/ \;
find custom -name 'custom/componments/*.css' -type f -exec cp {} build-tmp/css-tmp/ \;
find custom -name 'custom/fonts/*.css' -type f -exec cp {} build-tmp/css-tmp/ \;
find custom -name 'custom/img/*.png' -type f -exec cp {} build-tmp/css-tmp/ \;

echo " e "
echo " e "
echo " e "

cd build-tmp

echo "Copying manifest..."
cp -r ../manifest.json manifest.json

echo "Archiving..."
tar cf ../SamuelTheme . 

cd - > /dev/null 2>&1
#rm -R build-tmp
echo "Cleaning build temp files..."

echo "Renaming archive..."
mv SamuelTheme SamuelTheme.tar