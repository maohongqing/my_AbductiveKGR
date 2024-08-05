CUDA_VISIBLE_DEVICES=1 python -m akgr.abduction_model.main \
    --modelname='T5_disablepos_3_act_nt'\
    --data_root='./sampled_data/' -d WN18RR --scale='full' -a=32  \
    --checkpoint_root='checkpoints/' -r=80\
    --result_root='./results/'\
    --save_frequency 10\
    --mode='optimizing'\
    --overwrite_batchsize=16384\
    --ppo_lr=3.1e-5\
    --ppo_smatch_factor=0\
    --ppo_init_kl_coef=0.2\
    --ppo_cliprange=0.2\
    --ppo_proportion=1\
    --ppo_minibatch=512\
    --ppo_horizon=4096