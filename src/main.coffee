



############################################################################################################
njs_fs                    = require 'fs'
njs_path                  = require 'path'
#...........................................................................................................
### https://github.com/isaacs/node-glob ###
glob                      = require 'glob'
#...........................................................................................................
### TAINT make route an option ###
route                     = njs_path.join __dirname, '../data/**/*.words.txt'
#...........................................................................................................
### https://github.com/ckknight/random-js ###
RANDOM                    = require 'random-js'
#...........................................................................................................
### TAINT make digits an option ###
digits                    = '0123456789'
last_word_idx             = null
words                     = []


#-----------------------------------------------------------------------------------------------------------
@_get_random_integer = ( min, max ) ->
  engine = RANDOM.engines.nativeMath
  return ( RANDOM.integer min, max ) engine

#-----------------------------------------------------------------------------------------------------------
@_get_random_digits = ( max ) ->
  return ( digits[ @_get_random_integer 0, 9 ] for idx in [ 0 ... 3 ] ).join ''

#-----------------------------------------------------------------------------------------------------------
@get_passphrase = ( length = 3, separator = '-' ) ->
  R               = []
  seen_words      = {}
  #.........................................................................................................
  insertion_idx_0 = @_get_random_integer 0, length - 1
  loop
    insertion_idx_1 = @_get_random_integer 0, length - 1
    break if insertion_idx_1 isnt insertion_idx_0
  #.........................................................................................................
  for idx in [ 0 ... length ]
    loop
      word = words[ @_get_random_integer 0, last_word_idx ]
      continue if seen_words[ word ]?
      seen_words[ word ] = 1
      break
    R.push word
    R.push @_get_random_digits() if idx is insertion_idx_0
    R.push @_get_random_digits() if idx is insertion_idx_1
  #.........................................................................................................
  return R.join separator


#===========================================================================================================
# INITIALIZE
#-----------------------------------------------------------------------------------------------------------
@_read_vocabulary = ->
  routes = glob.sync route
  throw new Error "unable to find vocabulary files for route #{route}" unless routes.length > 0
  seen_words = {}
  #.........................................................................................................
  for route in routes
    raw_words = ( njs_fs.readFileSync route, encoding: 'utf-8' ).split '\n'
    raw_words = ( word.trim().toLowerCase() for word in raw_words )
    raw_words = ( word for word in raw_words when word[ 0 ] isnt '#' )
    raw_words = ( word for word in raw_words when word.length > 0 )
    raw_words = ( word for word in raw_words when word.length <= 7 )
    seen_words[ word ] = 1 for word in raw_words
  #.........................................................................................................
  words.push word for word of seen_words
  last_word_idx = words.length - 1
  return null
#...........................................................................................................
@_read_vocabulary()


############################################################################################################
unless module.parent?
  log = console.log
  log()
  for idx in [ 0 .. 10 ]
    log @get_passphrase()
  log()
  for n in [ 1 .. 10 ]
    bits = ( Math.log Math.pow words.length + 1000, n + 2 ) / Math.log 2
    log "entropy for #{n} / #{words.length} words is #{bits}bits"


