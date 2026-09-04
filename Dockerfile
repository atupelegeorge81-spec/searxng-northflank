FROM searxng/searxng:2026.9.3-a1144dda3

USER root

COPY searxng/settings.yml /etc/searxng/settings.yml

RUN chown -R searxng:searxng /etc/searxng

USER searxng

ENV GRANIAN_HOST=0.0.0.0
ENV GRANIAN_PORT=8080

EXPOSE 8080
