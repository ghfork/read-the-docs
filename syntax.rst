======
Syntax
======


Official Tutorial Notes
-----------------------


#!/usr/bin/env python
https://docs.python.org/2/tutorial/
http://legacy.python.org/dev/peps/pep-0008/

Chapter 4
^^^^^^^^^

.. code-block:: python

    for w in words[:]:  # Loop over a slice copy of the entire list.
    words.insert(index, word)

    range(start, end, interval) # create list of sequence

=======================================================

.. code-block:: python

    >>> for n in range(2, 10):
    ...     for x in range(2, n):
    ...         if n % x == 0:
    ...             print n, 'equals', x, '*', n/x
    ...             break
    ...     else:
    ...         # loop fell through without finding a factor
    ...         print n, 'is a prime number'

=======================================================

.. code-block:: python

    >>> for num in range(2, 10):
    ...     if num % 2 == 0:
    ...         print "Found an even number", num
    ...         continue
    ...     print "Found a number", num
    Found an even number 2
    Found a number 3

=======================================================

.. code-block:: python


    def f(a, L=[]):
        L.append(a)
            return L

            print f(1)
            print f(2)
            print f(3)

    # will print
    [1]
    [1, 2]
    [1, 2, 3]

    # if don't want this, use:
    def f(a, L=None):
        if L is None:
            L = []
        L.append(a)
        return L

=======================================================

.. code-block:: python

    function arguments
    def cheeseshop(kind, *arguments, **keywords):

=======================================================

.. code-block:: python

    def write_multiple_items(file, separator, *args):
        file.write(separator.join(args))

=======================================================

write the function call with the ``*`` operator to unpack the arguments out of a list or tuple
``**`` to unpack dictionaries

=======================================================

lamda

ex1:

.. code-block:: python

    >>> def make_incrementor(n):
    ...     return lambda x: x + n
    ...
    >>> f = make_incrementor(42)
    >>> f(0)
    42
    >>> f(1)
    43

ex2:

