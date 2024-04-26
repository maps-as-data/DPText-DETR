<h1 align="center"> DPText-DETR: Towards Better Scene Text Detection with Dynamic Points in Transformer </h1> 

<p align="center">
<a href="https://arxiv.org/pdf/2207.04491v2.pdf"><img src="https://img.shields.io/badge/arXiv-Paper-<color>"></a>
<a href="https://paperswithcode.com/sota/scene-text-detection-on-total-text?p=dptext-detr-towards-better-scene-text"><img src="https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/dptext-detr-towards-better-scene-text/scene-text-detection-on-total-text"></a>
<a href="https://paperswithcode.com/sota/scene-text-detection-on-scut-ctw1500?p=dptext-detr-towards-better-scene-text"><img src="https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/dptext-detr-towards-better-scene-text/scene-text-detection-on-scut-ctw1500"></a>
</p>

<p align="center">
  <a href="#Introduction">Introduction</a> |
  <a href="#Updates">Updates</a> |
  <a href="#Main Results">Main Results</a> |
  <a href="#Usage">Usage</a> |
  <a href="#Citation">Citation</a> |
  <a href="#Acknowledgment">Acknowledgement</a>
</p >
This is the official repo for the paper "DPText-DETR: Towards Better Scene Text Detection with Dynamic Points in Transformer", which is accepted to AAAI 2023.

## Introduction

<img src="./figs/dptext_detr.jpg" alt="image" style="zoom:50%;" />

**Abstract.** Recently, Transformer-based methods, which predict polygon points or Bezier curve control points for localizing texts, are popular in scene text detection. However, these methods built upon detection transformer framework might achieve sub-optimal training efficiency and performance due to coarse positional query modeling. In addition, the point label form exploited in previous works implies the reading order of humans, which impedes the detection robustness from our observation. To address these challenges, this paper proposes a concise Dynamic Point Text DEtection TRansformer network, termed DPText-DETR. In detail, DPText-DETR directly leverages explicit point coordinates to generate position queries and dynamically updates them in a progressive way. Moreover, to improve the spatial inductive bias of non-local self-attention in Transformer, we present an Enhanced Factorized Self-Attention module which provides point queries within each instance with circular shape guidance. Furthermore, we design a simple yet effective positional label form to tackle the side effect of the previous form. To further evaluate the impact of different label forms on the detection robustness in real-world scenario, we establish an Inverse-Text test set containing 500 manually labeled images. Extensive experiments prove the high training efficiency, robustness, and state-of-the-art performance of our method on popular benchmarks.

## Updates
`[Apr.04, 2024]` Repo forked from [main repo](https://github.com/ymy-k/DPText-DETR/tree/main). **This fork may not reflect changes in the main repo from this point.**

`[Mar.07, 2023]` The code and models of our latest work DeepSolo (CVPR 2023, [Code](https://github.com/ViTAE-Transformer/DeepSolo)) are released. :fire::fire:

`[Nov.29, 2022]` The code and models are released. The Arxiv version paper is updated.

`[Jul.12, 2022]` Inverse-Text is available.

`[Jul.10, 2022]`The paper is submitted to ArXiv. Inverse-Text test set will be available very soon. Work in progress.

## Main Results

|Benchmark|Backbone|Precision|Recall|F-measure|Pre-trained Model|Fine-tuned Model|
|:------:|:------:|:------:|:------:|:------:|:------:|:------:|
|Total-Text|Res50|91.8|86.4|89.0|[OneDrive](https://1drv.ms/u/s!AimBgYV7JjTlgccGbLGc9wYB-CGfpg?e=kpyje7)/[Baidu](https://pan.baidu.com/s/1MatDxMtAc2HhI56otNQ3pA)(osxo)|[OneDrive](https://1drv.ms/u/s!AimBgYV7JjTlgccKyruwWCE09pdxnA?e=sMx7fq)/[Baidu](https://pan.baidu.com/s/1Vs69ZGp9HeJzGqptupx3uw)(p268)|
|CTW1500|Res50|91.7|86.2|88.8|*The same as above* ↑|[OneDrive](https://1drv.ms/u/s!AimBgYV7JjTlgccJzxovPI8jwlbDzg?e=IUAYHv)/[Baidu](https://pan.baidu.com/s/1a5eUHOwK1udHSD3ZP21TdA)(disp)|
|ICDAR19 ArT|Res50|83.0|73.7|78.1|[OneDrive](https://1drv.ms/u/s!AimBgYV7JjTlgccH_WYEdZc5oXPCTw?e=ZluxqK)/[Baidu](https://pan.baidu.com/s/1GAWyJIL-d3MEW0hWKYfArA)(7sfe)|[OneDrive](https://1drv.ms/u/s!AimBgYV7JjTlgccIHXZbf1NmAVtczg?e=1wuJzE)/[Baidu](https://pan.baidu.com/s/1MNngf_vJlSsqgbHKf6K-bA)(z8if)|

## Installation
```
git clone https://github.com/ymy-k/DPText-DETR.git
cd DPText-DETR
pip install .
```

## Citation

If you find DPText-DETR useful in your research, please consider citing:
```bibtex
@inproceedings{ye2022dptext,
  title={DPText-DETR: Towards Better Scene Text Detection with Dynamic Points in Transformer},
  author={Ye, Maoyuan and Zhang, Jing and Zhao, Shanshan and Liu, Juhua and Du, Bo and Tao, Dacheng},
  booktitle={Proceedings of the AAAI Conference on Artificial Intelligence},
  volume={37},
  number={3},
  pages={3241--3249},
  year={2023}
}
```

## Acknowledgement

DPText-DETR is inspired a lot by [Deformable DETR](https://github.com/fundamentalvision/Deformable-DETR), [DAB-DETR](https://github.com/IDEA-opensource/DAB-DETR), and [TESTR](https://github.com/mlpc-ucsd/TESTR). Thanks for their great works!
