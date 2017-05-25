
<style>
                p, table, tr, td, ul, li { font-size: 12px; font-family: Sans-Serif, Arial }
                table {
    border-collapse: collapse;
}
td {
    border: 1px solid #000;
    padding: 5px;
}
            </style>
            
            <p>Foram detetados erros na aula :</p>
            <table border="0" bordercolor="#FFCC00" style="background-color:" width="100%" cellpadding="0" cellspacing="3">
                    <tr>
                            <td>ID</td>
                            <td>Data início</td>
                            <td>Data fim</td>
                            <td>Turma</td>
                            <td>Disciplina</td>
                            <td>Docente Planeado</td>
                    </tr>
                    <tr>
                            <td>{$lessonDetails['id']}</td>
                            <td>{$lessonDetails['start_date']}</td>
                            <td>{$lessonDetails['end_date']}</td>
                            <td>{$lessonDetails['class']}</td>
                            <td>{$lessonDetails['subject']}</td>
                            <td>{$lessonDetails['teachers_planned']}</td>
                    </tr>
            </table>
            <br/>
            
            <p>Erros detetados:
                <ul>
                    {foreach from=$lessonErrors item=lessonError}
                    <li>{$lessonError}</li>
                    {/foreach}
                </ul>
            </p>
            <br/><br/><br/>
            {$signature}
            <br><br><img src="http://apps.cscm-lx.pt/~docs/lib/images/cscm/e-mail/assinaE-mailCSCM-Lx.jpg" dfsrc="http://apps.cscm-lx.pt/~docs/lib/images/cscm/e-mail/assinaE-mailCSCM-Lx.jpg" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-image: initial; "><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; font-weight: bold;">Colégio do Sagrado Coração de Maria | Lisboa</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt;">Av. Manuel da Maia, n.º 2 1000-201 Lisboa</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt;">Tel: 218475342 | <a href="http://www.cscm-lx.pt">www.cscm-lx.pt</a></span></div><br><br><span style="font-family: webdings,arial,helvetica,sans-serif; color: rgb(0, 153, 0);">P </span><span style="font-family: arial,helvetica,sans-serif; font-size: 8pt; color: rgb(0, 153, 0);" lang="PT-PT">Este e-mail é amigo do ambiente, pondere antes de o imprimir.</span><br><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; color: rgb(0, 0, 0);" lang="PT-PT">AVISO LEGAL: Esta mensagem é confidencial e dirigida apenas ao destinatário. Se a recebeu por erro solicitamos que o comunique ao remetente mencionando a palavra <em>remover</em> no assunto e a elimine assim como qualquer documento anexo. Não há renúncia à confidencialidade nem a nenhum privilégio devido a erro de transmissão.</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; color: rgb(0, 0, 0);" lang="GB-GB">DISCLAIMER: This message is confidential and intended exclusively for the addressee. If you received this message by mistake please inform the sender with <em>remove</em> on the subject and delete the message and attachments. No confidentiality nor any privilege regarding the information is waived or lost by any mistransmission.</span>
            <br/><br/>
            <font color="828282" size="1">
                <hr style="color: #828282"/>
                <span style="font-family: arial,helvetica,sans-serif; font-size: 10pt; ">Guid: {$guid}</span>
            </font>