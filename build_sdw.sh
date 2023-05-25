cd stable-diffusion-webui
mkdir repositories
proxychains git clone https://github.com/CompVis/stable-diffusion.git repositories/stable-diffusion
proxychains git clone https://github.com/CompVis/taming-transformers.git repositories/taming-transformers
proxychains git clone https://github.com/sczhou/CodeFormer.git repositories/CodeFormer
proxychains git clone https://github.com/salesforce/BLIP.git repositories/BLIP

proxychains git clone https://github.com/crowsonkb/k-diffusion.git repositories/k-diffusion
proxychains git clone https://github.com/TencentARC/GFPGAN.git repositories/GFPGAN

cd ..
docker build -f Dockerfile.sdw -t sdwebui:latest .
