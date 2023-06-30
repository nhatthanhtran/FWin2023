### M

python -u main_exp.py --model fwinlite --data ETTh2 --features M --seq_len 48 --label_len 48 --pred_len 24 --e_layers 2 --d_layers 1 --attn full --des 'Exp' --itr 5 --window_size 12

python -u main_exp.py --model fwinlite --data ETTh2 --features M --seq_len 96 --label_len 96 --pred_len 48 --e_layers 2 --d_layers 1 --attn full --des 'Exp' --itr 5 --window_size 12

python -u main_exp.py --model fwinlite --data ETTh2 --features M --seq_len 336 --label_len 336 --pred_len 168 --e_layers 3 --d_layers 2 --attn full --des 'Exp' --itr 5 --window_size 28

python -u main_exp.py --model fwinlite --data ETTh2 --features M --seq_len 336 --label_len 168 --pred_len 336 --e_layers 3 --d_layers 2 --attn full --des 'Exp' --itr 5 --window_size 28

python -u main_exp.py --model fwinlite --data ETTh2 --features M --seq_len 720 --label_len 336 --pred_len 720 --e_layers 3 --d_layers 2 --attn full --des 'Exp' --itr 5 --window_size 12

### S

python -u main_exp.py --model fwinlite --data ETTh2 --features S --seq_len 48 --label_len 48 --pred_len 24 --e_layers 2 --d_layers 1 --attn full --des 'Exp' --itr 5 --factor 3

python -u main_exp.py --model fwinlite --data ETTh2 --features S --seq_len 96 --label_len 96 --pred_len 48 --e_layers 2 --d_layers 1 --attn full --des 'Exp' --itr 5

python -u main_exp.py --model fwinlite --data ETTh2 --features S --seq_len 336 --label_len 336 --pred_len 168 --e_layers 2 --d_layers 1 --attn full --des 'Exp' --itr 5

python -u main_exp.py --model fwinlite --data ETTh2 --features S --seq_len 336 --label_len 168 --pred_len 336 --e_layers 3 --d_layers 2 --attn full --des 'Exp' --itr 5 --window_size 28

python -u main_exp.py --model fwinlite --data ETTh2 --features S --seq_len 336 --label_len 336 --pred_len 720 --e_layers 3 --d_layers 2 --attn full --des 'Exp' --itr 5 --window_size 28