.. code-block:: python

    >>> pairs = [(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four')]
    >>> pairs.sort(key=lambda pair: pair[1])
    >>> pairs
    [(4, 'four'), (1, 'one'), (3, 'three'), (2, 'two')]

=======================================================

.. code-block:: python

    print my_function.__doc__

=======================================================

Chapter 5 Data Structures
^^^^^^^^^^^^^^^^^^^^^^^^^

=======================================================

# list methods
append
extend
insert
remove
pop
index
count
sort
reverse


# stack (LIFO)
append, pop

# queue (FIFO)
from collections import deque
append, popleft

.. code-block:: python

    # Functional Programming Tools
    filter(f, range(2,25)) #  returns a sequence where f is true

.. code-block:: python

    map(f, range(1,6)) # returns a sequence of the returned values
    map(f, arg_seq1, arg_seq2) # multiple input function, rutrns None if one sequence is longer than another

.. code-block:: python

    reduce(f, seq[, initial]) # eg. (((1+2)+3)+4)

.. code-block:: python

    # List Comprehensions
    squares = [x**2 for x in range(10)]
    ## alternative
    squares = map(lambda x: x**2, range(10))

    >>> [(x, y) for x in [1,2,3] for y in [3,1,4] if x != y]
    [(1, 3), (1, 4), (2, 3), (2, 1), (2, 4), (3, 1), (3, 4)]

.. code-block:: python

    # del
    del a[6]
    del a[:] # []
    del a # reference to a hereafter is an error

.. code-block:: python

    # tuple
    t = hello, # create one item tuple, note the trailing comma

# set
# no duplicate items, unordered

.. code-block:: python

    # create
    seta = set(somelist)

## example

.. code-block:: python

    a = set('abracadabra')
    b = set('alacazam')
    a                                  # unique letters in a
    a - b                              # letters in a but not in b
    a | b                              # letters in either a or b
    a & b                              # letters in both a and b
    a ^ b                              # letters in a or b but not both

.. code-block:: python

    # set comprehensions
    >>> a = {x for x in 'abracadabra' if x not in 'abc'}
    >>> a
    set(['r', 'd'])

# dictionary
## dictionaries are indexed by keys, which can be any immutable type
## if a tuple contains any mutable object either directly or indirectly, it cannot be used as a key
## an unordered set of key: value pairs, with the requirement that the keys are unique
del 
keys()

.. code-block:: python

    ## The dict() constructor builds dictionaries directly from sequences of key-value pairs:
    >>> dict([('sape', 4139), ('guido', 4127), ('jack', 4098)])
    {'sape': 4139, 'jack': 4098, 'guido': 4127}

.. code-block:: python

    ## using keyword arguments
    >>> dict(sape=4139, guido=4127, jack=4098)
    {'sape': 4139, 'jack': 4098, 'guido': 4127}

.. code-block:: python

    ## dict comprehensions
    >>> {x: x**2 for x in (2, 4, 6)}
    {2: 4, 4: 16, 6: 36}

.. code-block:: python

    # Looping Techniques
    ## using enumerate
    >>> for i, v in enumerate(['tic', 'tac', 'toe']):
    ...     print i, v
    ...

    0 tic
    1 tac
    2 toe

## using zip

.. code-block:: python

    >>> questions = ['name', 'quest', 'favorite color']
    >>> answers = ['lancelot', 'the holy grail', 'blue']
    >>> for q, a in zip(questions, answers):
    ...     print 'What is your {0}?  It is {1}.'.format(q, a)
    ...
    What is your name?  It is lancelot.
    What is your quest?  It is the holy grail.
    What is your favorite color?  It is blue.

.. code-block:: python

    ## loop over a sequence in reverse
    >>> for i in reversed(xrange(1,10,2)):
    ...     print i
    ...
    9
    7
    5
    3
    1

.. code-block:: python

    ## loop sorted
    >>> basket = ['apple', 'orange', 'apple', 'pear', 'orange', 'banana']
    >>> for f in sorted(set(basket)):
    ...     print f
    ...
    apple
    banana
    orange
    pear

.. code-block:: python

    ## looping through dictionaries
    >>> knights = {'gallahad': 'the pure', 'robin': 'the brave'}
    >>> for k, v in knights.iteritems():
    ...     print k, v
    ...
    gallahad the pure
    robin the brave

.. code-block:: python

    ## change while looping
    >>> words = ['cat', 'window', 'defenestrate']
    >>> for w in words[:]:  # Loop over a slice copy of the entire list.
    ...     if len(w) > 6:
    ...         words.insert(0, w)
    ...
    >>> words
    ['defenestrate', 'cat', 'window', 'defenestrate']

.. code-block:: python

    ## conditions
    >>> string1, string2, string3 = '', 'Trondheim', 'Hammer Dance'
    >>> non_null = string1 or string2 or string3
    >>> non_null
    'Trondheim'

=======================================================

Chapter 6 Modules
^^^^^^^^^^^^^^^^^

=======================================================

# The module's name is available as the value of the global variable __name__

# from xxx import * import all except those beginning with an underscore (_)

reload(modulename)

# if __name__ == "__main__"

# sys.path is initialized from
# 1. the directory containing the input script (or the current directory)
# 2. PYTHONPATH
# 3. the installation-dependent default

# The module compileall can create .pyc files (or .pyo files when -O is used)

.. code-block:: python

    >>> import sys
    >>> sys.ps1
    '>>> '
    >>> sys.ps2
    '... '

# dir() is used to find out which names a module defines
# dir() without arguments lists the names you have defined currently

.. code-block:: python

    import __builtin__
    dir(__builtin__)

# if a package's __init__.py code defines a list named __all__, it is taken to be the list of module names that should be imported when from package import * is encountered


.. code-block:: python

    # explicit relative imports
    from . import echo
    from .. import formats
    form ..filters imort equalizer

# Packages support one more special attribute, __path__. This is initialized to be a list containing the name of the directory holding the package’s __init__.py before the code in that file is executed.

sys.stdout

repr(x)
str(x)

# The str() function is meant to return representations of values which are fairly human-readable, while repr() is meant to generate representations which can be read by the interpreter (or will force a SyntaxError if there is no equivalent syntax)
# Strings and floating point numbers, in particular, have two distinct representations.

.. code-block:: python

    # right-justifies
    string.rjust(number)
    string.ljust(number)
    string.center(number)

    string.ljust(number)[:n] # truncation

    string.zfill() # pads a numeric string on the left with zeros

.. code-block:: python

    # format
    >>> print 'We are the {} who say "{}!"'.format('knights', 'Ni')
    We are the knights who say "Ni!"

    >>> print '{1} and {0}'.format('spam', 'eggs')
    eggs and spam

.. code-block:: python

    # using the name of argument
    >>> print 'This {food} is {adjective}.'.format(
    ...       food='spam', adjective='absolutely horrible')
    This spam is absolutely horrible.

# Positional and keyword arguments can be arbitrarily combined

.. code-block:: python

    # '!s' aplly str() '!r' apply repr()
    >>> print 'The value of PI is approximately {!r}.'.format(math.pi)
    The value of PI is approximately 3.141592653589793.

.. code-block:: python

    # format specifier after ':'
    >>> print 'The value of PI is approximately {0:.3f}.'.format(math.pi)
    The value of PI is approximately 3.142.

    >>> table = {'Sjoerd': 4127, 'Jack': 4098, 'Dcab': 7678}
    >>> for name, phone in table.items():
    ...     print '{0:10} ==> {1:10d}'.format(name, phone)
    ...
    Jack       ==>       4098
    Dcab       ==>       7678
    Sjoerd     ==>       4127

.. code-block:: python

    # passing the dict and using '[]' to access the keys
    >>> table = {'Sjoerd': 4127, 'Jack': 4098, 'Dcab': 8637678}
    >>> print ('Jack: {0[Jack]:d}; Sjoerd: {0[Sjoerd]:d}; '
    ...        'Dcab: {0[Dcab]:d}'.format(table))
    Jack: 4098; Sjoerd: 4127; Dcab: 8637678

    # could also be done by '**' notation
    >>> table = {'Sjoerd': 4127, 'Jack': 4098, 'Dcab': 8637678}
    >>> print 'Jack: {Jack:d}; Sjoerd: {Sjoerd:d}; Dcab: {Dcab:d}'.format(**table)
    Jack: 4098; Sjoerd: 4127; Dcab: 8637678

.. code-block:: python

    # old string formatting
    >>> import math
    >>> print 'The value of PI is approximately %5.3f.' % math.pi
    The value of PI is approximately 3.142.

.. code-block:: python

    # Reading and Writing Files
    >>> f = open('workfile', 'w')

    f.read(size)
    f.write()

    f.readline()

    list(f)

.. code-block:: python

    # reading lines from a file
    >>> for line in f:
        print line,

    # returns an integer giving the file object's current position in the file
    f.tell()

.. code-block:: python

    f.seek(offset, from_what)
    # from_what
    ## 0 from the beginning of the file (default)
    ## 1 uses the current file position
    ## 2 uses the end of the file

.. code-block:: python

    >>> f = open('workfile', 'r+')
    >>> f.write('0123456789abcdef')
    >>> f.seek(5)     # Go to the 6th byte in the file
    >>> f.read(1)
    '5'
    >>> f.seek(-3, 2) # Go to the 3rd byte before the end
    >>> f.read(1)
    'd'

.. code-block:: python

    # close file
    f.close()

.. code-block:: python

    # use the 'with' keyword
    i>>> with open('workfile', 'r') as f:
    ...     read_data = f.read()
    >>> f.closed
    True

.. code-block:: python

    # JavaScript Object Notation
    >>> json.dumps([1, 'simple', 'list'])
    '[1, "simple", "list"]'
    json.dump(x, f)
    x = json.load(f)

=======================================================

Chapter 8 Errors and Exceptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

=======================================================

while True:
    try:
        x = int(raw_input("Please enter a number: "))
        break
    except ValueError:
        print "Oops!  That was no valid number.  Try again..."

# an except clause may name multiple exceptions as a parenthesized tuple
except (RuntimeError, TypeError, NameError):
    pass

# optional else clause
for arg in sys.argv[1:]:
    try:
        f = open(arg, 'r')
    except IOError:
        print 'cannot open', arg
    else:
        print arg, 'has', len(f.readlines()), 'lines'
        f.close()

# instance and args

>>> try:
...    raise Exception('spam', 'eggs')
... except Exception as inst:
...    print type(inst)     # the exception instance
...    print inst.args      # arguments stored in .args
...    print inst           # __str__ allows args to printed directly
...    x, y = inst.args
...    print 'x =', x
...    print 'y =', y
...
<type 'exceptions.Exception'>
('spam', 'eggs')
('spam', 'eggs')
x = spam
y = eggs

# raise
>>> try:
...     raise NameError('HiThere')
... except NameError:
...     print 'An exception flew by!'
...     raise # re-raise
...
An exception flew by!
Traceback (most recent call last):
  File "<stdin>", line 2, in ?
NameError: HiThere

# create user-defined exception class
>>> class MyError(Exception):
...     def __init__(self, value):
...         self.value = value
...     def __str__(self):
...         return repr(self.value)
...
>>> try:
...     raise MyError(2*2)
... except MyError as e:
...     print 'My exception occurred, value:', e.value
...
My exception occurred, value: 4
>>> raise MyError('oops!')
Traceback (most recent call last):
  File "<stdin>", line 1, in ?
__main__.MyError: 'oops!'

# another example
class Error(Exception):
    """Base class for exceptions in this module."""
    pass

class InputError(Error):
    """Exception raised for errors in the input.

    Attributes:
        expr -- input expression in which the error occurred
        msg  -- explanation of the error
    """

    def __init__(self, expr, msg):
        self.expr = expr
        self.msg = msg

class TransitionError(Error):
    """Raised when an operation attempts a state transition that's not
    allowed.

    Attributes:
        prev -- state at beginning of transition
        next -- attempted new state
        msg  -- explanation of why the specific transition is not allowed
    """

    def __init__(self, prev, next, msg):
        self.prev = prev
        self.next = next
        self.msg = msg

# clean-up actions (finally)
>>> def divide(x, y):
...     try:
...         result = x / y
...     except ZeroDivisionError:
...         print "division by zero!"
...     else:
...         print "result is", result
...     finally:
...         print "executing finally clause"
...
>>> divide(2, 1)
result is 2
executing finally clause
>>> divide(2, 0)
division by zero!
executing finally clause
>>> divide("2", "1")
executing finally clause
Traceback (most recent call last):
  File "<stdin>", line 1, in ?
  File "<stdin>", line 3, in divide
TypeError: unsupported operand type(s) for /: 'str' and 'str'

=======================================================

Chapter 9 Classes

=======================================================

# declare
>>> class Complex:
...     def __init__(self, realpart, imagpart):
...         self.r = realpart
...         self.i = imagpart
...
>>> x = Complex(3.0, -4.5)
>>> x.r, x.i
(3.0, -4.5)

# initial state
def __init__(self):
    self.data = []

# data attributes

# methods
## A method is a function that “belongs to” an object.

# Data atrributes override method attributes with the same name
## solution
## capitalizing method names
## prefixing data attribute names with a small unique string (eg. _)
## using verbs for methods and nouns for data attributes

# Each value is an object, and therefore has a class (also called its type). It is stored as object.__class__

# inheritance
isinstance(obj, int)  # will be True only if obj.__class__ is int or some class derived from int
issubclass(bool, int) # is True since bool is a subclass of int


# private variables
## Any identifier of the form __spam (at least two leading underscores, at most one trailing underscore) is textually replaced with _classname__spam

# Instance method objects have attributes, too: m.im_self is the instance object with the method m(), and m.im_func is the function object corresponding to the method.

# Exceptions are Classes Too
class B:
    pass
class C(B):
    pass
class D(C):
    pass

for c in [B, C, D]:
    try:
        raise c()
    except D:
        print "D"
    except C:
        print "C"
    except B:
        print "B"
# will print B, C, D
# print B, B, B, if reversed

# iterator
>>> s = 'abc'
>>> it = iter(s)
>>> it
<iterator object at 0x00A1DB50>
>>> it.next()
'a'
>>> it.next()
'b'
>>> it.next()
'c'
>>> it.next()
Traceback (most recent call last):
  File "<stdin>", line 1, in ?
    it.next()
StopIteration

# __iter__, next()
class Reverse:
    """Iterator for looping over a sequence backwards."""
    def __init__(self, data):
        self.data = data
        self.index = len(data)
    def __iter__(self):
        return self
    def next(self):
        if self.index == 0:
            raise StopIteration
        self.index = self.index - 1
        return self.data[self.index]

# Generator
def reverse(data):
    for index in range(len(data)-1, -1, -1):
        yield data[index]

>>> for char in reverse('golf'):
...     print char
...
f
l
o
g


# Generator Expressions
>>> sum(i*i for i in range(10))                 # sum of squares
285

>>> xvec = [10, 20, 30]
>>> yvec = [7, 5, 3]
>>> sum(x*y for x,y in zip(xvec, yvec))         # dot product
260

>>> from math import pi, sin
>>> sine_table = dict((x, sin(x*pi/180)) for x in range(0, 91))

>>> unique_words = set(word  for line in page  for word in line.split())

>>> valedictorian = max((student.gpa, student.name) for student in graduates)

>>> data = 'golf'
>>> list(data[i] for i in range(len(data)-1,-1,-1))
['f', 'l', 'o', 'g']

=======================================================

Chapter 10 Brief Tour of the Standard Library

=======================================================

import os
os.getcwd()
os.chdir()
os.system()

import shutil
shutil.copyfile('data.db', 'archive.db')
shutil.move('/build/executables', 'installdir')

# wildcards
>>> import glob
>>> glob.glob('*.py')
['primes.py', 'random.py', 'quote.py']

import sys
print sys.argv

>>> sys.stderr.write('Warning, log file not found starting a new one\n')
Warning, log file not found starting a new one

sys.exit()

# regular expression
>>> import re
>>> re.findall(r'\bf[a-z]*', 'which foot or hand fell fastest')
['foot', 'fell', 'fastest']
>>> re.sub(r'(\b[a-z]+) \1', r'\1', 'cat in the the hat')
'cat in the hat'

# simple replace
>>> 'tea for too'.replace('too', 'two')
'tea for two'

# internet access

>>> import urllib2
>>> for line in urllib2.urlopen('http://tycho.usno.navy.mil/cgi-bin/timer.pl'):
...     if 'EST' in line or 'EDT' in line:  # look for Eastern Time
...         print line

<BR>Nov. 25, 09:43:32 PM EST

>>> import smtplib
>>> server = smtplib.SMTP('localhost')
>>> server.sendmail('soothsayer@example.org', 'jcaesar@example.org',
... """To: jcaesar@example.org
... From: soothsayer@example.org
...
... Beware the Ides of March.
... """)
>>> server.quit()

# Dates and Times
>>> # dates are easily constructed and formatted
>>> from datetime import date
>>> now = date.today()
>>> now
datetime.date(2003, 12, 2)
>>> now.strftime("%m-%d-%y. %d %b %Y is a %A on the %d day of %B.")
'12-02-03. 02 Dec 2003 is a Tuesday on the 02 day of December.'

>>> # dates support calendar arithmetic
>>> birthday = date(1964, 7, 31)
>>> age = now - birthday
>>> age.days
14368

# Data Compression
# Common data archiving and compression formats are directly supported by modules including: zlib, gzip, bz2, zipfile and tarfile.
>>> import zlib
>>> s = 'witch which has which witches wrist watch'
>>> len(s)
41
>>> t = zlib.compress(s)
>>> len(t)
37
>>> zlib.decompress(t)
'witch which has which witches wrist watch'
>>> zlib.crc32(s)
226805979

# Performance Measurement
## timeit, profile, pstats
>>> from timeit import Timer
>>> Timer('t=a; a=b; b=t', 'a=1; b=2').timeit()
0.57535828626024577
>>> Timer('a,b = b,a', 'a=1; b=2').timeit()
0.54962537085770791

# Quality Control
## doctest
def average(values):
    """Computes the arithmetic mean of a list of numbers.

    >>> print average([20, 30, 70])
    40.0
    """
    return sum(values, 0.0) / len(values)

import doctest
doctest.testmod()   # automatically validate the embedded tests

# unittest
import unittest

class TestStatisticalFunctions(unittest.TestCase):

    def test_average(self):
        self.assertEqual(average([20, 30, 70]), 40.0)
        self.assertEqual(round(average([1, 5, 7]), 1), 4.3)
        with self.assertRaises(ZeroDivisionError):
            average([])
        with self.assertRaises(TypeError):
            average(20, 30, 70)

unittest.main() # Calling from the command line invokes all tests

=======================================================

Chapter 11 Brief Tour of the Standard Library - Part II

=======================================================

# output formatting
## repr
>>> import repr
>>> repr.repr(set('supercalifragilisticexpialidocious'))
"set(['a', 'c', 'd', 'e', 'f', 'g', ...])"

## import pprint
>>> import pprint
>>> t = [[[['black', 'cyan'], 'white', ['green', 'red']], [['magenta',
...     'yellow'], 'blue']]]
...
>>> pprint.pprint(t, width=30)
[[[['black', 'cyan'],
   'white',
   ['green', 'red']],
  [['magenta', 'yellow'],
   'blue']]]

## textwrap
>>> import textwrap
>>> doc = """The wrap() method is just like fill() except that it returns
... a list of strings instead of one big string with newlines to separate
... the wrapped lines."""
...
>>> print textwrap.fill(doc, width=40)
The wrap() method is just like fill()
except that it returns a list of strings
instead of one big string with newlines
to separate the wrapped lines.

## locale
>>> import locale
>>> locale.setlocale(locale.LC_ALL, 'English_United States.1252')
'English_United States.1252'
>>> conv = locale.localeconv()          # get a mapping of conventions
>>> x = 1234567.8
>>> locale.format("%d", x, grouping=True)
'1,234,567'
>>> locale.format_string("%s%.*f", (conv['currency_symbol'],
...                      conv['frac_digits'], x), grouping=True)
'$1,234,567.80'


# Templating
## sustitute
>>> from string import Template
>>> t = Template('${village}folk send $$10 to $cause.')
>>> t.substitute(village='Nottingham', cause='the ditch fund')
'Nottinghamfolk send $10 to the ditch fund.'

## safe_substitute
>>> t = Template('Return the $item to $owner.')
>>> d = dict(item='unladen swallow')
>>> t.substitute(d)
Traceback (most recent call last):
  ...
KeyError: 'owner'
>>> t.safe_substitute(d)
'Return the unladen swallow to $owner.'

## subclasses, custom delimiter
>>> import time, os.path
>>> photofiles = ['img_1074.jpg', 'img_1076.jpg', 'img_1077.jpg']
>>> class BatchRename(Template):
...     delimiter = '%'
>>> fmt = raw_input('Enter rename style (%d-date %n-seqnum %f-format):  ')
Enter rename style (%d-date %n-seqnum %f-format):  Ashley_%n%f

>>> t = BatchRename(fmt)
>>> date = time.strftime('%d%b%y')
>>> for i, filename in enumerate(photofiles):
...     base, ext = os.path.splitext(filename)
...     newname = t.substitute(d=date, n=i, f=ext)
...     print '{0} --> {1}'.format(filename, newname)

img_1074.jpg --> Ashley_0.jpg
img_1076.jpg --> Ashley_1.jpg
img_1077.jpg --> Ashley_2.jpg

# Working with Binary Data Record Layouts
## struct, pack(), unpack()
import struct

data = open('myfile.zip', 'rb').read()
start = 0
for i in range(3):                      # show the first 3 file headers
    start += 14
    fields = struct.unpack('<IIIHH', data[start:start+16])
    crc32, comp_size, uncomp_size, filenamesize, extra_size = fields

    start += 16
    filename = data[start:start+filenamesize]
    start += filenamesize
    extra = data[start:start+extra_size]
    print filename, hex(crc32), comp_size, uncomp_size

    start += extra_size + comp_size     # skip to the next header

## Multi-threading
import threading, zipfile

class AsyncZip(threading.Thread):
    def __init__(self, infile, outfile):
        threading.Thread.__init__(self)
        self.infile = infile
        self.outfile = outfile
    def run(self):
        f = zipfile.ZipFile(self.outfile, 'w', zipfile.ZIP_DEFLATED)
        f.write(self.infile)
        f.close()
        print 'Finished background zip of: ', self.infile

background = AsyncZip('mydata.txt', 'myarchive.zip')
background.start()
print 'The main program continues to run in foreground.'

background.join()    # Wait for the background task to finish
print 'Main program waited until background was done.'

## the preferred approach to task coordination is to concentrate all access to a resource in a single thread and then use the Queue module to feed that thread with requests from other threads.

# Logging
import logging
logging.debug('Debugging information')
logging.info('Informational message')
logging.warning('Warning:config file %s not found', 'server.conf')
logging.error('Error occurred')
logging.critical('Critical error -- shutting down')

WARNING:root:Warning:config file server.conf not found
ERROR:root:Error occurred
CRITICAL:root:Critical error -- shutting down

## note
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
##

# Weak References
## weakref, garbage collection
>>> import weakref, gc
>>> class A:
...     def __init__(self, value):
...         self.value = value
...     def __repr__(self):
...         return str(self.value)
...
>>> a = A(10)                   # create a reference
>>> d = weakref.WeakValueDictionary()
>>> d['primary'] = a            # does not create a reference
>>> d['primary']                # fetch the object if it is still alive
10
>>> del a                       # remove the one reference
>>> gc.collect()                # run garbage collection right away
0
>>> d['primary']                # entry was automatically removed
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
    d['primary']                # entry was automatically removed
  File "C:/python26/lib/weakref.py", line 46, in __getitem__
    o = self.data[key]()
KeyError: 'primary'

# Tools for Working with Lists
# array
## like a list that stores only homogeneous data and stores it more compactly
>>> from array import array
>>> a = array('H', [4000, 10, 700, 22222])
>>> sum(a)
26932
>>> a[1:3]
array('H', [10, 700])

# collection
## like a list with faster appends and pops from the left side but slower lookups in the middle
## well suited for implementing queues and breadth first tree searches 
>>> from collections import deque
>>> d = deque(["task1", "task2", "task3"])
>>> d.append("task4")
>>> print "Handling", d.popleft()
Handling task1

unsearched = deque([starting_node])
def breadth_first_search(unsearched):
    node = unsearched.popleft()
    for m in gen_moves(node):
        if is_goal(m):
            return m
        unsearched.append(m)

# bisect
## with functions for manipulating sorted lists
>>> import bisect
>>> scores = [(100, 'perl'), (200, 'tcl'), (400, 'lua'), (500, 'python')]
>>> bisect.insort(scores, (300, 'ruby'))
>>> scores
[(100, 'perl'), (200, 'tcl'), (300, 'ruby'), (400, 'lua'), (500, 'python')]

# heapq
## provides functions for implementing heaps based on regular lists
## The lowest valued entry is always kept at position zero
## useful for applications which repeatedly access the smallest element but do not want to run a full list sort
>>> from heapq import heapify, heappop, heappush
>>> data = [1, 3, 5, 7, 9, 2, 4, 6, 8, 0]
>>> heapify(data)                      # rearrange the list into heap order
>>> heappush(data, -5)                 # add a new entry
>>> [heappop(data) for i in range(3)]  # fetch the three smallest entries
[-5, 0, 1]

# Decimal Floating Point Arithmetic
## financial applications and other uses which require exact decimal representation,
## control over precision,
## control over rounding to meet legal or regulatory requirements,
## tracking of significant decimal places, or
## applications where the user expects the results to match calculations done by hand.
https://docs.python.org/2/tutorial/stdlib2.html#decimal-floating-point-arithmetic




