cd /home/vagrant/kmax/kmax
python analysis/collect_buildsystem.py -g -B 4.14.13 x86
cd ../data
rm kconfig_4.14.13x86 everycfile_4.14.13.txt
mv unit_pc_4.14.13x86.txt linux-4.14.13-x86.txt
cd /home/vagrant/kmax/
