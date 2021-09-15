date
mkdir ../result
cd demo1
bash script.sh
mkdir ../../results/demo1
mv layer* ../../results/demo1
cd ../
cd demo2
bash script.sh
mkdir ../../results/demo2
mv layer* ../../results/demo2
cd ../
cd demo2-2
bash script.sh
mkdir ../../results/demo2-2
mv layer* ../../results/demo2-2
cd ../
date
