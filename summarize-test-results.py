#!/usr/bin/env python3
# Summarize test results
from lxml import etree
import os


def main():
    filename = 'test-results.xml'
    if not os.path.isfile(filename):
        raise SystemExit('Results are not available')

    root = etree.parse(filename).getroot()

    errors = 0
    failures = 0
    skipped = 0
    passed = 0
    runtime = 0
    for child in root.getchildren():
        errors += int(child.get('errors'))
        failures += int(child.get('failures'))
        skipped += int(child.get('skipped'))
        passed += int(child.get('tests')) - (int(child.get('errors')) + int(child.get('failures')) + int(child.get('skipped')))
        runtime += float(child.get('time'))

    print('Passed: {}'.format(passed))
    print('Errors: {}'.format(errors))
    print('Failures: {}'.format(failures))
    print('Skipped: {}'.format(skipped))
    print('Runtime: {} s'.format(runtime))


if __name__ == "__main__":
    main()
