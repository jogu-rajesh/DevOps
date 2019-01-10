# DevOps word
DevOps freshers test work
DevOps_Fresher_Test
JOGU RAJESH
gundu0618@gmail.com
cloud- AWS
TOOL – Ansible-2.7.5
instances- ubuntu-16.04 -3(2+1(ansible nodes+ ansible master node(server))
vpn-server- for security of nodes
Task-1-------- Create two EC2 Instances in AWS Cloud
➢ 1 first i created a vpc called ansiblevpc
➢ 2 created two subnets Private and Public subnets
➢ 3 created a custom ami by adding- a user called user1 and password for password less
authentication to the ansible-server
➢ 4 created a openvpn server for easy acces of servers and for not using PUBLIC IPS more
➢ 5 lanched 3 instance using my custom ami because in aws ami are note comes with
passwordless authentication so i created a ami for own from ubuntu 16.04 LTS
TASK-2 ------ INSTALLNG Ansible and packages
➢ 6 from 3 node i install ansible-2.7.5
➢ 7 added my public key to the nodes ssh-copy-id user1@10.0.0.93 and user1@10.0.0.87
➢ 8 added hosts in inventory as [test] and [test:var] for ansible is not supported by
python3 by default so i added pyhthon3 interpreter
➢ 9 created a task.sh file i which our all packages are there in the form of commands
➢ 10 created playbook.yml file with two tasks
➢ 11 first task is to copy task.sh file to the all host in test group
➢ 12 second task is tha to execute that commands
➢ 13 ansible-playbook playbook.yml
➢ 14 i executed withou any error
