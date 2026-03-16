# run test
CUDA_VISIBLE_DEVICES=0 python test_demo.py --model_id 7 \
--data_dir YOUR_DATA_DIR \
--save_dir YOUR_SAVE_DIR

# e.g.
CUDA_VISIBLE_DEVICES=7 python test_demo02.py --model_id 7 \
--data_dir datasets \
--save_dir results

# Nvidia H200推理大约需要0.5~1h左右


