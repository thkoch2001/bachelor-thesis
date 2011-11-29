====================================================
Bachelor Thesis: Development of a rest API for Kolab
====================================================

Kolab_ is a free software groupware system utilizing a PHP web frontend
(Horde_). A RESTful API is missing so far and should be developed in this
bachelor thesis. Several media types should be supported:

 * vCard_ is the most widespread format for contacts
 * portablecontacts_ is a JSON format that got integrated into opensocial_
 * XHTML is primarily meant to be used by humans and can contain arbitrary
   data. It should be investigated how this view could be enriched with micro
   data to be parsed by machines.

.. _vCard: http://en.wikipedia.org/wiki/VCard
.. _portablecontacts: http://www.portablecontacts.net
.. _opensocial: http://www.opensocial.org
.. _Horde: http://www.horde.org

Beside the implementation the work should investigate, which components of the draft could be shared or reused for the support of different media types. Furthermore the support for hypermedia of the different formats should be researched: How much does a client need to know beforehand and what can be discovared through hyper links?
        
Optional extensions:

 * CardDAV as an alternativ protocol with research of the reusability of components
 * Examination of calendaring media types and their support for hypermedia
 * read access to calendar data over the REST API

Personal Motivation
-------------------

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

