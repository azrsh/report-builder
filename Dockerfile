FROM pandoc/latex@sha256:b235ee75871764eca056777a952dffdcc877a5c029f3a4b27a5c43c370a984e9

RUN tlmgr update --self && tlmgr install luatexja haranoaji selnolig bussproofs

COPY ./build.sh /build.sh

ENTRYPOINT [ "/build.sh" ]
