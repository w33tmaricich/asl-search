#!/usr/bin/python3

import sys
import webbrowser

FIRST_CHARACTER = "{first_character}"
SEARCH_TERM = "{search_term}"
URL = "https://www.lifeprint.com/asl101/pages-signs/" + FIRST_CHARACTER + "/" + SEARCH_TERM + ".htm"
BROWSER = "chromium"

def main():
    if (len(sys.argv) != 2):
        print("Please provide a search term.")
        exit(1)

    search_term = sys.argv[1]
    first_character = search_term[0]
    custom_url = URL.replace(FIRST_CHARACTER, first_character)
    custom_url = custom_url.replace(SEARCH_TERM, search_term)
    print(custom_url)

    webbrowser.get(BROWSER).open(custom_url)

if __name__ == "__main__":
    main()
