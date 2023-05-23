# One-Shot Face Recognition Problem

This repository focuses on solving the one-shot face recognition problem using an experimental approach. Face recognition has always been one of the hottest topics in computer vision for decades. It is extremely useful in real-world applications, such as security, surveillance, robotics, etc. With the advanced algorithm development in computer vision, more and better methods have been proposed to address challenging face recognition problem, such as poor lighting, different facial poses, occlusions, etc. 

## Problem Description
The problem involves training a computer program with only one face image per subject and then using this program to recognize the remaining face images of these subjects. A public face database containing multiple face images from 100 subjects is utilized for this purpose. The images captured under diverse conditions pose a significant challenge for accurate recognition

## Approach and Models

To tackle the one-shot face recognition problem, this repository explores the use of the following pretrained deep network models:

- **Multitask Neural Network (MTCNN)**: Used for face detection and alignment.
- **VGG-Face**: Pretrained model employed for feature extraction.

These models are leveraged to examine their performance in the one-sample-per-person face recognition scenario.

## Data Preparation

Data augmentation techniques are applied to address the limited number of images per person, enhancing representation across different illuminations and poses. Images are resized to [224,224,3] dimensions to facilitate feature extraction. Various data augmentation methods, including rotation, saturation, and brightness adjustment, are employed to generate additional instances.
<img src="https://github.com/lakshmi-shravya/Facerecognition/assets/89875894/28a6ad12-9a57-495e-bf41-ed51a93e1927" alt="drawing" width="400" height="200"/>


## Face Recognition Pipeline
<img src="https://github.com/lakshmi-shravya/Facerecognition/assets/89875894/9e408570-ce7b-4c7a-a729-510d8bc13f36" alt="drawing" width="700" height="200"/>

The face recognition pipeline consists of the following steps:

1. **Face Detection and Alignment**: MTCNN is utilized to detect and align faces in the images.
<img src="https://github.com/lakshmi-shravya/Facerecognition/assets/89875894/a015434a-2124-4b63-a3c3-2edd9443e459" alt="drawing" width="200" height="200"/>

3. **Feature Extraction**: The VGG-Face pretrained model is employed to extract facial features.
<img src="https://github.com/lakshmi-shravya/Facerecognition/assets/89875894/f012331f-66e7-4af4-b710-74c9c270e00b" alt="drawing" width="400" height="200"/>


5. **Training**: The extracted features are used to train the face recognition model.
<img src="https://github.com/lakshmi-shravya/Facerecognition/assets/89875894/239313af-66a6-4aa5-ae1a-0773594b5734" alt="drawing" width="400" height="300"/>



## Results

The baseline method, which employs a template matching approach, achieves an accuracy of 27.53%. In comparison, the proposed method utilizing deep learning techniques achieves an accuracy of 66.79%. While the proposed method outperforms the baseline, it falls short when compared to state-of-the-art methods in the domain. Further research is recommended to explore the applicability of deep learning for face recognition, particularly in the context of preprocessing techniques when dealing with one-instance-per-person problems.
