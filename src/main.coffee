



############################################################################################################
# njs_util                  = require 'util'
njs_fs                    = require 'fs'
njs_path                  = require 'path'
#...........................................................................................................
# BAP                       = require 'coffeenode-bitsnpieces'
TYPES                     = require 'coffeenode-types'
FS                        = require 'coffeenode-fs'
TRM                       = require 'coffeenode-trm'
rpr                       = TRM.rpr.bind TRM
badge                     = 'TIDES/main'
log                       = TRM.get_logger 'plain',     badge
info                      = TRM.get_logger 'info',      badge
whisper                   = TRM.get_logger 'whisper',   badge
alert                     = TRM.get_logger 'alert',     badge
debug                     = TRM.get_logger 'debug',     badge
warn                      = TRM.get_logger 'warn',      badge
help                      = TRM.get_logger 'help',      badge
echo                      = TRM.echo.bind TRM



route           = njs_path.join __dirname, '../data/german.txt'
words           = ( njs_fs.readFileSync route, encoding: 'utf-8' ).split '\n'
words           = ( word.trim() for word in words )
words           = ( word for word in words when word.length > 0 )
last_word_idx   = words.length - 1
digits          = '0123456789'

#-----------------------------------------------------------------------------------------------------------
@_get_random_integer = ( max ) ->
  return Math.floor Math.random() * ( max + 1 )

#-----------------------------------------------------------------------------------------------------------
@_get_random_digits = ( max ) ->
  return ( digits[ @_get_random_integer 9 ] for idx in [ 0 ... 3 ] ).join ''

#-----------------------------------------------------------------------------------------------------------
@get_passphrase = ( length = 5, separator = '-' ) ->
  R               = []
  seen_words      = {}
  insertion_idx_0 = @_get_random_integer length - 1
  loop
    insertion_idx_1 = @_get_random_integer length - 1
    break if insertion_idx_1 isnt insertion_idx_0
  #.........................................................................................................
  for idx in [ 0 ... length ]
    loop
      word = words[ @_get_random_integer last_word_idx ]
      continue if seen_words[ word ]?
      seen_words[ word ] = 1
      break
    R.push word
    R.push @_get_random_digits() if idx is insertion_idx_0
    R.push @_get_random_digits() if idx is insertion_idx_1
  #.........................................................................................................
  return R.join separator


############################################################################################################
unless module.parent?
  for idx in [ 0 .. 10 ]
    info @get_passphrase()
  # for idx in [ 0 .. 10 ]
  #   info @get_passphrase 10

  for n in [ 1 .. 10 ]
    bits = ( Math.log Math.pow words.length + 1000, n + 2 ) / Math.log 2
    warn "entropy for #{n} words is #{bits}bits"





