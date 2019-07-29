PATH=$PATH:/exiv2/build/bin/
echo "Running"
exiv2 -ea- /images/image.jpg | exiv2 -ia- /images/image2.jpg
