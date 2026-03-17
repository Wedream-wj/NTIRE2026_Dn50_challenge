# [NTIRE 2026 Challenge on Image Denoising](https://cvlai.net/ntire/2026/) @ [CVPR 2026](https://cvpr.thecvf.com/)



The IW2M & JNU team's code in the NTIRE 2026 Image Denoising Challenge (noise level=50) track. ——team07

## Setup

```
pip install -r requirements.txt
```



## Download Weights

Place all three files (folder link: https://drive.google.com/file/d/1MMtyxPYCvhxpE5dnpHfhDIQ-3OtCkXOh/view?usp=drive_link ) in `model_zoo/team07_I2WM_JNU`:

| File            | Link                                                         |
| --------------- | ------------------------------------------------------------ |
| `restormer.pth` | [Download](https://drive.google.com/file/d/1MMtyxPYCvhxpE5dnpHfhDIQ-3OtCkXOh/view?usp=drive_link) |



## Run

```bash
# e.g.
CUDA_VISIBLE_DEVICES=7 python test_demo02.py --model_id 7 \
--data_dir datasets \
--save_dir results

# NVDIA H200推理大约需要0.5~1h左右
```



## Notice

请注意，该代码对 [test_demo.py](test_demo.py) 的forward函数（第92行）做了专门的修改。由于Restormer推理大尺寸会爆显存，因此在这里进行了适用性修改。如果长边小于2000=>直接推理；否则，tile = min(2000, h, w)，裁剪成重叠的tile进行推理， 重合度为80%tile。
