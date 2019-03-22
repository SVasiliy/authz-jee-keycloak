FROM svasiliy/wildfly-keycloak:2.0
COPY . /opt/jboss/authz
ENTRYPOINT ["tail", "-f", "/dev/null"]