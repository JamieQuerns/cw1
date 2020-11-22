#! /bin/bash

echo "Running test_script"
echo "--------------------------------------------"
if  java Dec2Hex -5
then
echo "Failed. Application accepted negative number"
else
echo "Passed. Application rejected negative number"
fi
echo "--------------------------------------------"
if java Dec2Hex 3000
then
echo "Passed. Application accepted positive integer"
else
echo "Failed. Application rejected positive integer"
fi
echo "--------------------------------------------"
if  java Dec2Hex @
then
echo "Failed. Application accepted non integer"
else
echo "Passed. Application rejeceted non integer"
fi
echo "--------------------------------------------"
if  java Dec2Hex A
then
echo "Failed. Application accepted character - should be integer only"
else
echo "Passed. Application rejeceted character"
fi
echo "------"
echo "test_script complete"
