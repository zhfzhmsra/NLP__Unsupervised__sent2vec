git pull
git reset --hard
make
az storage blob download-batch -s https://zhfzhmsra.blob.core.windows.net/upload/ -d ./ --pattern all_titles_clean.txt

#./fasttext nnSent ../models/model.bin ../corpus.txt 3

#./fasttext sent2vec -input train_docs.txt -output models/model -minCount 8 -dim 100 -epoch 9 -lr 0.2 -wordNgrams 2 -loss ns -neg 10 -thread 4 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 10000



python wikiTokenize.py data/train_all_titles.txt > data/train_all_titles.tokens