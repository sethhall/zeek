
DIAG=diag.log
BTEST=../../aux/btest/btest
SCRIPT_COV=.tmp/script-coverage

all: cleanup btest-verbose coverage

# Showing all tests.
btest-verbose:
	@$(BTEST) -j -f $(DIAG)

brief: cleanup btest-brief coverage

# Brief output showing only failed tests.
btest-brief:
	@$(BTEST) -j -b -f $(DIAG)

coverage:
	@../scripts/coverage-calc "$(SCRIPT_COV)/*" coverage.log `pwd`/../../scripts

cleanup:
	@rm -f $(DIAG)
	@rm -rf $(SCRIPT_COV)*
	@find ../../ -name "*.gcda" -exec rm {} \;

distclean: cleanup
	@rm -rf .btest.failed.dat \
	        coverage.log \
	        diag.log \
	        .tmp/


# Updates the three coverage tests that usually need tweaking when
# scripts get added/removed.
update-coverage-tests:
	btest -qU coverage.bare-load-baseline
	btest -qU coverage.default-load-baseline
	@echo "Use 'git diff' to check updates look right."

.PHONY: all btest-verbose brief btest-brief coverage cleanup
