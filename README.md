# bme3053c_final: MRI Brain Tumor Detection 

## background
This project uses brain MRI data from a [Kaggle dataset](https://www.kaggle.com/datasets/navoneel/brain-mri-images-for-brain-tumor-detection). The dataset contains 98 MRIs without brain tumors and 155 images with tumors. 
The code in this repository contains three methods used to for brain tumor detection: edge detection, image thresholding, and classification using a machine learning model created by transfer learning. These methods are separated by folder.

### Authors
*Alexandra Chertok, Henry Ching, Rishika Patel, Liz Vo*

# Installation and Usage Instructions
* for all methods: Download all files and ensure they are on the same MATLAB path.

### method 1: edge detection


### method 2: image thresholding


### method 3: machine learning

This folder contains three files: "image_classificaiton.mlx", "net.mat", and "squeeze_net_3.mlx".

* "net.mat" contains the saved pretrained convolutional neural network. It is loaded during execution of "image classification.mlx".
* "squeeze_net_3.mlx" contains auto-generated code from MATLAB's deep network deisgner. This code was used to train "net.mat".
* Open the file titled "image_classification.mlx".
    * change root to current path
    * run the entire file to view predicted labels for 9 images from the test set and a confusion matrix of model accuracy.
    * to view predicted label for a specific image, run section beginning at line 48
