# Connect from your personal computer to another computer

This is a typical user case when we need to work with a computer server to perform data analysis etc but not physically in front of the machine. Rather we connect to it from another machine, say a personal laptop.

Here we introduce in brief a few methods to connect and work with remote computers. I'll call it "host" for the remote computer,
and "guest" for the computer through which you connect to the host.

## Through command shell

### Get IP address

First, obtain the IP address or domain name of the host computer. You may either be provided with the information,
or you can run in command terminal (for a Linux host):

```
sudo ifconfig 
```

to see the IP address. For example:

```
$ sudo ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.0.105  netmask 255.255.255.0  broadcast 192.168.0.255
        inet6 fe80::ae1f:6bff:fe11:ab10  prefixlen 64  scopeid 0x20<link>
        ether ac:1f:6b:11:ab:10  txqueuelen 1000  (Ethernet)
        RX packets 123292  bytes 105881116 (100.9 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 130328  bytes 41654696 (39.7 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0xc7200000-c727ffff

eth1: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether ac:1f:6b:11:ab:11  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0xc7100000-c717ffff
```

The information you should be looking at is the `inet` property under `eth0`, which in our case is `192.168.0.105` 
(this is the IP address in my local network domain).

### Connect via SSH

On the guest computer, type

```
ssh username@192.168.0.105
```

where `username` is the account name you have on the host machine. Please replace `192.168.0.105` with your IP address.
If it fails, it might be possible that your host machine does not support
SSH access. In that case you need to install SSH server on your host. For a Debian / Ubuntu host:

```
sudo apt-get install openssh-server
```

If you want to be able to use graphical interface for apps on your host, for example use `firefox` to browse internet from host, you need to
connect through `-X` option, eg,

```
ssh -X username@192.168.0.105
```

#### Create a user on the host machine

If you do not have a user account on the host, ask whoever administrates that machine to create one for you. He / she can use the command below:

```
username=hxl
group=docker # another option is `www-data` group, for a web server
cd /home
sudo useradd -g $group $username -d /home/$username -m -s /bin/bash
sudo passwd $username
sudo cp .bash_profile .bash_prompt /home/$username
sudo echo 'export LC_ALL="en_US.UTF-8"' >> /home/$username/.bashrc
sudo chown $username.$group -R /home/$username
```

You'll be prompt to enter password. This will add user `hxl` to `docker` group.

Notice the line `cp .bash_profile .bash_prompt /home/$username` -- I put a couple of template configuration files under `/home` folder to copy to a new account. This will make the terminal prompt look better.

## Through JupyterLab

### Install JupyterLab on host

If you are a JupyterLab user you probably already have JupyterLab running on the host, or at least knows how to install it. 
If not, [this page](jupyter-setup) contains the commands to set it up.

### If the host is a regular desktop computer

#### Start JupyterLab server on host

First you need to connect to the host via SSH. Please open a new terminal to connect. Details see section above.

Once you are connected to host, type this line:

```
jupyter-lab --no-browser &
```

You should see lots of output. Of relevance is some lines like this:

```
[C 12:40:51.496 LabApp] 
    
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=1a90c5465f3295c8354a6e2365b961e88affb880559f51cb
```

Once you see it you know the JupyterLab server is up and running (on the background on the remote host). There are two important piece of information you need to keep:

1. The port number the JupyterLab server is to be accessed: `8888`
2. The token (password): `1a90c5465f3295c8354a6e2365b961e88affb880559f51cb`

The port number and token can be different every time you connect.

At this point you can hit `enter` key to bring yourself back to the terminal, then type `exit` to quit the host. It is very important to quit properly!

#### Connect to host JupyterLab from guest

On your guest machine, type:

```
ssh -NL 1828:localhost:8888 username@192.168.0.105
```

where:

1. `8888` is the port number you see in the previous step on the host. Replace it with what you actually see.
2. `username` is your username on the host, replace it with your username
3. `192.168.0.105` is my host IP address, see previous section on SSH connections. Replace it with the actual IP of your host computer.
4. `1828` is a port number you assign on your guest machine to map to host JupyterLab server port. It can be a random number like this, or like `2888`, `3888`, `6666` as long is they are not being used by other apps on your computer. Just type in any 4-digits number. The command will complain and fail if the port you choose is not available. 

Hit `enter`, you might be asked to enter password. After that, nothing will show up. Do not worry it is a good sign!

### If the host is a cluster system

At least for University of Chicago clusters we can connect to a compute node on it directly using SSH tunnel. 
We can run JupyterLab on compute nodes and connect to it directly via SSH tunnel, along the lines of [this post](http://ipyrad.readthedocs.io/HPC_Tunnel.html). It does not involve running anything on the login node.

[This script](https://github.com/gaow/misc/blob/master/bash/jupyterlab.sbatch) works for UChicago RCC midway HPC. [Here are instructions](https://github.com/gaow/misc/blob/master/bash/README.md#jupyterlab-server-on-cluster-via-ssh-tunnel).


### Use command terminal from within JupyterLab

The "Launcher" page of JupyterLab has a few types of items to launch:

- Notebook
- Console
- Terminal

We typically launch a `Notebook`, but the other two are also very useful. For example to get yourself a conventional command terminal you just click on `Terminal` then you'll be brought to the command terminal. You can also try to create a Bash `Console`. It is like something in between terminal and notebook. Sometimes you might find it more user-friendly.

## Through vscode

[`vscode`](https://code.visualstudio.com/) is my text editor of choice. I use this [extension](https://marketplace.visualstudio.com/items?itemName=mkloubert.vscode-remote-workspace#user-content-install-) to connect to remote computer. Workspace configuration example:

```json
{
    "folders": [{
        "uri": "sftp://gaow:statgen@205.208.52.221/home/gaow",
        "name": "My office computer"
    }]
}
```

## Through Rstudio server

(to be updated)