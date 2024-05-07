![Banner](https://raw.githubusercontent.com/dl4mia/.github/2024/img/DL4MIA_banner_2024.png)



# First steps


Welcome to the DL4MIA 2024 first exercise! In this set of exercises, we will ease out into the scientific use of Python for image analysis by manipulating a stack of images, saving and loading it. Additional optional exercises are available in the exercise sheet for those who are fast!


# DL4MIA 2023: 00 - First steps


In these first exercises of the Course, we will introduce a few tools that will be used throughout the week (git, conda, jupyter, numpy, tifffile).

## Content

1. Connection
2. Notes about using the VDI
3. Notes about the exercises

## Connection

The entire DL4MIA course exercises will take place in the VDI virtual machines. 

## Notes about using the VDI

Here are a few important notes about using the VDI:

- r2d2 is the IT account, if your username is not listed, click on “not listed?” and enter your username without the @external.fht.org.
- If you have trouble reaching the VDI (black screen then disconnection), let us know.
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
git clone  --recurse-submodules https://github.com/dl4mia/DL4MIA_2024.git
```

### Install mamba

Then let's run the setup script of the main environment to install `mamba` on the `/localscratch/` folder:

```bash
cd DL4MIA_2024
source setup.sh
```

What's `mamba`? If you've heard about `conda` then it is the same, just usually faster. It is a python environment and package manager that will help us install different sets of packages in parallel for each exercise.

### Test mamba

Close your terminal, and repo open it. Then run the following command:

```bash
mamba --version
```

### Set up the environment for the first step exercise

It is now time to turn to the first exercises! As for all other exercises, there is a setup script to run first. Please run the setup script to create the environment for these exercises and download data.

``` bash
cd 00_first_steps
source setup.sh
```

When you are ready to start the exercise, make sure you are in your base environment and then run jupyter lab.


## Exercises

The exercises are contained in the `00_Write_an_load_images.ipynb` notebook. Open it by typing the following command in your terminal:

```bash
$ jupyter lab
```

A new window should open in the browser. Click on the `00_Write_an_load_images.ipynb` notebook to open it and follow the exercises!

If you are done with the exercises, check-out the optional exercises on this page.

## (Optional) Load your own images

Try loading your own images, this will be useful for the project time at the end of the week.

