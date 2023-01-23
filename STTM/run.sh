STTM_PATH=$PWD

DATA_PATH=$PWD/dataset



#rm $STTM_PATH/results/*

## DMM algorithm for Tweet Dataset
Algorithm=DMMinf
Dataset=Tweet
iter=50


K=89

#for times in {1..20}; do
#
#	java -jar jar/STTM.jar -model $Algorithm -alpha 0.1 -beta 0.1 -ntopics $K -corpus $DATA_PATH/Tweet.txt -name $Algorithm-$Dataset-$times -niters 50
#
#done

#java -jar jar/STTM.jar -model ClusteringEval -label $DATA_PATH/Tweet_LABEL.txt -dir results -prob theta
java -jar jar/STTM.jar -model $Algorithm -paras $STTM_PATH/results/DMM-Tweet-1.paras -corpus $DATA_PATH/instagram_comments.txt -niters 100 -name InstagramTopics