
<style>
    p, table, tr, td, ul, li { 
        font-size: 12px; 
        font-family: Sans-Serif, Arial;
    }
    table {
        border-collapse: collapse;
    }
    td {
        border: 1px solid #000;
        padding: 5px;
    }
    h1,h2,h3,h4 {
        font-family: sans-serif, arial;
    }
</style>
<p>Caro colaborador,</p>
<p>
A falta/nota com o id {$note['id']} foi atualizada para o estado <b>validada</b> em {$validation_date} por {$validator['display_name']}.
<hr/>
    <h4>Detalhes da falta/nota</h4>
<ul>
    <li>ID: {$note['id']}</li>
    <li>Data: {$note_start_date} - {$note_end_date} </li>
    <li>Tipo: {$note['absence_type']}</li>
    <li>Remunerada: {if ($note['is_paid']==1)}Sim{else}Não{/if}</li>
    <li>Just./Inj.: {if ($note['is_unjustified']==1)}Injustificada{else}Justificada{/if}</li>
    <li>Fechada: {if ($note['is_closed']==1)}Sim{else}Não{/if}</li>
    <li>Validada:{if ($note['id_validator']>0)}Sim - {$validation_date}{else}Não{/if}</li>
    <li>Obs. Validação:<br/>
        <p style="padding-left: 10px;">{$note['validation_obs']}</p>
    </li>
</ul>
</p>

{if ($note['id_justification']>0)}
    <hr/>
    <h4>Detalhes da Justificação</h4>
    <ul>
        <li>Quem justificou: {$note['justifier_display_name']}</li>
        <li>Justificação criada em: {$justification_creation}</li>
        <li>Justificação: {$justification['justification']}</li>
        <li>Anexo: {if ($justification['id_file'] > 0)}Sim{else}Não{/if}</li>
        <li>Obs: {if ($justification['obs']=='')}Sem Observações
            {else}
                <br/>
                <p style="padding-left: 10px;">{$justification['obs']}</p>
            {/if}
        </li>
    </ul>

{/if}

<br/><br/>
<p>Nota: Esta mensagem foi processada automaticamente.</p>
<br/>
{$signature}
<br><br><img src="http://apps.cscm-lx.pt/~docs/public/lib/images/cscm/e-mail/assinaE-mailCSCM-Lx.jpg" dfsrc="http://apps.cscm-lx.pt/~docs/public/lib/images/cscm/e-mail/assinaE-mailCSCM-Lx.jpg" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-image: initial; "><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; font-weight: bold;">Colégio do Sagrado Coração de Maria | Lisboa</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt;">Av. Manuel da Maia, n.º 2 1000-201 Lisboa</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt;">Tel: 218475342 | <a href="http://www.cscm-lx.pt">www.cscm-lx.pt</a></span></div><br><br><span style="font-family: webdings,arial,helvetica,sans-serif; color: rgb(0, 153, 0);">P </span><span style="font-family: arial,helvetica,sans-serif; font-size: 8pt; color: rgb(0, 153, 0);" lang="PT-PT">Este e-mail é amigo do ambiente, pondere antes de o imprimir.</span><br><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; color: rgb(0, 0, 0);" lang="PT-PT">AVISO LEGAL: Esta mensagem é confidencial e dirigida apenas ao destinatário. Se a recebeu por erro solicitamos que o comunique ao remetente mencionando a palavra <em>remover</em> no assunto e a elimine assim como qualquer documento anexo. Não há renúncia à confidencialidade nem a nenhum privilégio devido a erro de transmissão.</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; color: rgb(0, 0, 0);" lang="GB-GB">DISCLAIMER: This message is confidential and intended exclusively for the addressee. If you received this message by mistake please inform the sender with <em>remove</em> on the subject and delete the message and attachments. No confidentiality nor any privilege regarding the information is waived or lost by any mistransmission.</span>
<br/><br/>
<font color="828282" size="1">
<hr style="color: #828282"/>
<span style="font-family: arial,helvetica,sans-serif; font-size: 10pt; ">Guid: {$guid}</span>
</font>