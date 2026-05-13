ARG BASE_IMAGE=dev-bot:local
FROM ${BASE_IMAGE}

USER 0

# Instance-specific runner identity
RUN echo "hcc-ui-agent-dev" > /home/botuser/app/.instance-id

# Instance-specific config overrides
# COPY config.json /home/botuser/app/config.json
# COPY personas/ /home/botuser/app/personas/

RUN chown -R botuser:0 /home/botuser && chmod -R g+rwX /home/botuser
USER botuser

ENTRYPOINT ["tini", "--", "bash", "entrypoint.sh"]
