$targetFwk="v4.6";
$p=(get-childitem -recurse -filter *.csproj).FullName;

$p | %{
  $c = get-content $_;
  $nc = $c -replace "<TargetFrameworkVersion>(.*)</TargetFrameworkVersion>","<TargetFrameworkVersion>$($targetFwk)</TargetFrameworkVersion>" | Out-File $_ -Encoding utf8
}