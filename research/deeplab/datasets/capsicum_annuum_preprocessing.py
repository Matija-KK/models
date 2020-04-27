import os
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from cv2 import cv2

class data_preprocessing():
  def __init__(self):
    pass




  def increase_brightness(self, img, value=30):
    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    h, s, v = cv2.split(hsv)

    lim = 255 - value
    v[v > lim] = 255
    v[v <= lim] += value

    final_hsv = cv2.merge((h, s, v))
    img = cv2.cvtColor(final_hsv, cv2.COLOR_HSV2BGR)
    return img


  def create_directory(self, dir_path):
    if not os.path.exists(dir_path):
      try:
        os.makedirs(dir_path)
        print('Directory {} is created.'.format(dir_path.split('/')[-1]))
      except OSError as error:
        print(error)
    else:
      print('Directory {} already exists.'.format(dir_path.split('/')[-1]))













if __name__ == '__main__':
  data = data_preprocessing()