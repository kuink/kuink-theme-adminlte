<style>
 table.t1 {
    margin: 1em 0;
    border-collapse: collapse;
  }
  .t1 tr {
    border: 1px solid #666;
  }
  .t1 th {
    padding: 2px 4px;
    background: #ccf;
    border: 1px dotted;
    white-space: nowrap;
    text-align: left;
  }
  .t1 td {
    padding: 2px 4px;
    border: 1px dotted;
    background: #ffc;
  }
</style>
        <!-- Wrapper/Container Table: Use a wrapper table to control the width and the background color consistently of your email. Use this approach instead of setting attributes on the body tag. -->
        <table cellpadding="0" cellspacing="0" border="0" id="backgroundTable">
            <tr>
                <td>
                    <!-- Tables are the most common way to format your email consistently. Set your table widths inside cells and in most cases reset cellpadding, cellspacing, and border to zero. Use nested tables as a way to space effectively in your message. -->
                    <table cellpadding="0" cellspacing="0" border="0" align="left" width="100%">
                        <tr>
                            <td colspan="2">

                                <p>{$guardian['title']} {$guardian['display_name']},</p>

                                <p>Informo que o aluno {$student['display_name']} tem as seguintes faltas por justificar:</p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table cellpadding="0" cellspacing="0" border="0" align="left" width="50%" class="t1">
                                    <tr style=" padding: 5px;">
                                        <td nowrap="true" style=" padding: 5px;border: 1px solid #828282; border-collapse: collapse;"><strong>ID</strong></td>
                                        <td width="114" style=" padding: 5px;border: 1px solid #828282;border-collapse: collapse;" nowrap="true"><strong>Data</strong></td>
                                        <td nowrap="true" style=" padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Tipo</strong></td>
                                        <td width="200" nowrap="true" style="padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Disciplina</strong></td>
                                        <td width="200" style="padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Obs</strong></td>
                                    </tr>
                                    {foreach from=$notes item=note}
                                        <tr style="padding: 5px;">
                                            <td style="padding: 5px;border: 1px solid #828282;border-collapse: collapse;">{$note['id']}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse; {$bgColorCSS}">{$note['date']}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse; ">{$note['absence_type']}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$note['subject_name']}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$note['obs']}</td>
                                        </tr>
                                    {/foreach}
                                </table>

                            </td>
                        </tr>


                                </table>

                            </td>
                        </tr>
                    </table>

                    <!-- End example table -->
                </td>
            </tr>
        </table>
        <br/>
        <p>Nota: Esta mensagem foi processada automaticamente.</p>
        <br/><br/><br/>
        <!-- End of wrapper table -->
        {$signature}
                <br><br><img src="http://apps.cscm-lx.pt/~docs/lib/images/cscm/e-mail/assinaE-mailCSCM-Lx.jpg" dfsrc="http://apps.cscm-lx.pt/~docs/lib/images/cscm/e-mail/assinaE-mailCSCM-Lx.jpg" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-image: initial; "><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; font-weight: bold;">Colégio do Sagrado Coração de Maria | Lisboa</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt;">Av. Manuel da Maia, n.º 2 1000-201 Lisboa</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt;">Tel: 218475342 | <a href="http://www.cscm-lx.pt">www.cscm-lx.pt</a></span></div><br><br><span style="font-family: webdings,arial,helvetica,sans-serif; color: rgb(0, 153, 0);">P </span><span style="font-family: arial,helvetica,sans-serif; font-size: 8pt; color: rgb(0, 153, 0);" lang="PT-PT">Este e-mail é amigo do ambiente, pondere antes de o imprimir.</span><br><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; color: rgb(0, 0, 0);" lang="PT-PT">AVISO LEGAL: Esta mensagem é confidencial e dirigida apenas ao destinatário. Se a recebeu por erro solicitamos que o comunique ao remetente mencionando a palavra <em>remover</em> no assunto e a elimine assim como qualquer documento anexo. Não há renúncia à confidencialidade nem a nenhum privilégio devido a erro de transmissão.</span><br><span style="font-family: arial,helvetica,sans-serif; font-size: 7.5pt; color: rgb(0, 0, 0);" lang="GB-GB">DISCLAIMER: This message is confidential and intended exclusively for the addressee. If you received this message by mistake please inform the sender with <em>remove</em> on the subject and delete the message and attachments. No confidentiality nor any privilege regarding the information is waived or lost by any mistransmission.</span>
    </body>


</html>
