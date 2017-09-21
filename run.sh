#git pull
#git reset --hard
#make
#az storage blob download-batch -s https://zhfzhmsra.blob.core.windows.net/upload/ -d ./ --pattern all_titles_clean.txt

#./fasttext nnSent ../models/model.bin ../corpus.txt 3

#./fasttext sent2vec -input train_docs.txt -output models/model -minCount 8 -dim 100 -epoch 9 -lr 0.2 -wordNgrams 2 -loss ns -neg 10 -thread 4 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 10000



#./fasttext sent2vec -input data/train_all_titles.txt -output models/train_all_titles.model -minCount 8 -dim 700 -epoch 9 -lr 0.2 -wordNgrams 2 -loss ns -neg 10 -thread 20 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 4000000

#./fasttext nnSent models/train_all_titles.model.bin data/candidate_all_titles.txt 10

./fasttext sent2vec -input data/train_all_titles.txt -output models/train_all_titles_Ngram3.model -minCount 8 -dim 700 -epoch 9 -lr 0.2 -wordNgrams 3 -loss ns -neg 10 -thread 20 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 4000000
./fasttext sent2vec -input data/train_all_descriptions.txt -output models/train_all_descriptions.model -minCount 8 -dim 700 -epoch 9 -lr 0.2 -wordNgrams 2 -loss ns -neg 10 -thread 20 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 4000000
./fasttext sent2vec -input data/train_all_content.txt -output models/train_all_content.model -minCount 8 -dim 700 -epoch 9 -lr 0.2 -wordNgrams 2 -loss ns -neg 10 -thread 20 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 4000000



#python wikiTokenize.py data/train_all_titles.txt > data/train_all_titles.tokens