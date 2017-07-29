# assignment-2-steganography-cse-cyber-security
assignment-2-steganography-cse-cyber-security created by GitHub Classroom

## Assignment Description
The aim of this assignment is to implement the simple LSB Steganography. In this, the LSBs of the pixels are used to store the bit. By changing the last bit, there is no significant change in the quality or structure of the image. So it can be used to store the data.

## Notes
- This assignment used the 2nd plane of the RGB image.
- The **Stego** image is stored in **Portable Network Graphics** or .png format for lossless data compression.(If file is saved as .jpg, it may lose some data due to lossy compression technique).

## How to run?
- First run the Steganography.m file to hide the message.
- Message will be hidden in test.png file and a key will be generated to retrieve the message.
- Run the Steganography_decode.m file to retrieve the message. Enter the key on prompt to get the hidden message.
