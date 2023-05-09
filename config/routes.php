<?php

return array(
    
    '' => 'site/index',
    'm/refresher' => 'messages/refresher',
    'm/isNewMessage' => 'messages/printNewMessage',
    'm/isNewMessage/([1-9]+)' => 'messages/printNewMessage/$1',
    'm/read/([1-9]+)' => 'messages/read/$1',

    'messages' => 'messages/index',
    'messages/([1-9]+)' => 'messages/dialog/$1',
    'messages/add/([1-9]+)' => 'messages/add/$1',

    'mail/out' => 'mail/out',
    'mail/out/list-([0-9]+)' => 'mail/out/$1',
    'mail/out/add' => 'mail/addout',
    'mail/out/export' => 'mail/export',

    'mail/dksu' => 'mail/dksu',
    'mail/dksu/list-([0-9]+)' => 'mail/dksu/$1',
    'mail/dksu/add' => 'mail/adddksu',

    'mail/org' => 'mail/org',
    'mail/org/list-([0-9]+)' => 'mail/org/$1',
    'mail/org/add' => 'mail/addorg',

    'vydatki/kost' => 'vydatki/kost',
    'vydatki/kost/list-([0-9]+)' => 'vydatki/kost/$1',
    'vydatki/kost/add' => 'vydatki/addkost',

    'vydatki/rozp' => 'vydatki/rozp',
    'vydatki/rozp/list-([0-9]+)' => 'vydatki/rozp/$1',
    'vydatki/rozp/add' => 'vydatki/addrozp',

    'computers' => 'computers/index',
    'computers/([a-z,A-Z,1-9]+)' => 'computers/view/$1',
    'computers/add' => 'computers/add',
    'computers/edit/([1-9]+)' => 'computers/edit/$1',
    'computers/delete/([a-z,A-Z,1-9]+)' => 'computers/delete/$1',
    'computers/addpo/([a-z,A-Z,1-9]+)' => 'computers/addpo/$1',

    'klients' => 'klients/index',
    'klients/([1-9]+)' => 'klients/view/$1',
    'klients/add' => 'klients/add',
    'klients/edit/([1-9]+)' => 'klients/edit/$1',
    'klients/delete/([a-z,A-Z,1-9]+)' => 'klients/delete/$1',

    'profile/([a-z,A-Z,1-9]+)' => 'user/profile/$1',
    'my-profile' => 'user/myprofile',

    'auth' => 'user/auth',
    'registration' => 'user/registration',
    'logout' => 'user/logout',

    'not-admin' => 'site/notadmin',

);