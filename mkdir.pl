use strict;
use warnings;
use Cwd 'getcwd';
use open ":utf8";
use open ":utf8";
# ディレクトリを作成する。
#  mkdir $dir
my $readtxtfile = 'tetugaku.txt';
#use Encode::UTF8Mac;
#open my $FH, '<', encode(''utf-8-mac'', $readtxtfile);
open my $FH, "<", $readtxtfile;
my $num = 1;
for my $line (<$FH>) {
    #3回実行したら終了する
    chomp $line;
    print $line . "\n";
    my $dir = $line;
    mkdir $dir
    or die "$dir を作成することができません。 : $!";
    print "$dir が作成されました。\n";
    use File::Path;
    print "/Users/ichikawamasaru/Workdir/".$dir."/test";
    eval { mkpath("/Users/ichikawamasaru/Workdir/".$dir."/mdp", 0, 0755); };
    eval { mkpath("/Users/ichikawamasaru/Workdir/".$dir."/twitter", 0, 0755); };
    eval { mkpath("/Users/ichikawamasaru/Workdir/".$dir."/sozai", 0, 0755); };
    if ($@) { print "$@"; }
    $line = "東京";
    if ($num == 3){
		last;
	}
    $num = $num + 1;
}
close $FH;
#print "1: ディレクトリを作成する。\n";
#my $filename = <STDIN>;
#my $dir = "dir_20080523_$$";
#my $dir = $filename."_$$";
#my $dir = $filename;
#mkdir $dir
#or die "$dir を作成することができません。 : $!";
#print "$dir が作成されました。\n";
#cronでファイル作成する。テキストファイルから読み込んでフォルダを作成する。
#my $curdir = getcwd;
#print $curdir, "\n";
