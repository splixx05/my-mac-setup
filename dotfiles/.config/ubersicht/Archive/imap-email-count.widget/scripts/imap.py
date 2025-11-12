#!/usr/bin/env python
"""
    In order to use this widget, fill 
    IMAPSERVER, USER and PASSWORD variables
"""
import imaplib
import sys

#---v-- EDIT HERE --v---#

IMAPSERVER = ''
USER = ''
PASSWORD = ''

#-----------------------#


if IMAPSERVER == '':
  count = "Missing credentials"
else:
  try:
      mail = imaplib.IMAP4_SSL(IMAPSERVER)
      mail.login(USER, PASSWORD)
      mail.select("inbox", True) # connect to inbox.
      return_code, mail_ids = mail.search(None, 'UnSeen')
      mailsElem = mail_ids[0]
      if len(mailsElem) == 0:
        count = 0
      else:  
        count = len(mail_ids[0].split(" "))
  except ValueError:
      count = "err"

print count