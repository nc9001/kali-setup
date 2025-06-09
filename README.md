# kali-setup
Working on kali-linux 2025.1c

## Setup
```bash
./build.sh
```

---
build.shが失敗する場合
```bash
# kali ユーザで実行
# pipx がインストールされていない場合はインストール
apt install pipx -y

# python の仮想環境を設定、すでに設定されていると表示されるかも
pipx ensurepath

# ansible をインストール
pipx install ansible

# 仮想環境を設定
source ~/.local/share/pipx/venvs/ansible/bin/activate

# shell に (ansible) kali@.... がつけばOK
```

## Install
```bash
# kali ユーザで実行
ansible-galaxy install -r requirements.yml

# パスワードの入力を求められるので kali ユーザのパスワードを入力
ansible-playbook main.yml -K
```

## Addon
```bash
# kali ユーザで実行
# コマンドを実行すると、addon のインストールが表示されるのでOK
firefox addons/*.xpi
```

## Install Package
| Package |
|:---|
| tmux |
| gobuster |
| feroxbuster |
| jq |
| xxd |
| gdb |
| ntpsec-ntpdate |
| xclip |

## Clone/Download Repository
| URL |
|:---|
| https://github.com/PowerShellMafia/PowerSploit |
| https://github.com/swisskyrepo/PayloadsAllTheThings |
| https://github.com/S3cur3Th1sSh1t/PowerSharpPack |
| https://github.com/Flangvik/SharpCollection |
| https://github.com/itm4n/PrivescCheck |
| https://github.com/urbanadventurer/username-anarchy |
| https://github.com/dirkjanm/BloodHound.py |
| https://github.com/AlmondOffSec/PassTheCert |
| https://github.com/internetwache/GitTools |
| https://github.com/bitsadmin/wesng |
| https://github.com/samratashok/nishang |
| https://github.com/Greenwolf/ntlm_theft |
| https://github.com/byt3bl33d3r/CrackMapExec |
| https://github.com/ly4k/Certipy |
| https://github.com/fortra/impacket |
| https://github.com/dirkjanm/krbrelayx |
| https://github.com/peass-ng/PEASS-ng |
| https://github.com/DominicBreuker/pspy |
| https://github.com/gentilkiwi/mimikatz |
| https://github.com/antonioCoco/RunasCs |
| https://github.com/ropnop/kerbrute |
| https://github.com/jpillora/chisel |
| https://github.com/rizinorg/cutter |
| https://github.com/WithSecureLabs/chainsaw |
| https://github.com/obsidianmd/obsidian-releases |
| https://github.com/java-decompiler/jd-gui |
