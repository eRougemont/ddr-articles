echo \<list\>
srcdir=*.xml
for srcfile in $srcdir
do
  echo  \<file\>$srcfile\</file\>
done
echo \</list\>

