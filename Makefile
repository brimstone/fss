fss: header footer modules/*
	@grep -vhE "^#[^!]" header > fss || true
	@$(foreach file,modules/*, grep -vhE "^#" $(file) >> fss || true)
	@grep -vhE "^#" footer >> fss || true
	@sed -i"" -e "/^\$$/d" fss
	@chmod 755 fss
	@echo Built fss

clean:
	@rm fss 2>/dev/null || true

all: fss
