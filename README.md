# Visual Crypto Attack Simulation

This is an implementation of Fake Image Reconstruction attack on the existing model of Image Encryption using Visual Cryptography. The model followed is (2,3) Visual Cryptography where in each image is broken down into 3 shares and the superimposition of any 2 recreates the image. This can be easily generalised to a (k,n) model without major changes.

-> The MakeShare function is used to break the image into noise-like shares which on superimposing produce the original image.

-> The Cheat function takes a fake image as a parameter and modifies certain shares to produce a Fake Grid (FG). This when treated as a share and superimposed with other shares reconstructs the fake image instead of the original one.
