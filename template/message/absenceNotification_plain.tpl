Colégio do Sagrado Coração de Maria - Lisboa
--------------------------------------------

{foreach from=$guardianDetails item=guardian}
    {$guardian['title']} {$guardian['display_name']},
{/foreach}

Venho por este meio informar sobre as faltas de {$studentDetails['display_name']}, {$studentDetails['_person_type_description']}.

{$intro}

{$absenceResumeAscii}

{if $onlyResume==0}
{$allAbsencesAscii}
{/if}

{$conclusion}
