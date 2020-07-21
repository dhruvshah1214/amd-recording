DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir /home/ec2-user/amd
mkdir /home/ec2-user/amd/recordings/

bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/ec2-user/miniconda3
/home/ec2-user/miniconda3/bin/conda init
yes "" | /home/ec2-user/miniconda3/bin/conda install -c conda-forge librosa
yes "" | /home/ec2-user/miniconda3/bin/conda install numpy

yes "" | /home/ec2-user/miniconda3/bin/pip install pyst2
yes "" | /home/ec2-user/miniconda3/bin/pip install numba==0.48

cp $DIR/* /home/ec2-user/amd/
