config.load_autoconfig()

# Shorten longer functions to a variable
urlc = c.url

# General config settings
## Dark mode stuff
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.darkmode.policy.images", "never")

# c.url settings
urlc.searchengines = {
    'DEFAULT': 'http://searxng/search?q={}'
}
urlc.start_pages = ['http://searxng']

# Userscript bindings
config.bind(',p', 'spawn python3 /home/celer/git/passdmenu/passdmenu.py -c')
config.bind(',s', 'spawn --userscript /home/celer/.config/qutebrowser/userscripts/shiori {url}')
# Javascript options
c.content.javascript.clipboard = "access-paste"

