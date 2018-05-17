cd /home/vagrant/kmax/scratch
wget https://busybox.net/downloads/busybox-1.25.0.tar.bz2
tar -xvjf busybox-1.25.0.tar.bz2
rm busybox-1.25.0.tar.bz2
cd ../kmax
python scripts/busybox_configs.py -B ../scratch/busybox-1.25.0/
cp ../scratch/busybox-1.25.0/unit_pc ../data/busybox-1.25.0.txt
rm -rf ../scratch/busybox-1.25.0/
cd /home/vagrant/kmax/
