### M

python -u main_exp.py --model informer --data ECL --features M --seq_len 48 --label_len 48 --pred_len 48 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5 --factor 3

python -u main_exp.py --model informer --data ECL --features M --seq_len 168 --label_len 48 --pred_len 168 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features M --seq_len 168 --label_len 168 --pred_len 336 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features M --seq_len 168 --label_len 168 --pred_len 720 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features M --seq_len 168 --label_len 168 --pred_len 960 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

### S

python -u main_exp.py --model informer --data ECL --features S --seq_len 720 --label_len 168 --pred_len 48 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features S --seq_len 720 --label_len 168 --pred_len 168 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features S --seq_len 336 --label_len 336 --pred_len 336 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features S --seq_len 336 --label_len 336 --pred_len 720 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5

python -u main_exp.py --model informer --data ECL --features S --seq_len 720 --label_len 336 --pred_len 960 --e_layers 2 --d_layers 1 --attn prob --des 'Exp' --itr 5
