FROM pandoc/latex@sha256:ad4e82b589630302d6216af04e6697143dc26dcb4a5ff331edd528caaf2b148a

RUN tlmgr update --self && tlmgr install luatexja haranoaji selnolig bussproofs

COPY ./build.sh /build.sh

ENTRYPOINT [ "/build.sh" ]
