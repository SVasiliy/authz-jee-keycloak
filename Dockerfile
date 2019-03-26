FROM svasiliy/wildfly-keycloak:2.0
COPY --chown=jboss . /opt/jboss/authz
RUN cd /opt/jboss/authz && /opt/jboss/apache-maven-3.6.0/bin/mvn -DskipTests clean package && chmod 777 target/app-authz-jee-vanilla.war && mv /opt/jboss/authz/target/app-authz-jee-vanilla.war /opt/jboss/wildfly/standalone/deployments
ENTRYPOINT ["/opt/jboss/wildfly/bin/standalone.sh"]
CMD ["-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]