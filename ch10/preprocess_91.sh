# Preprocess/binarize the data
# TEXT=examples/translation/iwslt14.tokenized.de-en
TEXT=prep
fairseq-preprocess --source-lang de --target-lang en \
  --trainpref $TEXT/train.de-en --validpref $TEXT/valid.de-en --testpref $TEXT/test.de-en\
  --destdir data-bin/iwslt14.tokenized.de-en \
  --workers 20
