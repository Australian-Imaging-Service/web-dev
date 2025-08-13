FROM hugomods/hugo:debian-go-0.148.1

RUN apt-get update && apt-get install -y npm
COPY . /src

RUN npm install

# docker run --rm -v $(pwd):/src hugomods/hugo:debian-0.148.1 new site AIS --format yaml
# hugo server -e docs --bind 0.0.0.0 -D  --disableFastRender
# hugo server -e main --bind 0.0.0.0 -D  --disableFastRender

# git submodule update --init --recursive
# git submodule update --recursive --remote