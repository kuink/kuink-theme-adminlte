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

                                
                                <p>Venho por este meio informar sobre as faltas de {$studentDetails['display_name']}, {$studentDetails['_person_type_description']} </p>
                                <p>{$intro}</p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table cellpadding="0" cellspacing="0" border="0" align="left" width="50%" class="t1">
                                    <tr style=" padding: 5px;">
                                        <td width="10%" style=" padding: 5px;border: 1px solid #828282; border-collapse: collapse;"><strong>Disciplina</strong></td>
                                        <td width="2%" style=" padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Injustificadas</strong></td>
                                        <td width="2%" style=" padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Justificadas</strong></td>
                                        <td width="2%" style="padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Total</strong></td>
                                        <td width="2%" style="padding: 5px;border: 1px solid #828282;border-collapse: collapse;"><strong>Limite</strong></td>
                                    </tr>
                                    {foreach from=$absenceResume item=absence}
                                        {$bgColorCSS = ''}
                                        
                                        {$c1 = '#468847'}
                                        {$c2 = '#f89406'}
                                        {$c3 = '#b94a48'}
                                        {$c4 = '#333333'}
                                        
                                        {*Menos de metade*}
                                        {if ($absence->count_unjustified < ($absence->max_absences/2))}
                                            {$bgColorCSS = 'background-color:#468847; color: #fff;'}
                                        {/if}
                                        
                                        {*Metade ou superior*}
                                        {if ($absence->count_unjustified >= ($absence->max_absences/2))}
                                            {$bgColorCSS = 'background-color:#f89406;color: #fff;'}
                                        {/if}
                                        
                                        {*Limite*}
                                        {if ($absence->count_unjustified == $absence->max_absences)}
                                            {$bgColorCSS = 'background-color:#b94a48;color: #fff;'}
                                        {/if}

                                        {*Ultrapassou o limite*}
                                        {if ($absence->count_unjustified > $absence->max_absences)}
                                            {$bgColorCSS = 'background-color:#333333;color: #fff;'}
                                        {/if}
                                        
                                        <tr style="padding: 5px;">
                                            <td style="padding: 5px;border: 1px solid #828282;border-collapse: collapse;">{$absence->subject_code}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse; {$bgColorCSS}">{$absence->count_unjustified}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse; ">{$absence->count_justified}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$absence->total}</td>
                                            <td style="padding: 5px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$absence->max_absences}</td>
                                        </tr>
                                    {/foreach}
                                </table>
                                    
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2">
                                
                                <table cellpadding="0" cellspacing="0" border="0" align="left" width="100%">
                                    <tr>
                                        <td colspan="5" style="text-align: left; ">
                                            <br/>
                                            <span class="badge badge-success" style="font-size: 8.5px; padding: 1px 9px 2px;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px; color:#fff; background-color:{$c1};">Menos de metade</span>        	
                                            <span class="badge badge-warning" style="font-size: 8.5px; padding: 1px 9px 2px;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px; color:#fff; background-color:{$c2};">Metade ou superior</span>
                                            <span class="badge badge-important" style="font-size: 8.5px; padding: 1px 9px 2px;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px; color:#fff; background-color:{$c3};">Limite</span>
                                            <span class="badge badge-inverse" style="font-size: 8.5px; padding: 1px 9px 2px;-webkit-border-radius: 9px;-moz-border-radius: 9px;border-radius: 9px; color:#fff; background-color:{$c4};">Ultrapassou o limite</span>
                                        </td>
                                    </tr>
                                </table>
                                {if $onlyResume == 0}        
                                <br/><br/><br/><br/>
                                <table cellpadding="0" cellspacing="0" border="0" align="left" width="80%">
                                    <tr style="text-align: center;">
                                        <td width="10%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Id</strong></td>
                                        <td width="40%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Data</strong></td>
                                        <td width="50%" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Disciplina</strong></td>
                                        <td width="50%" colspan="3" style="text-align: center;border: 1px solid #828282;border-collapse: collapse;"><strong>Detalhes</strong></td>
                                       
                                    </tr>
                                    {foreach from=$allAbsences item=absence}
                                        <tr style="padding: 2px;text-align: center;">
                                            <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$absence['id']}</td>
                                            <td style="padding: 2px;text-align: center;border: 1px solid #828282;border-collapse: collapse;">{$absence['date']}</td>
                                            <td style="padding: 2px;text-align: left;border: 1px solid #828282;border-collapse: collapse;">{$absence['subject_name']}</td>
                                            <td style="padding: 2px;text-align: left;border: 1px solid #828282;border-collapse: collapse;">{$absence['absence_type']}</td>
                                            <td style="padding: 2px;text-align: left;border: 1px solid #828282;border-collapse: collapse;{if $absence['is_unjustified'] == 'Injustificada'}color: red;{/if}">{$absence['is_unjustified']}</td>
                                            <td style="padding: 2px;text-align: left;border: 1px solid #828282;border-collapse: collapse;">{$absence['is_closed']}</td>
                                        </tr>
                                    {/foreach}
                                </table>
                                {/if}
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2">
                                <br/>
                                <p>{$conclusion}</p>
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

