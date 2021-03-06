## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Diagram](https://github.com/tli85/Cybersecurity/blob/main/BootCampProjectOne/Images/Project1Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the configuration file may be used to install only certain pieces of it, such as Filebeat.

[ELK Playbook](https://github.com/tli85/Cybersecurity/blob/main/Ansible/elk-playbook.yml)  

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system services.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| Web-1    | Webserver| 10.0.0.7   | Linux            |
| Web-2    | Webserver| 10.0.0.6   | Linux            |
| ELK      |Datalogger| 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

Machines within the network can only be accessed by SSH.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | Personal Workstation |
| JB to Web| No                  | 10.0.0.4             |
| Port 80  | Yes                 | Personal Workstation |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because allows for less mistakes, is very quick, and streamlines the process for future machines.

The playbook implements the following tasks:
- Installs docker.io, making it force update and always start on boot.
- Installs python3-pip
- Installs docker module
- Increases Virtual Memory used
- Downloads and Launches a docker ELK container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[Docker ps](https://github.com/tli85/Cybersecurity/blob/main/BootCampProjectOne/Images/Project1ElkContainer.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.7
10.0.0.6

We have installed the following Beats on these machines:
Filebeat,
Metricbeat

These Beats allow us to collect the following information from each machine:
Filebeat monitors log files or locations, collects log events, and forwards them to ELK stack.
Metricbeat monitors servers by collecting metrics from the system and services running on the server.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook file to ansible.
- Update the hosts file to include the IP address of the machine, placing it into the [elk] category.
- Run the playbook, and navigate to http://<ELK.VM.EXTERNAL.IP>:5601/app/kibana to check that the installation worked as expected.

