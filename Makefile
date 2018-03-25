publish:
	aws s3 sync ./resources/public s3://blog.achesnais.com --exclude "*.scss" --delete --size-only

publish-all:
	aws s3 sync ./resources/public s3://blog.achesnais.com --exclude "*.scss" --delete

clean-bucket:
	aws s3 rm s3://blog.achesnais.com --recursive

clean-and-publish: clean-bucket publish