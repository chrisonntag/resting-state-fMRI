# Node embeddings: resting-state-fMRI

## Setup
### Data
Download ```clinical.csv``` and ```FC/``` from [Open Access: The Effect of Neurorehabilitation on Multiple Sclerosis – Unlocking the Resting-State fMRI Data](https://osf.io/p2kj7/files/osfstorage) 
and add it to the root folder.

### GCN
For this repository to run, Python 3.7 is required. I specifically used Python 3.7.9 and created a virtualenvironment in a ```env/``` folder with

```
python -m venv env
```

Install all required libraries with pip via

```
pip install -r requirements.txt
```

and clone [GCN](https://github.com/tkipf/gcn) into this repository.

```
git clone https://github.com/tkipf/gcn .
```

Then install with

```
cd gcn
python setup.py install
```

The version number in requirements file of this repo should work with the versions in the gcn implementation. 
Verify with

```
cd gcn
python train.py
```

which should yield

```
Optimization Finished!
Test set results: cost= 1.00715 accuracy= 0.81600 time= 0.00402
```

