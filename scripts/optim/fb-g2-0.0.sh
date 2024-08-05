CUDA_VISIBLE_DEVICES=1 python -m akgr.abduction_model.main \
    --modelname='GPT2_6_act_nt'\
    --data_root='./sampled_data/' -d='FB15k-237' --scale='full' -a=32  \
    --checkpoint_root='checkpoints/' -r=60\
    --result_root='./results/'\
    --save_frequency 10\
    --mode='optimizing'\
    --overwrite_batchsize=3072\
    --ppo_lr=0.8e-5\
    --ppo_smatch_factor=0\
    --ppo_init_kl_coef=0.2\
    --ppo_cliprange=0.2\
    --ppo_proportion=1\
    --ppo_minibatch=96\
    --ppo_horizon=2048\
    --ppo_share_embed_layer