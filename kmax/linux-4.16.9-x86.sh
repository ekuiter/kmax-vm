cd /home/vagrant/kmax/kmax
python analysis/collect_buildsystem.py -g -B 4.16.9 x86
cd ../data
rm kconfig_4.16.9x86 everycfile_4.16.9.txt
mv unit_pc_4.16.9x86.txt linux-4.16.9-x86.txt
cd /home/vagrant/kmax/
