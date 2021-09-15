date
mkdir ../result
cd demo1
bash script.sh
mkdir ../../result/demo1
mv layer* ../../result/demo1
cd ../
cd demo2
bash script.sh
mkdir ../../result/demo2
mv layer* ../../result/demo2
cd ../
cd demo2-2
bash script.sh
mkdir ../../result/demo2-2
mv layer* ../../result/demo2-2
cd ../
date
