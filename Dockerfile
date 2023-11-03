###############
# Build Stage #
###############
FROM hugomods/hugo:exts as builder
ARG GITHUB_TOKEN
ENV GITHUB_TOKEN=${GITHUB_TOKEN}
# Base URL
ARG HUGO_BASEURL=
ENV HUGO_BASEURL=${HUGO_BASEURL}
# Module Proxy
ARG HUGO_MODULE_PROXY=
ENV HUGO_MODULE_PROXY=${HUGO_MODULE_PROXY}
# Build site
COPY . /src
RUN hugo --minify --gc --enableGitInfo

###############
# Final Stage #
###############
FROM hugomods/hugo:nginx
COPY deploy/nginx/conf.d /etc/nginx/conf.d/
COPY --from=builder /src/public /site
