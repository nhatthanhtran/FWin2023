import numpy as np
import os


def print_result(model,data, ft, sl, ll, pl, dm, el, dl, at, itr, fc, nw, ws, oss, ss, use_win, des, mix, dis):
    sum_data = 0
    for i in range(itr):
        
        file = '../results/' + '{}_{}_ft{}_sl{}_ll{}_pl{}_dm{}_nh8_el{}_dl{}_df2048_at{}_fc{}_ebtimeF_dt{}_mx{}_nw{}_ws{}_{}_{}/'.format(model,data,ft,sl,ll,pl,dm,el,dl,at,fc,dis,mix,nw,ws,des,i)
    
        try: 
            data_array = np.load(file + 'metrics.npy')
        except:
            print(f"Fail at {i}")
            data_array = np.zeros(2)


        sum_data = sum_data + data_array

    print('model: {}, data: {}, feature: {}, metric: {}, mse: {}, mae: {}'.format(model,data,ft,pl,sum_data[1]/itr, sum_data[0]/itr))

def read_file(file_name):
    path = os.path.abspath('..')
    file = path + '/scripts/' + file_name
    f = open(file,"r")
    for line in f:
        line_split = line.split()
        j = 0
        fc = 5
        valid = False
        d_model = 512
        nw = 4
        ws = 24
        oss = 4
        ss = 12
        use_window = False
        des = "Exp"
        mix = True
        dis = True
        for word in line.split():
            j = j + 1
            if word == "--data":
                data = line_split[j] 
                valid = True
            elif word == "--features":
                ft = line_split[j]
            elif word == "--seq_len":
                sl = int(line_split[j])
            elif word == "--label_len":
                ll = int(line_split[j])
            elif word == "--pred_len":
                pl = int(line_split[j])
            elif word == "--e_layers":
                el = int(line_split[j])
            elif word == "--d_layers":
                dl = int(line_split[j])
            elif word == "--factor":
                fc = int(line_split[j])
            elif word == "--attn":
                at = line_split[j]
            elif word == "--itr":
                itr = int(line_split[j])
            elif word == "--d_model":
                d_model = int(line_split[j])
            elif word == "--model":
                model = line_split[j]
            elif word == "--num_window":
                nw = int(line_split[j])
            elif word == "--window_size":
                ws = int(line_split[j])
            elif word == "--overlap_size":
                oss = int(line_split[j])
            elif word == "--shift_size":
                ss = int(line_split[j])
            elif word == "--use_window":
                use_window = True
            elif word =="--des":
                des = line_split[j].replace('\'','')
            elif word =="--mix":
                mix = False
            elif word =="--distil":
                dis = False
        # print(line)

        if valid:
            if ft=='S'  and (pl==24 or (data=="ECL" and pl==48)):
                print("")
            print_result(model,data, ft, sl, ll, pl, d_model,el, dl, at, itr, fc, nw, ws, oss, ss, use_window,des, mix,dis)
    f.close()


read_file("FWin/ETTh1FWin.sh")
