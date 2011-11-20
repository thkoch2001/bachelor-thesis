=======================================================
Bachelor Thesis: Free Standards for a restful Groupware
=======================================================

Using free software in a large organization is often hindered by the lack of a
satisfying free alternative to Microsoft Exchange. Several free software
groupware systems exists, but synchronization between groupware servers, desktop
clients and mobile devices is still a problem.

In my thesis I want to explore the possibilities of recent `standard
developments <http://calconnect.org/>`_ regarding the representation of
calendaring and contact informations (xCal_, xCard_), their exchange
(CalWS-ReST_, `portable contacts`_, `open social`_) and the adequacy of ReST
principles and HTTP as a base for groupware communication.

.. _xCal: https://datatracker.ietf.org/doc/rfc6321/?include_text=1
.. _xCard: https://datatracker.ietf.org/doc/rfc6351/?include_text=1
.. _portable contacts: http://portablecontacts.net/
.. _open social: http://opensocial.org
.. _CalWS-ReST: http://www.calconnect.org/pubdocs/CD1011%20CalWS-Rest%20Restful%20Web%20Services%20Protocol%20for%20Calendaring.pdf

As concrete groupware projects I want to investigate Kolab_ and Bedework_. Both
projects have very interesting and diverse properties. Bedework aims for
compliance with standards and developers of bedeworks also participate in
standard bodies. It is written in Java, a type safe language suitable for large
projects.

.. _Kolab: http://kolab.org
.. _Bedework: http://www.bedework.org

Kolab has a very pragmatic appproach in that it tries to reuse existing free
software projects as much as possible. Therefor Kolab itself is more a
repository of glue code and a knowledge base of how to configure and combine
OpenLDAP, Cyrus (IMAP server), Postfix (Mail transfer agent) and other
components. Kolab however has developed its own file format and only recently
started to discuss the adoption of the new xCal and xCard formats.

Kolab is also special because it uses an IMAP server as the data store and
synchronization protocol for calendar and contact informations. I want to
compare this approach to a restful one.

I want to see, which (preferable JVM based) libraries and frameworks already
exists to implement groupware systems to conform to the proposed standards,
which parts are missing and to contribute to the implementation of the missing
parts.

Some of the candidates for evaluation:

 * Code inside Bedework that could be extracted to an independent library
 * Libraries implementing portable contacts / open social ...?
 * `CalDAV4j <http://code.google.com/p/caldav4j>`_
 * `iCal4j <http://ical4j.sourceforge.net>`_
 * `Apache Shindig <http://shindig.apache.org>`_ (OpenSocial container. renders
   gadgets, proxies requests, handles REST and RPC requests)
 * Many ReST frameworks: http://code.google.com/p/implementing-rest

The current state of the thesis is available as
`PDF <https://raw.github.com/thkoch2001/bachelor-thesis/master/latex/restful_groupware.pdf>`_,
`HTML (single page) <http://thkoch2001.github.com/bachelor-thesis/single/restful_groupware.html>`_ and
`HTML (multi page) <http://thkoch2001.github.com/bachelor-thesis/multi/restful_groupware.html>`_.

