Usage
=====
1. Copy all sequential photos in the folder with the two scripts
2. Adjust iterations in `link.sh` according to how long you want the final video to be (10 is a good value for 11 pictures with 5 frames/second)
3. Run `link.sh` to create symlinks to the original photos (this way, the video repeats the number of iterations)
4. Run `animate.sh` to create the video based on the original photos and the symlinks