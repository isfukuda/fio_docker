FROM alpine:latest
RUN apk --no-cache add fio bash
ENV	DBENCH_MOUNTPOINT="/data" \
	  FIO_SIZE="100M" \
	  FIO_OFFSET_INCREMENT="10M" \
	  FIO_DIRECT="1"
RUN mkdir -p /data
COPY benchmark.sh /bin/
CMD ["/bin/benchmark.sh"]
