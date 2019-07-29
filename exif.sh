PATH=$PATH:/exiv2/build/bin/
echo "Running"

FILES=/images/images/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  exiv2 -ea- /images/image.jpg | exiv2 -ia- $f
done
