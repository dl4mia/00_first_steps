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

If your connection to the VDI is slow, the window might seem unresponsive. In this case, we recommend using **[port forwarding](https://www.notion.so/DL4MIA-2023-00-First-steps-6cf90dfbd9a6419ab9772b695c0e001e?pvs=21).** In such case:

- In order to use SSH port forwarding, you need to be connected to the VPN.
- The VDI machine can only be reached if you are still logged in (VMWare can be closed, but you should not have logged out).
- If you logged out from the machine, you will need to start VMWare again.
- If you logged out, the IP address might change. You will need to repeat the procedure from the **connection tutorial**.

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

## (Optional) Port-forward notebooks from the VDI

If the VDI interface is too slow, you might have better experience forwarding only the `jupyter notebook` data to your computer, rather than the whole VDI interface. To do so, we need to connect to the VPN and create an encrypted tunnel between your **local machine** and the **remote VDI**, all the while **port forwarding** the jupyter data. 

1. First, make sure you are connected to the **VPN** and that you know the **current IP address** of your virtual machine.
2. Close the jupyter server (`CTRL` + `c` ) in the terminal window that you used to start it.
3. Set a password (important when you send data over the internet):
    
    ```bash
    $ jupyter notebook password
    ```
    
    Enter an easy to remember password.
    
4. Restart the jupyter server using the following command:
    
    ```bash
    $ jupyter notebook --no-browser --port=8888 --ip 0.0.0.0
    ```
    
    This runs the `jupyter notebook` headless on the local port 8888.
    
5. In your local terminal (on your own computer), connect to the VDI machine via SSH using the port forwarding flag:
    
    ```bash
    $ ssh <user.name>@<ip> -L 8888:localhost:8888
    ```
    
    where `[user.name](http://user.name)` is your username and `ip` is the IP obtained during the **connection tutorial**. If the IP changed (for instance if you logged out the VDI), refer to the tutorial to get the new one.
    
    `-L` allows sending the information from a remote port to a local port. Here basically the parameters are `<local port>:<remote host>:<remote port>`. So if you started your `jupyter notebook` on the VDI on port `8889`, you should type `8888:localhost:8889`. 
    
    > **Note**: if you are already running a `jupyter notebook` locally, the port `8888` will be taken, and you will have to specify another local port: `8890:localhost:8888` (where the VDI jupyter port is 8888, and the local port 8890).
    > 
    
6. Finally, on your local browser, connect to
    
    *[**http://localhost:8888](http://localhost:8888)*** 
    
    where 8888 is the `local port` (if you did the `ssh` port forwarding with another local port number, then you will have to update the link accordingly.
