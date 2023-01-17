# Node embeddings: resting-state-fMRI

## Setup
### Data
Download ```clinical.csv``` and ```FC/``` from [Open Access: The Effect of Neurorehabilitation on Multiple Sclerosis – Unlocking the Resting-State fMRI Data](https://osf.io/p2kj7/files/osfstorage) 
and add it to the root folder.

### GCN
For this repository to run, Python 3.7 is required. I specifically used Python 3.7.9 and created a virtualenvironment in a ```env/``` folder with

```
python -m venv env
source env/bin/activate
```

Install all required libraries with pip via

```
pip install -r requirements.txt
```

and clone [GCN](https://github.com/tkipf/gcn) into this repository.

```
git clone https://github.com/tkipf/gcn .
```

Copy the ```load_data.patch``` and the ```train.patch``` into the cloned repository and apply the changes with 

```
git apply load_data.patch
git apply train.patch
```

This modifies the load function in order to work with our data and adds a section to the train script which saves the hidden layer outputs 
as numpy arrays to files ```in gcn/gcn/embeddings```.

Then install the module with

```
python setup.py install
```

The version number in requirements file of this repo should work with the versions in the gcn implementation. 
For training with our dataset and parameters for a single patients treatment, use:

```
python train.py --dataset p001_1 --learning_rate 0.01 --epochs 10 --early_stopping 10 --hidden1 10
```


## Creating the Node embeddings
Run the ```preprocessing.ipynb``` notebook and follow the commands. You need to execute ```./generate_node_embeddings.sh``` at some point. 
Make sure that its executable with 

```
chmod +x generate_node_embeddings.sh
```