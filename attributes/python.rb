default['zoo_workstation']['python']['packages'] = [
  'ninja-ide',
  'python-beautifulsoup4',
  'python2-csvkit',
  'python2-Cython',
  'python-devel',
  'python-gensim-test',
  'python2-Keras',
  'python-nltk',
  'python2-numpy',
  'python2-pandas',
  'python-scikit-image',
  'python-scikit-learn',
  'python2-seaborn',
   # spaCy depends on ftfy, which has dropped python2 support in the main branch; it isn't used by a course, so we omit py2 and stick with upstream
  'python2-pysmell',
  'python2-theano',
  'python2-tqdm',
  'python2-virtualenv',
  'python2-virtualenv-api',
  'python2-virtualenv-clone',
  'python-virtualenvwrapper',
  'python-webpy',
  'python2-yahoo-finance',
  'python3-beautifulsoup4',
  'python3-botan2',
  'python3-csvkit',
  'python3-Cython',
  'python3-demjson',
  'python3-devel',
  'python3-gensim-test',
  'python3-ipython-doc',
  'python3-ipython-sphinx',
  'python3-ipython-tests',
  'python3-Keras',
  'python3-nbsphinx',
  'python3-nltk',
  'python3-notebook',
  'python3-numpy',
  'python3-pandas',
  'python3-pocketlint',
  'python3-pylint',
  'python3-scikit-image',
  'python3-scikit-learn',
  'python3-seaborn',
  'python3-spacy',
  'python3-spyder',
  'python3-sympy',
  'python3-theano',
  'python3-tox',
  'python3-tqdm',
  'python3-virtualenv',
  'python3-virtualenv-api',
  'python3-virtualenv-clone',
  'python3-yahoo-finance',
#  # zipline has ancient unresolvable deps:
#  # - numpy 1.11.1 vs 1.12.1
#  # - scipy 0.17.1 vs 0.19.1
#  # - pandas 0.18.1 vs 0.20.1
#  # --> 20170630 per https://github.com/quantopian/zipline/blob/master/etc/requirements.txt
#  # --> please use `virtualenv` to run zipline as non-root with non-system dependencies
#  'python3-zipline',
  'scikit-image-tools',
  'vim-pysmell'
]
