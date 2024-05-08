![Banner](https://raw.githubusercontent.com/dl4mia/.github/2024/img/DL4MIA_banner_2024.png)



# First steps


Welcome to the DL4MIA 2024 first exercise! In this set of exercises, we will set up the VDI!

# DL4MIA 2023: 00 - First steps


The entire DL4MIA course exercises will take place in the VDI virtual machines. 

## Notes about using the VDI

Here are a few important notes about using the VDI:<br />
- First, how to find it <br />
![Screenshot 2024-05-07 at 16 41 33](https://github.com/dl4mia/00_first_steps/assets/16350783/01a9a844-14db-465a-b227-6f400982c01a)
<br />

- Log in using your username and password and select EMBO-DL4MIA machine.
- If you have trouble reaching the VDI (black screen then disconnection), let us know.
- Open a terminal <br />
<img width="316" alt="Screenshot 2024-05-08 at 09 43 52" src="https://github.com/dl4mia/00_first_steps/assets/16350783/93aca7ee-6110-4404-bc67-3f2db904c94d"> <br />

- Your `/home/` (the folder with your name in it) is on the central storage, which is very slow. We have access to a faster storage `/localscratch/` that you can use for the exercises!
- We also have a place to share data in `/group/dl4miacourse/`, be aware that permissions should be set so that other people can access it. Ask the tutors!


## Notes about the exercises

All exercises for the course can be found in the [**DL4MIA**](https://github.com/dl4mia/DL4MIA_2024/tree/main). Each repository has an exercise sheet detailing the instructions for downloading and installing the exercises.


## Setup


### Clone all the course exercises

Open the [**main DL4MIA repository**](https://github.com/dl4mia/DL4MIA_2024/tree/main). Let's follow the instructions there to set up the exercises,
open your terminal and type:

```bash
cd /localscratch/
git clone --recurse-submodules https://github.com/dl4mia/DL4MIA_2024.git
```

### Install mamba

Then let's run the setup script of the main environment to install `mamba` on the `/localscratch/` folder:

```bash
cd DL4MIA_2024
source setup.sh
```

What's `mamba`? If you've heard about `conda` then it is the same, just usually faster. It is a python environment and package manager that will help us install different sets of packages in parallel for each exercise.

### Test mamba

Restart terminal by typing 
```bash
exec bash
```
Use the following command to make sure mamba is indeed in `localscratch` folder 
```bash
whereis mamba
```
### Important point
Don't try to shut down the machine ! <br />
<img width="312" alt="Screenshot 2024-05-08 at 09 54 36" src="https://github.com/dl4mia/00_first_steps/assets/16350783/fcf7af09-f645-4bbe-a904-fa88e85f92cc">


