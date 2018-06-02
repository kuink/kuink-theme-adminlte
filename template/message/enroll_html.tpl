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
                                {foreach from=$guardianDetails item=guardian}
                                <p>{$guardian['title']} {$guardian['display_name']},</p>
                                {/foreach}

                                <p>Segue abaixo informação sobre o estado de matrícula para o ano letivo {$school_year}, Aluno {$studentDetails['process_number']} - {{$studentDetails['display_name']}}.</p>
                                <br/>
                                <p>{$intro}</p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                              <p><strong>Intenção de frequência: </strong></p>
                              <p><table cellpadding="0" cellspacing="0" border="0" align="left" width="80%">
                                  <tr style="text-align: center;">
                                      <td width="10%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Id</strong></td>
                                      <td width="20%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Ano letivo</strong></td>
                                      <td width="20%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Nome</strong></td>
                                      <td width="20%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Descrição</strong></td>
                                      <td width="10%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Resposta</strong></td>
                                      <td width="20%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Motivo</strong></td>
                                      <td width="20%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Data de resposta</strong></td>
                                      <td width="20%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Estado</strong></td>
                                  </tr>
                                  {foreach from=$enrollIntentTable item=enrollIntent}
                                      <tr style="padding: 2px;text-align: center;">
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['id']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['school_year']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['name']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['description']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['intent_name']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['intent_description']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['intent_timestamp']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$enrollIntent['enroll_intent_status_name']}</td>
                                      </tr>
                                  {/foreach}
                              </table></p>
                            </td>
                          </tr>
                          {if $paymentDetails != ''}
                          <tr>
                              <td colspan="2">
                                <br/>
                                <p>Submetido por</p>
                                <p>Nome: {$paymentDetails['display_name']}</p>
                                <p>N.º de Ident. Fiscal: {$paymentDetails['guardian_tax_number']}</p>
                                <p>Número de Utente: {$paymentDetails['guardian_id']}</p>
                                <br/>
                                <p>ID Pagamento: {$paymentDetails['id']}</p>
                                <p>Método de Pagamento: {$paymentDetails['pay_method_name']}</p>
                              </td>
                          </tr>
                          <tr>
                            <td colspan="2">
                              <br/>
                              {if $enroll_state != ''}<p><strong>Matrícula: </strong></p>
                              <p>Estado: {$enroll_state}</p>{/if}
                              <br/>
                              <p><strong>Faturação:</strong></p>
                              <p><table cellpadding="0" cellspacing="0" border="0" align="left" width="80%">
                                  <tr style="text-align: center;">
                                      <td width="10%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Id</strong></td>
                                      <td width="40%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Aluno</strong></td>
                                      <td width="50%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Descritivo</strong></td>
                                      <td width="50%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Pago</strong></td>
                                      <td width="50%" colspan="3" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Valor</strong></td>
                                  </tr>
                                  {foreach from=$invoiceTable item=invoice}
                                      <tr style="padding: 2px;text-align: center;">
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$invoice['id']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$invoice['student_id']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$invoice['invoice_item_name']}</td>
                                          <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$invoice['is_paid']}</td>
                                          <td style="padding: 2px;text-align: left;border: 1px solid #828282;border-collapse: collapse;white-space: nowrap;">{$invoice['invoice_item_price']}</td>
                                      </tr>
                                  {/foreach}
                              </table></p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br/>
                                <p>Total (Pago): {$totalPaid} €</p>
                                <p>Total (Não Pago): {$totalToPay} €</p>
                            </td>
                        </tr>
                        {/if}
                        <tr>
                            <td colspan="2">
                                <br/>
                                <p>{$conclusion}</p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br/>
                                <p>{$userSignature}</p>
                            </td>
                        </tr>
                    </table>
                    <!-- End example table -->
                </td>
            </tr>
        </table>
        <!-- End of wrapper table -->
    </body>
</html>
