git pull
git reset --hard
make
az storage blob download-batch -s https://zhfzhmsra.blob.core.windows.net/upload/ -d ./ --pattern all_titles_clean.txt

#./fasttext nnSent models/all_titles_model.bin.bin all_titles_tokens.txt 3

#./fasttext sent2vec -input all_titles_tokens.txt -output models/all_titles_model.bin -minCount 8 -dim 700 -epoch 9 -lr 0.2 -wordNgrams 2 -loss ns -neg 10 -thread 20 -t 0.000005 -dropoutK 4 -minCountLabel 20 -bucket 4000000



python wikiTokenize.py data/train_all_titles.txt > data/train_all_titles.tokens