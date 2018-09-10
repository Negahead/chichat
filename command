python -m nmt \
    --src=en --tgt=vi \
    --vocab_prefix=/home/will/Documents/nmt_data_shrinked/vocab  \
    --train_prefix=/home/will/Documents/nmt_data_shrinked/train \
    --dev_prefix=/home/will/Documents/nmt_data_shrinked/tst2012  \
    --test_prefix=/home/will/Documents/nmt_data_shrinked/tst2013 \
    --out_dir=/home/will/Documents/nmt_model \
    --num_train_steps=12000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu



python -m nmt \
    --out_dir=/home/will/Documents/nmt_model \
    --inference_input_file=/home/will/Documents/my_infer_file.en \
    --inference_output_file=/home/will/Documents/nmt_model/output_infer

# with attention
python -m nmt.nmt \
    --attention=scaled_luong \
    --src=qu --tgt=an \
    --vocab_prefix=/home/will/corpus/vocab  \
    --train_prefix=/home/will/corpus/train \
    --dev_prefix=/home/will/corpus/tst2012  \
    --test_prefix=/home/will/corpus/tst2013 \
    --out_dir=/home/will/nmt_attention_model \
    --num_train_steps=12000 \
    --steps_per_stats=100 \
    --num_layers=2 \
    --num_units=128 \
    --dropout=0.2 \
    --metrics=bleu
