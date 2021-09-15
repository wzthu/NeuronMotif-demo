date
mkdir ../result
cd demo1
bash script.sh
mkdir ../../result/demo1
cd ../
cd demo2
bash script.sh
mkdir ../../result/demo2
cd ../
cd demo2_2
bash script.sh
mkdir ../../result/demo2_2
cd ../
mv demo1/layer* ../result/demo1/
mv demo2/layer* ../result/demo2/
mv demo2_2/layer* ../result/demo2_2/
date
