FROM pandoc/latex@sha256:bea599351bb3ccaf33d5edd22a243b5e72b9c72674b4d7e180f2a9fdce48db08

RUN tlmgr update --self && tlmgr install luatexja haranoaji selnolig bussproofs

COPY ./build.sh /build.sh

ENTRYPOINT [ "/build.sh" ]
