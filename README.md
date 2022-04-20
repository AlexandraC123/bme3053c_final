# bme3053c_final: MRI Brain Tumor Detection 

## background
This project uses brain MRI data from a [Kaggle dataset](https://www.kaggle.com/datasets/navoneel/brain-mri-images-for-brain-tumor-detection). The dataset contains 98 MRIs without brain tumors and 155 images with tumors. 

The code in this repository contains three methods used to for brain tumor detection: edge detection, image thresholding, and classification using a machine learning model created by transfer learning. These methods are separated by folder.

### Authors
*Alexandra Chertok, Henry Ching, Rishika Patel, Liz Vo*

*Team name: BME Enthusiasts*

# Installation and Usage Instructions
* for all methods: Download all files and ensure that all folders and subfolders are on the same MATLAB path.

### method 1: edge detection
The first method of trial for the project is edge detection. The goal of edge detection is to detect the boundaries of a tumor that could possibly be in a MRI image that the user inputs. The boundaries are used to fill in the closed region, representing the tumor, so that visualizing it can be easier. First, the code prompts the user to enter the name of the image from the Kaggle database without the extension format. Then the image is loaded into a variable and inspected. The canny filter was used to detect the edges of the tumor because images of the brain tend to have excess noise and this can create weak edges. The canny filter is not affect by these factors. While the edges are detected, they are not defined so the code applies a dilation method to emphasize the edges and this helps to better visualize the tumor. In the case of this project, all of the images from the Kaggle database showed the boundary of the brain and this can interfere with the boundaries that the code accounts for. To fix this, the code prompts the user to click 8 points around the desired area (encapsulating the tumor) inside of the brain. This method is called masking and it eliminates the boundary of the brain so that it is no longer considered for the rest of the edge detection. Lastly, the closed region detected is filled in to clearly distinguish the tumor in the MRI. 


### method 2: image thresholding


### method 3: machine learning

This folder contains three files: "image_classificaiton.mlx", "net.mat", and "squeeze_net_3.mlx".

* "net.mat" contains the saved pretrained convolutional neural network. It is loaded during execution of "image classification.mlx".
* "squeeze_net_3.mlx" contains auto-generated code from MATLAB's deep network deisgner. This code was used to train "net.mat".
* Open the file titled "image_classification.mlx".
    * change root to current path
    * run the entire file to view predicted labels for 9 images from the test set and a confusion matrix of model accuracy
    * to view predicted label for a specific image, run section beginning at line 48
