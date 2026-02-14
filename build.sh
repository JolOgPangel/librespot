docker build -t librespot .

docker run -v $(pwd):/workspace librespot bash -lc "cargo build --release"
