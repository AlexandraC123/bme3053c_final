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
* The first method of trial for the project is edge detection. The goal of edge detection is to detect the boundaries of a tumor that could possibly be in a MRI image that the user inputs. The boundaries are used to fill in the closed region, representing the tumor, so that visualizing it can be easier.

* The user should run the code using the run button and they will be prompted to enter the name of the image from the Kaggle database without the extension format. The code then applies edge detection to the image and three figures will apear. In the third figure, the edges of the brain and any objects in the image will be dilated.
* To finish the process, the user has to apply masking to the image to define the region of interest. To do this, the user will have to click 8 points around the desired area (encapsulating the tumor) inside of the brain. Masking eliminates the boundary of the brain so that it is no longer considered for the rest of the edge detection and so that the only portion considered is the regon of interest. Lastly, the closed region detected is filled in to clearly distinguish the tumor in the MRI. 

### method 2: image thresholding
* The second method of trial for the project is image thresholding. This code used the area of a tumor to determine the total number of tumors present in the brain based on user’s input of MRI scan. The functions imread and size were used to read and store the image size in their respective variables. The area was calculated by using the function imshow and data tips from the figure options; the radius was found from the X and Y coordinates and plugged into the equation area of tumor equals pi times radius squared. The data tips option gave the RGB values of any pixel on the image so the range for all of the color matrices for the brain tumor was declared as RGB>=164 and RGB<=246. Then each pixel was that fell in that range was counted and finally the total number of pixels was divided by the area to print the total number of tumors present in the MRI scan.  

### method 3: machine learning

This folder contains three files: "image_classificaiton.mlx", "net.mat", and "squeeze_net_3.mlx".

* "net.mat" contains the saved pretrained convolutional neural network that was trained using transfer learning. It is loaded during execution of "image classification.mlx".
* "squeeze_net_3.mlx" contains auto-generated code from MATLAB's deep network deisgner. This code was used to train "net.mat".
* Open the file titled "image_classification.mlx".
    * change root to current path
    * run the entire file to view predicted labels for 9 images from the test set and a confusion matrix of model accuracy
    * to view predicted label for a specific image, run section beginning at line 48 (ensuring that the folder containing the image is on the correct MATLAB path)
  
