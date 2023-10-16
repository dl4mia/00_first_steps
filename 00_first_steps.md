# DL4MIA 2023: 00 - First steps

**[Return to the Welcome page](https://tinyurl.com/33y2b2hk)**

In these first exercises of the Course, we will introduce a few tools that will be used throughout the week (git, conda, jupyter, numpy, tifffile).

## Content

1. Connection
2. Notes about using the VDI
3. Notes about the exercises

## Connection

The entire DL4MIA course exercises will take place in the VDI virtual machines. If you haven’t done so before, follow the **connection tutorial**.

Otherwise, connect to the your VDI using VMWare.

## Notes about using the VDI

Here are a few important notes about using the VDI:

- r2d2 is the IT account, if your username is not listed, click on “not listed?” and enter your username without the @external.fht.org.
- You do not need to be connected by VPN to use the VDI.
- If you have trouble reaching the VDI (black screen then disconnection), let us know. In the meantime, you can use the **http interface.**
- You do not need to log out from your VDI, you can simply close VMWare.
- If you log out, all unsaved progress will not be saved. Saved documents will still be in the same state. Logging out causes the VDI machine to be destroyed, while all your saved files are living in your `/home/` space somewhere else.
- The VDI machine can only be reached if you are still logged in (VMWare can be closed, but you should not have logged out).

## Notes about the exercises

All exercises for the course can be found in the [**DL4MIA**](https://github.com/dl4mia) github organization page. Each repository has an exercise sheet detailing the instructions for downloading and installing the exercises.

For now, we will follow the first set of exercises from this repository:

## Clone the repository

1. On your virtual machine, open a terminal.
2. Navigate to the DL4MIA folder (this folder was created in the connection tutorial):
    
    ```bash
    $ cd DL4MIA
    ```
    
    `cd` means change directory
    
3. Check that you are indeed in the DL4MIA folder:
    
    ```bash
    $ pwd
    ```
    
    where `pwd` stands for *print working directory*.
    
4. Download the exercises by cloning the repository:
    
    ```bash
    $ git clone https://github.com/dl4mia/00_first_steps
    ```
    
    Git is a version control software, which is widely used to track changes and share software.
    
5. Check that you see the cloned repository `00_first_steps`:
    
    ```bash
    $ ls
    ```
    
    where `ls` stands for *list*.
    
6. Finally, navigate to the new folder:
    
    ```bash
    $ cd 00_first_steps
    ```
    

Now we are ready to create our first `conda` environment.

## Creating a conda environment

Conda is a powerful tool that allows installing all the packages necessary to run a certain Python pipeline within a boxed environment. This prevents installing incompatible package versions (or even Python versions!) when using different pipelines / projects. In this course, you will learn how to install a Conda environment for a specific project and how to switch between them.

1. Open your terminal
2. Create a new `conda` environment with the following command:
    
    ```bash
    $ conda create -n 00_fs python==3.9
    ```
    
    Press `Enter` or write `y`
    
3. After creating a new `env`, you need to activate it.
    
    ```bash
    $ conda activate 00_fs 
    ```
    
4. Now that the env is activated, can you tell the difference between your command line header? Do you see the name of the environment? That means that now every python and conda action will be performed within this boxed environment and will only affect this environment.
5. Let’s now install `jupyter notebook`, which is the tool we will use throughout this course to run Python code.
    
    ```bash
    $ pip install jupyter
    ```
    
6. Finally, we will need some packages for the first set of exercises. Another dependency solver tool that is widely used to install packages is `pip`. Let’s install packages with pip:
    
    ```bash
    $ pip install numpy scipy matplotlib tifffile itkwidgets
    ```
    

We can now start the exercises!

## Exercises: Reading and writing images in Python

The exercises are contained in the `00_Write_an_load_images.ipynb` notebook. Open it by typing the following command in your terminal:

```bash
$ jupyter notebook
```

A new window should open in the browser. Click on the `00_Write_an_load_images.ipynb` notebook to open it and follow the exercises!

If you are done with the exercises, check-out the optional exercises on this page.

## (Optional) Load your own images

Try loading your own images, this will be useful for the project time at the end of the week.
