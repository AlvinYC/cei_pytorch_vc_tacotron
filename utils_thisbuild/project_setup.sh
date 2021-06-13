cd ~/
#sh -c 'mv utils_thisbuild content'
cd ~/cei_pytorch_vc_tacotron/utils_thisbuild

# download necessary model file and map file 
# TODO: check file existed first
#sudo /home/docker/.local/bin/gdown --id "11dHZ_Fl2DLkfxlg0_4ayimRgjowLOkgs" #cei deep voice vctk model
#sudo /home/docker/.local/bin/gdown --id "1uFBbk0iqyCDAAnrs8jqNgz3T3I9ewuB5" #r9y9 deep voice ljspeech pretrain model
#sudo /home/docker/.local/bin/gdown --id "16clV1dTpIBjdZossSDXGnjroe8BjKTzL" #cei deep voice ljspeech pretrain model
# p225/p226/p227 adaptation model 
# p225/226/p227 10min adapation model
# p225/p226/p227 target wav
sudo chown -R docker:docker ~/cei_pytorch_vc_tacotron/utils_thisbuild
#tar -xvf preset.tar.gz
# merge all id_rsa.pub into this container
#sh -c 'cat /home/docker/utils_thisbuild/*pub > /home/docker/.ssh/authorized_keys'
sh -c 'git config --global user.name alvinyc'
sh -c 'git config --global user.email chen.yongcheng@gmail.com'

# move ljspeech inference model to checkpoints path 
# mkdir -p ~/cei_pytorch_vc/deepvoice3_0421749/checkpoints

# necessary nltk data for train/synthesis
python -c "import nltk; nltk.download('cmudict')"
python -c "import nltk; nltk.download('punkt')"

