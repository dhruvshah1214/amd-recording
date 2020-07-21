if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Please run as root (sudo)."
    exit
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir /home/ec2-user/amd
mkdir /home/ec2-user/amd/recordings/

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
/home/ec2-user/miniconda3/bin/conda init
yes "" | /home/ec2-user/miniconda3/bin/conda install librosa
yes "" | /home/ec2-user/miniconda3/bin/conda install numpy

cp $DIR/* /home/ec2-user/amd/
