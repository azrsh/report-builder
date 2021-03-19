FROM pandoc/latex:2.11.4

RUN tlmgr update --self
RUN tlmgr install luatexja haranoaji selnolig

ENTRYPOINT [ "/data/build.sh" ]
