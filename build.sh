echo "Clearing old tar..."
rm SamuelTheme.tar > /dev/null 2>&1

echo "Making directories..."
mkdir build-tmp
mkdir build-tmp/components
mkdir build-tmp/fonts
mkdir build-tmp/img

echo "Copying main styles and manifest..."
cp fonts.css build-tmp/fonts.css
cp theme.css build-tmp/theme.css
cp manifest.json build-tmp/manifest.json

echo "Copying other styles, images, and fonts..."
cp -r components/ build-tmp/components/
cp -r fonts/ build-tmp/fonts/
cp -r img/ build-tmp/img/

cd build-tmp

echo "Archiving..."
tar cf ../SamuelTheme.tar . 

cd - > /dev/null 2>&1
rm -R build-tmp
echo "Cleaning build temp files..."