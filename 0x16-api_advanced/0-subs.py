#!/usr/bin/python3
"""
    Query reddit api subscribers for a subredit
"""

import requests
from os import sys


subredit = sys.argv[1]


def number_of_subscribers(subreddit):
    """
        Get number of subscribers for a given subreddit
    """
    if subreddit is None or not isinstance(subreddit, str):
        return 0
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent': 'Mozilla/5.0'}
    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code != 200:
            return 0

        return response.json().get('data').get('subscribers')
    except Exception:
        return 0
