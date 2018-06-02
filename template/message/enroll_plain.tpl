Colégio do Sagrado Coração de Maria - Lisboa
--------------------------------------------

{foreach from=$guardianDetails item=guardian}
    {$guardian['title']} {$guardian['display_name']},
{/foreach}

Segue abaixo informação sobre o estado de matrícula para o ano letivo {$school_year}, Aluno {$studentDetails['process_number']} - {{$studentDetails['display_name']}}.

{$intro}

Intenção de frequência:
{$enrollIntentAscii}
{if $paymentDetails != ''}

Submetido por
Nome: {$paymentDetails['display_name']}
N.º de Ident. Fiscal: {$paymentDetails['guardian_tax_number']}
Número de Utente: {$paymentDetails['guardian_id']}

ID Pagamento: {$paymentDetails['id']}
Método de Pagamento: {$paymentDetails['pay_method_name']}
{/if}

{if $enroll_state != ''}
Matrícula:
Estado: {$enroll_state}
{/if}

Faturação:
{if $paymentDetails != ''}
{$invoicesAscii}
Total (Pago): {$totalPaid} €
Total (Não Pago): {$totalToPay} €
{/if}

{$conclusion}

{$userSignature}
