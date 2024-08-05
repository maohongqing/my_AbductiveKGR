CUDA_VISIBLE_DEVICES=1 python -m akgr.abduction_model.main \
    --modelname='T5_disablepos_3_act_nt'\
    --data_root='./sampled_data/' -d DBpedia50 --scale='full' -a=32  \
    --checkpoint_root='checkpoints/' -r=120\
    --result_root='./results/'\
    --save_frequency 10\
    --mode='optimizing'\
    --overwrite_batchsize=4096\
    --ppo_lr=1.8e-5\
    --ppo_smatch_factor=0\
    --ppo_init_kl_coef=0.2\
    --ppo_cliprange=0.2\
    --ppo_proportion=1\
    --ppo_minibatch=64\
    --ppo_horizon=4096