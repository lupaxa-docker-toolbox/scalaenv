	git clone --depth 1 https://github.com/scalaenv/scalaenv.git /root/.scalaenv && \
	printf '%s\n' 'export SCALAENV_ROOT=/root/.scalaenv' 'export PATH="${SCALAENV_ROOT}/bin:${PATH}"' 'eval "$(scalaenv init -)"' >> /root/.bashrc && \
