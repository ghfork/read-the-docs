List Files in Directory
=======================

..code-block:: python 

    # for file in directory
    http://stackoverflow.com/questions/3964681/find-all-files-in-directory-with-extension-txt-with-python
    ## glob
    import glob
    import os
    os.chdir("/mydir")
    for file in glob.glob("*.txt"):
        print file

    ## version2
    >>> import glob
    >>> glob.glob('./*.txt')
    ['./outline.txt', './pip-log.txt', './test.txt', './testingvim.txt']

    ## os.listdir
    import os
    for file in os.listdir("/mydir"):
        if file.endswith(".txt"):
            print file

    ## traverse directory
    import os
    for root, dirs, files in os.walk("/mydir"):
        for file in files:
            if file.endswith(".txt"):
                 print os.path.join(root, file)

Process CSV files
=================

v2.7

.. code-block:: python

    import csv

    # write file
    with open('test.csv', 'w') as f:
        writer = csv.writer(f)
        writer.writerow(['row1', 5, 10, 15])
        writer.writerow(['row2', 3, 6, 9])
        writer.writerow(['row3', 2, 4, 6])

    # read file
    with open('test.csv', 'r') as f:
        reader = csv.reader(f)
        for row in reader:
            print row[0] + '\t' + row[1]

https://docs.python.org/2.7/library/csv.html

==================
Regular Expression
==================

#!/usr/bin/env python
https://docs.python.org/2/howto/regex.html
https://docs.python.org/2/library/re.html
http://hg.python.org/cpython/file/2.7/Tools/scripts/redemo.py

metacharacters::

    . ^ $ * + ? { } [ ] \ | ( )

# repeated qualifier
## at least m repetitions, and at most n
{m,n}

# [0-9] 
``\d``
# matches any non-digit
``\D``
# matches any whitespace character; equivalent to [ \t\n\r\f\v]
``\s``
# matches any non-whitespace character
``\S``
# matches any alphanumeric character; equivalent to [a-zA-Z0-9_]
``\w``
# matches any non-alphanumeric character
``\W``


# Performing Matches
## if the RE matches at the beginning of the string
match()
## if the RE matches at any location of the string
search()
## Find all substrings where the RE matches, and returns them as a list.
findall()
## Find all substrings where the RE matches, and returns them as an iterator.
finditer()


# match object
## Return the string matched by RE
group()
start()
end()
span

# Compilation Flags
DOTALL, S
IGNORECASE, I
LOCALE, L
MULTILINE, M
VERBOSE, X
UNICODE, U

# zero-width assertion
|
^
$
\A # matches only at the start of the string, even in MULTILINE mode
\Z # matches only at the end of the string
\b # word boundary #! remember use raw string, or python will see this as backspace

# groups
()
\1
(?P<name>...) # defines a named group # still given numbers
(?P=name)     # backrefrence to a named group
(?:..)        # don't retrieve group's contents # useful when modifying an existing pattern

# Lookahead Assertions
(?=...)
(?!...)

# Modifying Strings
split(string[, maxsplit=0])
#  If capturing parentheses are used in the RE, then their values are also returned as part of the list
sub(replacement, string[, count=0]) # count=0, replace all occurrences
subn() # similar to sub(), but returns a 2-tuple including the number of replacements

\g<name>   # use corresponding group name
\g<number> # use corresponding group number

.. code-block:: python

    # Empty matches are replaced only when they’re not adjacent to a previous match.
    >>> p = re.compile('x*')
    >>> p.sub('-', 'abxd')
    '-a-b-d-'

.. code-block:: python

    # replacement function
    >>> def hexrepl(match):
    ...     "Return the hex string for a decimal number"
    ...     value = int(match.group())
    ...     return hex(value)
    ...
    >>> p = re.compile(r'\d+')
    >>> p.sub(hexrepl, 'Call 65490 for printing, 49152 for user code.')
    'Call 0xffd2 for printing, 0xc000 for user code.'

# Greedy versus Non-Greedy
# Greedy
``.*``
# Non-Greedy
``*?``
``+?``
``??``
``{m,n}?``

.. code-block:: python

    import re
    # return a match object
    p = re.compile('ab*', re.IGNORECASE)
