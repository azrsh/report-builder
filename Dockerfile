FROM pandoc/latex@sha256:862cdb9b8020ef12ae8edb0928d458fe91ef437c7c9d297d8bb5720a4df90fb5

RUN tlmgr update --self && tlmgr install luatexja haranoaji selnolig bussproofs

COPY ./build.sh /build.sh

ENTRYPOINT [ "/build.sh" ]
