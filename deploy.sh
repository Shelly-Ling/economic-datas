#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build
npm run start
# npm run generate

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f https://github.com/<USERNAME>/<USERNAME>.GitHub.io.git master

# if you are deploying to https://<USERNAME>.Github.io/<REPO>
# https://Shelly-Ling.Github.io/countdown-timer
# git push -f https://github.com/<USERNAME>/<REPO>.git master:gh-pages
# git push -f https://github.com/Shelly-Ling/countdown-timer.git master:gh-pages

git push -f https://github.com/Shelly-Ling/economic-datas.git master:gh-pages

cd -