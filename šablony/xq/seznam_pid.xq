let $seznam :=

<seznam>
{
for $a in //manuscript
return
<record>
<sysno>{$a/sysno/text()}</sysno>
<signatura>{$a/signature/text()}</signatura>
<pid>{$a/model_monograph/pid/text()}</pid>
</record>
}
</seznam>
return $seznam
