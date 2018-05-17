cd /home/vagrant/kmax/scratch
wget https://git.busybox.net/busybox/snapshot/busybox-1_28_stable.tar.gz
tar -xvzf busybox-1_28_stable.tar.gz
rm busybox-1_28_stable.tar.gz
cd ../kmax
python scripts/busybox_configs.py -B ../scratch/busybox-1_28_stable/
cp ../scratch/busybox-1_28_stable/unit_pc ../data/busybox-1_28_stable.txt
rm -rf ../scratch/busybox-1_28_stable/
cd /home/vagrant/kmax/
