FROM jekyll/jekyll:4.0.0
WORKDIR /tmp
RUN apk --update add make rsync gcc g++ libc-dev python3 python3-dev zlib-dev freetype-dev libpng-dev && rm -rf /var/cache/apk/* 
RUN pip3 install cython && pip3 install prompt-toolkit==2.0.7 && pip3 install jupyter_book==0.5.2
WORKDIR /srv/jekyll
RUN jupyter-book create wiki_dir && cp wiki_dir/Gemfile . && gem install bundle && bundle install && rm -rf wiki_dir
RUN pip3 install sos
