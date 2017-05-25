Colégio do Sagrado Coração de Maria - Lisboa
--------------------------------------------

Caro colaborador,
A falta/nota com o id {$note['id']} foi atualizada para o estado validada em {$validation_date} por {$validator['display_name']}.

________________________________________________________________________________
Detalhes da nota/falta

    ID: {$note['id']} 
    Data: {$note_start_date} - {$note_end_date} 
    Tipo: {$note['absence_type']} 
    Remunerada: {if ($note['is_paid']==1)}Sim{else}Não{/if} 
    Just./Inj.: {if ($note['is_unjustified']==1)}Injustificada{else}Justificada{/if} 
    Fechada: {if ($note['is_closed']==1)}Sim{else}Não{/if} 
    Validada: {if ($note['id_validator']>0)}Sim - {$validation_date}{else}Não{/if} 
    Obs. Validação: 
        {$note['validation_obs']} 
    

{if ($note['id_justification']>0)}
________________________________________________________________________________
Detalhes da justificação
    
        Quem justificou: {$note['justifier_display_name']}
        Justificação criada em: {$justification_creation}
        Justificação: {$justification['justification']}
        Anexo: {if ($justification['id_file'] > 0)}Sim{else}Não{/if} 
        Obs:{if ($justification['obs']=='')}Sem Observações 
            {else} 
                {$justification['obs']} 
            {/if}
        
    

{/if}


Nota: Esta mensagem foi processada automaticamente.

{$signature}

Colégio do Sagrado Coração de Maria | Lisboa 
Av. Manuel da Maia, n.º 2 1000-201 Lisboa 
Tel: 218475342 | www.cscm-lx.pt

P Este e-mail é amigo do ambiente, pondere antes de o imprimir.

AVISO LEGAL: Esta mensagem é confidencial e dirigida apenas ao destinatário. Se a recebeu por erro solicitamos que o comunique ao remetente mencionando a palavra remover no assunto e a elimine assim como qualquer documento anexo. Não há renúncia à confidencialidade nem a nenhum privilégio devido a erro de transmissão.
DISCLAIMER: This message is confidential and intended exclusively for the addressee. If you received this message by mistake please inform the sender with remove on the subject and delete the message and attachments. No confidentiality nor any privilege regarding the information is waived or lost by any mistransmission. 
________________________________________________________________________________
Guid: {$guid}