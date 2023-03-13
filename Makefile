all: fmt lint

fmt:
	cargo +nightly fmt

lint:
	cargo clippy --workspace
	cargo clippy --workspace --tests
	cargo clippy --workspace --examples

test:
	cargo test --workspace

update:
	rustup update stable
	cargo update

clean:
	cargo clean
