# run this from /home/vagrant/kmax using "source setup.sh"

sudo apt-get install git python-setuptools python-dev swig g++ -y

if [ ! -d pylockfile ]; then
  git clone https://github.com/openstack/pylockfile
  cd pylockfile
  git checkout 99870bfa02f1ba490da6a59b1499f0f1578c9825
  python setup.py install --user
  cd ..
fi

if [ ! -d enum34-1.0 ]; then
  wget https://pypi.python.org/packages/source/e/enum34/enum34-1.0.tar.gz#md5=9d57f5454c70c11707998ea26c1b0a7c
  tar -xzvf enum34-1.0.tar.gz
  rm enum34-1.0.tar.gz
  cd enum34-1.0
  python setup.py install --user
  cd ..
fi

if [ ! -d pycudd2.0.2 ]; then
  wget http://bears.ece.ucsb.edu/ftp/pub/pycudd2.0/pycudd2.0.2.tar.gz
  tar -xzvf pycudd2.0.2.tar.gz
  rm pycudd2.0.2.tar.gz
  cd pycudd2.0.2/cudd-2.4.2
  cp ../../cudd-2.4.2-Makefile Makefile
  make
  make libso
  cd ../pycudd
  make FLAGS="-I /usr/include/python2.7/ -fPIC"
  cd ../..
fi

cd kmax/kconfig
make
cd ../kbuild
make
cd ../..

mkdir -p scratch data
source env.sh
