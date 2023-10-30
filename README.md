# FWin Transformer (2023)

Nhat Thanh Tran, Jack Xin: Fourier-Mixed Window Attention: Accelerating Informer for Long Sequence Time-Series Forecasting

Fourier Mix Window Attention (FWin) Transformer is a modification of Informer. It is faster than Informer and slightly improve prediction.

Please start this repo and cite our paper if you find our work is helpful for you.

FWin model overview: 
<p align="center">
  <img src=".\img\FWin.PNG" align=center />
  <br><br>
<b> Figure 1. </b> FWin Model Overview.
</p>


Main Results
<p align="center">
  <img src=".\img\Univarite.PNG" align=center />
  <br><br>
<b> Figure 2. </b> Univariate.
</p>

<p align="center">
  <img src=".\img\Multivariate.PNG" align=center />
  <br><br>
<b> Figure 2. </b> Multivariate.
</p>

## Requirements

- Python 3.9
- matplotlib == 3.1.1
- numpy == 1.19.4
- pandas == 0.25.1
- scikit_learn == 0.21.3
- torch == 2.0.0

Dependencies can be installed using the following command:
```bash
pip install -r requirements.txt
```
## Data

The data can be dowloaded from [[here](https://drive.google.com/drive/folders/1ZOYpTUa82_jCcxIdTmyr0LXQfvaM9vIy)]

## Reproducibility

To easily reproduce the results you can follow the next steps:
1. Initialize the docker image using: `make init`.
2. Download the datasets using: `make dataset`.
3. Run each script in `scripts/FWin` using `bash ETTh1Fwin.sh"` for each script. Repeat for the other models.

To read the results (MSE and MAE) you can run the Python code provided in `read_result/` using `python read_result.py`.
You will need to update the `read_result.py` file to read results from the correct scripts. The default is:
read_file("FWin/ETTh1FWin.sh"), update the name to match the folder path in the `scripts/` folder.

## Custom Data
In order to use this repository with your custom data:

1. Store your data in the form similar to ETT where the first column is date, the remaining columns are feature columns.
2. Set the args --data=custom, 
  --root_path : root path where your data locate, 
  --data_path : name of the data file, 
  --target : the column name of the target,
  --enc_in : number of input features,
  --dec_in : number of input features,
  --c_out : number of output features
3. The default train/valid/test split is 0.7/0.1/0.2.
4. Setting the args --save_prediction to save the output of the test dataset.
5. Setting the args --do_prediction to make a prediction. By default, this will only predict the
last entry of the dataset.
6. In order to customize learning rate decay, update the adjust_learning_rate function in `utils/tools.py`

## Citation

If you find this repository useful in your research, please consider citing the paper:

@misc{tran2023fouriermixed,
      title={Fourier-Mixed Window Attention: Accelerating Informer for Long Sequence Time-Series Forecasting}, 
      author={Nhat Thanh Tran and Jack Xin},
      year={2023},
      eprint={2307.00493},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}

## Acknowledgement

We appreciate the following github repos a lot for their valuable code base or datasets:

https://github.com/zhouhaoyi/Informer2020

https://github.com/MAZiqing/FEDformer

https://github.com/thuml/Autoformer

https://github.com/laiguokun/multivariate-time-series-data

https://github.com/salesforce/ETSformer
