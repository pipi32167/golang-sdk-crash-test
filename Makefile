clean:
	rm -rf build
	mkdir build


build: clean
	gomobile bind -tags test1 -target=ios -o build/golang_crash_test1.xcframework ./crash
	gomobile bind -tags test2 -target=ios -o build/golang_crash_test2.xcframework ./crash