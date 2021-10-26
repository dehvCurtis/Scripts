╭─   ~
╰─❯ minikube stop; minikube delete
Stopping local Kubernetes cluster...
Machine stopped.
Deleting local Kubernetes cluster...
Machine deleted.
╭─   ~                                                                   took  13s
╰─❯ docker stop $(docker ps -aq)
2a6ae80b2cd7
44c8a7e8680c
50359effc922
73d47138d60e
1ea37a8f9bc9
646282669a4e
f2609e53b6c1
b148625c1304
31e62b66489a
01382340e393
0a2b1bbefd1d
d86c02c10bf2
9188d9bab366
c8be622cf2c1
241618f8226f
137ab3bf5d0b
42e623c7a3fd
6c5eddc48fad
ad7853c66bc0
171d8cc2bd62
40732f20c379
8db4d146d3fc
1cd2cb40b1b1
521bceca2c06
6bed2ff7f2c1
7da77426afe6
4cdbba6640b9
0f6eb8a80a8b
32053cbcdf5c
7ea44bf1ca6a
05429aad226d
2c353d77121a
246b3c432e15
5ba49bfc407c
e5e1a4e1bee6
9110b49f31ba
837bd1e4a14c
44738ee6e646
fec2ffedfdd1
7b09afd17abc
40de17d645c8
7c57b74431ea
50ecdb550c18
26b6f2e05c93
fd0dd3c44859
49ad56b5dc67
9463a071de3c
4116579b2537
╭─   ~
╰─❯ rm -r ~/.kube ~/.minikube
override r----x--x  dcurtis/staff for /Users/dcurtis/.minikube/key.pem? n
override r----x--x  dcurtis/staff for /Users/dcurtis/.minikube/cert.pem? ^C
╭─   ~                                                             ✘ INT took  20s
╰─❯ rm -rf ~/.kube ~/.minikube
╭─   ~
╰─❯ rm /usr/local/bin/localkube /usr/local/bin/minikube
rm: /usr/local/bin/localkube: No such file or directory
╭─   ~
╰─❯ rm /usr/local/bin/localkube
rm: /usr/local/bin/localkube: No such file or directory
╭─   ~
╰─❯ rm /usr/local/bin/minikube
rm: /usr/local/bin/minikube: No such file or directory
╭─   ~
╰─❯ systemctl stop '*kubelet*.mount'
zsh: command not found: systemctl
╭─   ~
╰─❯ ls /etc
afpovertcp.cfg                        openldap
aliases                               pam.d
aliases.db                            passwd
apache2                               paths
asl                                   paths.d
asl.conf                              periodic
auto_home                             pf.anchors
auto_master                           pf.conf
autofs.conf                           pf.os
bashrc                                php-NOTICE-PLANNED-REMOVAL.txt
bashrc_Apple_Terminal                 php-fpm.conf.default
com.apple.screensharing.agent.launchd php-fpm.d
csh.cshrc                             php.ini.default
csh.login                             postfix
csh.logout                            ppp
cups                                  profile
defaults                              protocols
emond.d                               racoon
find.codes                            rc.common
ftpusers                              rc.netboot
gettytab                              resolv.conf
group                                 rmtab
hosts                                 rpc
hosts.equiv                           rtadvd.conf
irbrc                                 security
kern_loader.conf                      services
krb5.keytab                           shells
localtime                             snmp
locate.rc                             ssh
mail.rc                               ssl
man.conf                              sudo_lecture
manpaths                              sudoers
manpaths.d                            sudoers.d
master.passwd                         syslog.conf
nanorc                                ttys
networks                              uucp
newsyslog.conf                        wfs
newsyslog.d                           xtab
nfs.conf                              zprofile
notify.conf                           zshrc
ntp.conf                              zshrc_Apple_Terminal
ntp_opendirectory.conf
╭─   ~
╰─❯ docker system prune -af --volumes
Deleted Containers:
2a6ae80b2cd70cf0019872e28aae4ef8ff86bcfd784b8ae0bf3dd29efb865213
44c8a7e8680ced474de647a5ed7eca511f7b0be869c5c050e1b6eec5de23b358
50359effc92214a2615127b720ae09cf90d0f5ffa85aed842f47bdc317812d2b
73d47138d60ebaf68951ca2faeb1adf6588a0fdadd95e8df246dfb0b629ad0c8
1ea37a8f9bc993a97d92e19e02fcb497516d6732fd77c19f756517acf178a69a
646282669a4e3f51b3c7446d599e7f259e8085af06b6d2137c6d52722af77b80
f2609e53b6c1ff01b5f11f468f557d8cab67489db37377fd14f563c261244380
b148625c1304eadc66edf9cc195d7eeec896e44ecf0ad9072114f89811081d7a
31e62b66489a3e09d475e66d656809150e1f160332d980964cc54de81b004e6b
01382340e39375324ea27491511b9fbc1037fb79e28a1144df3f59d890d6b14f
0a2b1bbefd1dab19979bdb2cb0bd7f337b6710e9e1dc1a08d08c571d95311de0
d86c02c10bf290e5058c2ac559a852b1b07d920c7feee22963cd0a1a902387a8
9188d9bab3668c8ef0e6ce27c2878a0f08397789a02d6fae4491841b0786569d
c8be622cf2c1046148049a2f8761d62a7be2fb7b35dec8686af5d97bbcf8889f
241618f8226f9bbafbfe5071f0999ad13143ea699597195a1b3023fd9cf1250b
137ab3bf5d0b9f81a374fedc8886449cc4cc8dfdcdc3e12cbf1ae9d3edcc936e
42e623c7a3fd2e80f6308e2d0aff365efcb8ed9829e0a42867fcd4d8a68f4553
6c5eddc48fada99886ad5f0d6688733a5bf5f69ef7de556727f5c6362f3646e8
ad7853c66bc072030efb3b9bcc02fd263d6677f60ac664bcf9a0209bbb028a9d
171d8cc2bd6297b5e225d64055ed6408d6a91aa82170c4d9b743b37fb4ee7ffb
40732f20c37945acc2ac0e857a5882fe600f6074c70f7588a5f0ed48ad04b9e0
8db4d146d3fc57f86f917a9727f12b7692820b532b0e94f9249b940028818d2b
1cd2cb40b1b1df1ddac636c7eec3e82985c56ebe353f848f87b467f899b1e8ae
521bceca2c06dab63579708cb506d19774fa86953317c80184994fdf955c294b
6bed2ff7f2c1f0bd7f0ac98fe8b27bcf01f0d7d536f36d0e42e484db846ba087
7da77426afe62786569b4e192f813d82c9dbd34b0b1d1cc9530d8ee6e694b679
4cdbba6640b9c6cb3f4301c58679cf95343b42ab4e32e6e3d395e135f13a55d4
0f6eb8a80a8b2412544f5693791f2251c638d9f749d0027ee2099a9cf4a7f0ed
32053cbcdf5ca8f860026416e351664580886bf7b307b9cbdcb090b279032a50
7ea44bf1ca6a404ed51a1dcb0fa53f29e9ff465ccf5eb7d8f2044192181aad2c
05429aad226d8e8e0cff49617099d7e92ba312a1e391c93025a2470773f802e7
2c353d77121a8c3c1afde7f9babc4918d7a64b72f4fd3c28081370d46b2e1031
246b3c432e15c5e7161e69b7381e8534ec3f779ad74dcc10fb91fe19d6cc127a
5ba49bfc407cb7c8d5fa8d69bfce40576d3363c0ff4a52fe13b22b0135f22bee
e5e1a4e1bee612709e20b551340582340c711a12ab3fb50b3a97a93050ce8341
9110b49f31ba0934ac19ba4f5024c8635095d3a263f74321058c196967865da0
837bd1e4a14c72e0b0266456b4c97000f5d8ff8fe8d3829b9acf51835c3165e5
44738ee6e646dbb88a356daa76bfc54f4b4bed020cd5a8215a51fe8ead7895a5
fec2ffedfdd19a941d1f912fb8063b2990721d510ac94ff6fd843bf65ccc164e
7b09afd17abc9dac659ee43520e044fdaf68f6c14d809553e2ba00031df72843
40de17d645c8d0ec1a8fc1f24c72d10e4872f9bd0bd0814dea781ff36486ceb5
7c57b74431ea07926fbe54f196368cf01c6ce504485cd19e7736265551b2ddac
50ecdb550c1892ddbd1cd7f0897578a922aa3fdd146a2eb77b53263f140fd1fc
26b6f2e05c9316890425b2bb03beaa599033926a08d9b61a6a26261498e8c57c
fd0dd3c448599f3f98777a1a69fcc100b21d3150f6f3b615b9f95a0a19b395f5
49ad56b5dc678ea82322196f6403b6ae99474552f2c0485238465e891b6d40ed
9463a071de3c66ded7318357216a7560dff52d12edfee2265ece36dec8910f50
4116579b2537a1a0156cb589ce6b5535d0e665ac524ff7572ca9c65d7d61eb01

Deleted Networks:
vault-consul_docker_default
compose_default

Deleted Volumes:
3c8d497941efbba8ddc35ab08d245f244a215272ca87fd87ccc1f8782ca27a03
b8a0f2faa2ec298327ddd9f06bbe37f40f1004b5f3eb54719487c516a6f36881
ea2fc4db2e1ad10167b84dc3332b7f40db4c7d57f29c89a471aacf0ac9939d0d
2a2b227710845e86cd73e9f0e3b2d8fe10578ed6f3afa07e190a0572829fd89b
ea9325ca535210f5b3f3048a18ae84c948e027fda2954fb7786c8d0e963d8cf1
e6ea94d2e40849860dbfaeb7fabec13b6ab642cf67b7294d272f0217a770ef05
ea4cca7cab73fb5c8f2f4c5fe634f39c3bfa19305e898709bad9186338aad265
8ecf1c7e7b34a087568432f881a6f6b984aa9a8465f265e887b2e0e87e729e13
cb9826e5160395c8c7a778c1a7f172c28daab817fb90442c300ca31f53441ee7
48dbc83f18aa9d9f4a85a6f94f3e252257388778d942e54b8a9b75973194f6d5
64165dccec6f6a8c704921a1c53a67877a70ecb4cf978da893727e586ce42835
cd0a1fcc5a65c864ec105187d75f6afc0076018ee9dbf574fbdb6a2159b388ec
3c39fd2cc29ae7506e3492d6a843bd5cf415ad18b09ad26815b95d471a45d4f3
3dcaf9532395593a6b7fc40a8691cbb9558dee2919200aa729e42da0f03ccdd4
35386d630b151ab73db4478f78ed5774d173338988d1147e76593c58e2e6bbba
29414ee0587a73ee4c793e2413689918da66ca1c562af483257dd5bf0ac815e0
f7828862c0b9d704a359ba8ed69b64f4d1ab6e8b212850062c4fb147f0a69fda
357cf03954480569da42bebb9ecf33fcca02ffda90825773068c82864ab22889
86ecf34b55e8254bc067470cb1d4479773036a379547be3a754d7cdeab37ec54
a6fde9cca2ff243639099499f84799955f7547e6201bb95ec718140859ec44fa
efffff74abd28c8305ca03e27c37572d70cffed0a5e824d961814803dfe2e08b
3f2d5ec7e0f1e6639948bcc5e589c578e4120e80e014985324861dee584a78c2
a2395810461bab2083bef21f0103861333aa5e4cfcb912f90cac847d96fc10b5
7c851a85d075f064352be3a912a1928fef460e0decd217da6d6a3fd3488cb42a
919741abdc2aeed0816a139b69a5fc9f3e9b591069247ec32433b97e7252d1dd
ac445b46467f8771142094fb81208a5f6ba7a9abc8cfbc8f78bec62b367581ce
024ca1963ba9a154bd5f821503c1aa4b2f1b194ffbc38a80052bcdc39e339b45
5bb1aec6952ec7b4fea93f6c5d07fb05dfdf1fa4b86ada6436be331a266f9d5d

Deleted Images:
untagged: centos-stream8:latest
deleted: sha256:0a2d119a236b41d05431f02e8597020ac8eafac529a65eacd5e5d4d6fe230b94
untagged: datadog/docker-dd-agent:latest
deleted: sha256:93cdc0c53820209074611d2229b54aa2deed83f198396718e3074fc0a0a5139f
untagged: ubuntu:16.04
untagged: ubuntu@sha256:454054f5bbd571b088db25b662099c6c7b3f0cb78536a2077d54adc48f00cd68
deleted: sha256:b6f50765242581c887ff1acc2511fa2d885c52d8fb3ac8c4bba131fd86567f2e
untagged: centos:latest
untagged: centos@sha256:a27fd8080b517143cbbbab9dfb7c8571c40d67d534bbdee55bd6c473f432b177
deleted: sha256:5d0da3dc976460b72c77d94c8a1ad043720b0416bfc16c52c45d4847e53fadb6
deleted: sha256:74ddd0ec08fa43d09f32636ba91a0a3053b02cb4627c35051aff89f853606b59
untagged: datadog-dd:latest
deleted: sha256:ea20f40b570b13b2c4373b137ae22c531cad1ecf3f4c2b8697b9ccac1855f88e
untagged: puppet/puppetserver:latest
untagged: puppet/puppetserver@sha256:287945bc9911122f04792315e3ec929eb528d30edbc043893929b62ce890e6fe
deleted: sha256:4d453e34c230bba67ba73769284344791446135a2398a0da15d75cf4a4418789
deleted: sha256:40216beac1907905daf3fdaeda8fff69aaecbfd35444aadf2930c09c8d05e35c
deleted: sha256:dadeccb2fd7f43533f90a511979494f41b65476a9a6ac08b1c0d59bba0027ae0
deleted: sha256:48e6eb7f5344b27998fa8fd150ce36eb77644ed58d80c53c5e777721fede63a8
deleted: sha256:1e7ed53612e6b5b98e84ad0766195d8edcd26fd8e8bee03dc55119b6bb17761a
deleted: sha256:75422811562687629a9e09d4272980748bea4e88b77d3aebd530dd696215ed8b
deleted: sha256:0f771d0962ec7b1aac4fcffd374e7efd3d80903b7f2ebb2ff105801f6e4a8b92
deleted: sha256:bb05c2020ce1d25b415b6f299bdb9600c1bed71f51029f5cc8d8ab091b8cd0e3
deleted: sha256:952ef9cf9b594ddf8f248c21ea0d9ed7da2e13a41bfdf52a787ec5b6c0600eff
deleted: sha256:fbf395a52ba4301ea3946080d86503006f83050fb0af885b869dd4c4b7c9d489
deleted: sha256:9f0b85b1ea7813f14c747fccd799d17ced060f0eb8451c4e203ae3b6e95b54ff
deleted: sha256:3057f0744d131ea361030d2ff086fec02cbd0909437a8c9349189022ca3efe16
deleted: sha256:5f67d4c37d290928edce1d986543f9119428027ec91d89bf5b019927f47d4822
untagged: puppet/puppetboard:latest
untagged: puppet/puppetboard@sha256:d35e68e6743ace8eb418e0e797c9c7ca57c0ed2245be5b0566c0ec0235371d67
deleted: sha256:dff11f5ab9820042bfbf086a46a447b2ed38c6aa5fa70aeae28a510f8df9f19f
deleted: sha256:4a951f2cd11c0dcaa2034b0b6124d147ab885468b0a378316d1dc3f094b84538
deleted: sha256:fc62a25cc75e42cd48b209fb41f814d1788cd1bc00b21ef9ff565db2a1bf1b0b
deleted: sha256:f0cc67d615e6aeac79a60b2623d1fdb5797fa34dab3936f604fc2b5b672e36d4
deleted: sha256:27d9d98520c67819c186859b364da94bced39c7ba7a95ff5c58269bb7606f379
deleted: sha256:be0021b40da84825b826836a5aad51771e08a0ef40540684d79353c2f25191a6
deleted: sha256:f8f50fb64a21a3779e8d388658ee56c65a16718dc4f10a8b75ad88a136d960b0
deleted: sha256:e53f74215d12318372e4412d0f0eb3908e17db25c6185f670db49aef5271f91f
untagged: datadog/docker-dd-agent@sha256:0228b88d2e09aac6d33bcc886285dd9731b67e0614cd6588b42b0c978d0b89ad
deleted: sha256:c6cd2b93b7afda0747234cb21227375f77afe8145de00d3ccd634449f15f4fcc
untagged: arakmar/puppetdb-postgres:latest
untagged: arakmar/puppetdb-postgres@sha256:af7e30ca083d639be0693f9c16a384019d2119e0df8c07aa8b95d0e6dbd91f5a
deleted: sha256:adf63e4bf5c82cdf4a4301cf50a23e369cc6dd84b8e15f31bb415c0e4f5a46a2
deleted: sha256:1a7a2ab0a9ba11ba283d9443879aab37618fbbadd7d1785f6fbb335340417fde
deleted: sha256:f890d80fe12fab03ac2a360efd969102dbe7d2a9b6b6251a18f2a0ab963f2d3d
deleted: sha256:c550ae0d8fe56f0f1b5bca145a662ae6f055a6cb9afba8cbb81a4d8115b3084c
deleted: sha256:d2a9d8cc562b847dec8bc572e31a5918d3ed2d957fba09b55c642e48fedff15d
deleted: sha256:3edd25f9be2d68b46582b788299d79858a2511a898695c5768506b896de7b0ab
deleted: sha256:05fff86d153bdd92cb5e2ee22ae20420ebeedb84c44efa4d684f23b40571f407
deleted: sha256:34eb935267d4a42fcf62fa0ef031c953eb2c6507c617138a603489afeb783ef6
deleted: sha256:2a5259f78b458a013bdba5c45b4410f31ea3ea9b1372502dcff7a9b9386e1dbc
deleted: sha256:9b2816de44f67a1cd5ed8ed82b12b9d862a1ce8db45edf6b12d47517acd655f8
deleted: sha256:1da11e54b9971aca8d52245d60ba28f656ba572d545122ae7228e62fc0e30ef3
deleted: sha256:d75802a819bcec5eee723aa502a53317f7c7ef160b63c921b706a26883706bb4
deleted: sha256:72415090c2be159dd26a7fae833ed33635be1260551c9fe168d04b5896317e4f
deleted: sha256:ac1e4d84cd897e84b4db9d24f7e836b64de5324b08396bdaedff2fdfe85d06f8
deleted: sha256:4f85023b411da38b18001b81946fff1fecec7ad7887608bdfb0900b4db9f6d8f
deleted: sha256:e8cf91efbcb0f9da2302e7772aefb9f4b143d807dbced9e6112189a24a24f203
untagged: vault:latest
deleted: sha256:841c5d824412ce337477632153d35637777a5b4aa7245119e8d92c1ad993e600
untagged: vault@sha256:a75b8996586ddaf57866c3e89fc1fadcecbb8c2b85dc6fb70e3613674d771161
deleted: sha256:dc15db720d794cf9b1e24f2e9e07794d8a48d1aa3241bd12503088613c273624
untagged: puppet/puppetdb:latest
untagged: puppet/puppetdb@sha256:70cb817f0e6c4e42fa8e3fd0eb4defb7582fe1fb3f350c63441cb49a95f70d09
deleted: sha256:4d049f52f42c5dcfef53ac96aae840a0bdfeb70132e13ae4a6cb179e546f80b3
deleted: sha256:91ca07b749cecddddacbf9d17acb4cad87b502624c43c17c2c3b2a336c3e2c9e
deleted: sha256:734c467bdf024309d6846e13c09e508d6b1c089a00e579c6b361493a1a60d93c
deleted: sha256:25805e8d5eb86fc3b0ca5ca9a7735142d113bc477b405473d67dd76328a55c6e
deleted: sha256:dda44d707acad09972ccf4a6ac1f8872deffdcaf4da6c7829961497d20ebef9c
deleted: sha256:55a1d1f5be24bdbf6283bda4cdede67cefc8106e3a4c152cc4039c3ee9748722
deleted: sha256:3920202a3e8eb0eb9c4e1acce9c54bdbddff3541d5d923b38b803782eae74ffe
deleted: sha256:dca21025e58485e3208377279dfc4f1de46e6d53f69ae09755e6b43b9d027615
deleted: sha256:2d8fb2dde16756fabeaeb0074e2f5ea9dcefff959c5dd9df2d2fea34d4152308
deleted: sha256:431e9891b433f39629a5f0ab943a610916122c8c72cae930a2f4bda37da00cee
deleted: sha256:c8eb12e327e424062e402ec5694aa0b9e0c2d288ba948aefa67dfdde3d156ba7
deleted: sha256:6babb56be2593d69d561cae7ad16b670a1ee7c0a32b4fa715007fba7febd5ddb
untagged: ubuntu:latest
untagged: ubuntu@sha256:9d6a8699fb5c9c39cf08a0871bd6219f0400981c570894cd8cbea30d3424a31f
deleted: sha256:fb52e22af1b01869e23e75089c368a1130fa538946d0411d47f964f8b1076180
deleted: sha256:4942a1abcbfa1c325b1d7ed93d3cf6020f555be706672308a4a4a6b6d631d2e7
deleted: sha256:1866f5c24470582df43a2ebeadde309cc6d854f6cd142b6f88756fb8a29558c1
untagged: registry.openshift.datto.net/devops/ansible-executor:latest
untagged: registry.openshift.datto.net/devops/ansible-executor@sha256:1854a734a61764e570382285d27ca2316b4fdcfccb60991bc01b379ff3727a22
deleted: sha256:518fbf7ef553f62f64f1e77ec5018545f2707b3f988f8e8bc23544c494acd876
deleted: sha256:ac5d533aa6f3d0c2148ce117191582bb1bd049544420881c9a0a260bb15c3b6c
deleted: sha256:5e93e6bd991dca7da339468700df1014990731a613ce7b2b22a509912e0727d7
deleted: sha256:526105b6726eabdb8d1d686d4f7e6fb16e3216960d767535d149c6d36b016051
deleted: sha256:9f5f37f95d99c181fce827638eb72258adeb37c15afa4ac416698f95c7cce0ea
deleted: sha256:b90c2a1d80db70c4e7328d6b751d1c425e58a536da18b0c3f76499fe1e8a0d41
deleted: sha256:6ace160502f4309fefba59e089ea13737b36ae44adeffd72f7d1bf66e551fdce
deleted: sha256:8410ceb16606febb2fe669e34120a9af2b174b06c68ee15ccf90f87fc4b62b93
deleted: sha256:e31dc0f0f17744f053094466b5977a8fa950ea052ca6c129873ccc06e566a621
deleted: sha256:1debff25305e5c3461f63cd7f80f8770be134fa400ad66e8c5361e1bea48bbc8
deleted: sha256:5d6d8687c4a028c69d16dcd730084d6996490fd41556dbdc065ebac533204f2a
untagged: puppet/puppet-agent-alpine:latest
untagged: puppet/puppet-agent-alpine@sha256:28033930e42a6ba2c2ca25db24473464d6cb9684c2e7f3c424f7a20b747bfcbe
deleted: sha256:2062f28ae7f973afb4c83922ea35ce664b9d5f1db7e32b8df0fb9e3bc9d06470
deleted: sha256:376952777953a5606b34ed070db8c3b53a0b774b91deef33b3a4d3f4ab4181df
deleted: sha256:8019f526b3f075afb999b7a4db9e033a42b7e3eaeffd795675843816c3a96806
deleted: sha256:9ae44b97ed499d0042ee4e670004b1f8eb9a505a27fdd80bbfd0500fffced611
deleted: sha256:e354420da2640f31ee4afd7c46653bc3dd25629bf022e8be3b8cfeeb2d694042
deleted: sha256:3106208d59871ca5a69c2cb0e138de26e94fc1167deb0dd1250c63b4b3b645ce
deleted: sha256:3d9a49918d2aa31bb411304bf02578d67fae59b463ba5145b57e31313c0a44dd
deleted: sha256:c4d218459f69a52315d81ec518191b939578a22f158f0f09b3d910811fb503f6
deleted: sha256:89ae5c4ee501a09c879f5b58474003539ab3bb978a553af2a4a6a7de248b5740
untagged: consul:latest
untagged: consul@sha256:7b0effaf3faf9ce134be8648e3cf5f82263a52cd80f5395452a9ca69700f0357
deleted: sha256:adb24f6d4612dbbcde5862f21745735e704c4f1c797ba8424aa79aa0983f2e39
deleted: sha256:7c23d0a5891240d50104971c719c346ce5d0ce1bb10249b19e2995aceaab4965
deleted: sha256:24e78462d6d1012b23604e463e1bfc28ab4b974d48eec4abb7029aedb3062c05
deleted: sha256:9928be8bd2d2c5bdfcb877f1bcea210352012ef97c2b8bc9acc51a18b53e9356
deleted: sha256:6018b631550a7bb58ca4e7a22cebf92b7228d9f8ad3a918229b610ecfd20f61c
deleted: sha256:a99baeb0e617d5a264eea5e861a1b0d7fc51a91478de4af7e041797f55c56b4e
deleted: sha256:f1dd685eb59e7d19dd353b02c4679d9fafd21ccffe1f51960e6c3645f3ceb0cd
untagged: ubuntu-test:latest
deleted: sha256:e0583547676a4ef1dcdf4f5bd8d3e2b8a739d8b0819079f7581867fc81b7f7c6
deleted: sha256:01ecd35133d1026c5b3c8e7c3c3370a173a3541794b33ff78d620b8fe34660f2
untagged: centos@sha256:5528e8b1b1719d34604c87e11dcd1c0a20bedf46e83b5632cdeac91b8c04efc1
deleted: sha256:300e315adb2f96afe5f0b2780b87f28ae95231fe3bdd1e16b9ba606307728f55
deleted: sha256:2653d992f4ef2bfd27f94db643815aa567240c37732cae1405ad1c1309ee9859
untagged: puppet/puppetexplorer:latest
untagged: puppet/puppetexplorer@sha256:fb4a56cb851bc2b0447fac10844ac2145c8ead0254d46914275dbac6f97e16bc
deleted: sha256:21ad7a0306a5ae5e4b52daf2372f16858ae5e4dfe73ab49da1487caae285b514
deleted: sha256:20211024409aac5bb9ca8efa843f039b89cbfe9adf496e87d947138f0ed1e00b
deleted: sha256:c77f05b9d2be21130685271df0438c9a2c81eed5b0dbe425128f31e1fdee911b
deleted: sha256:ad1e80d29861b802695f687769694923b0e83696d2b6b1c8a8d18e4eb5cf2c20
deleted: sha256:80b72f28724bd39b52ab9c3d0a31b41d482042e3b6f5d2b137d743175b1a0f8b
deleted: sha256:255dd90d18b26a0a54bc9a7d6daf13806b3784e5f7c1c3b3735531b63c2ce7d9
deleted: sha256:b612f769009b596ad3dee2b20e8916870704754af4da08c1cc806e35acb0d2a9
deleted: sha256:82b77222c9c5d91e332f1169bb18adc236484d38b8f66af64a85ea4b158ddfbc
deleted: sha256:2b0fb280b60dad0c3e2f6b207ef0d8f6a04f09638d245d3a2fdf0d6933e734d6
untagged: dnet-my-test:latest
deleted: sha256:5323b2c7b63217d713d73ffdc053c989e4a23d9df49f375b73c0e97fffc0c792
untagged: test:latest
deleted: sha256:df2e3bc14b96515c1f421011589f3d16a64287ad0e3492586215990fa05173f8

Deleted build cache objects:
suw11xup3oepqtlz24yuy514x
35xbjewu0mzvla22kgno1th17
uswai9is1rtlh8tghhdfu03bm
v7el37ysvlgodw9dz2ozae9rd
70r5pvmulpg65ttlfhip42xiu
inc95sofyppkn4das2gyk414t
sewig5y0tar2i9f6oqssfvojd
zn5jbr2u9tuvp32x0v82irt0c
sl361vytuth3ypetoax33krwx
cxr4eo3iakarvx0lbvis808e7
6brz1kbt9lxv8hht53tp4l00k
bl36jd7mpvtqy0h4rltwh6d5v
y8w69o4gamtdbb747b20f2snn
vyzwzm0977ill1prg0shh8rjp
fvtslzsoooalutib4q1pn20ti
v2y7lbg5tw5nc9erdh8e6rn0a
0v4g6sdqpgpa2wnmmhswf3pde
8u0fblkksy6c9zgumy0cc1xvh
wrkdqk67ms6xgaiwg7vh8co0s
1wfozl7nf1cjz3rfahc6581er
zpjfz031wfix0z8kalxnj6g7q
5ujamk8j3g6mmnzx063m9tb5w
2r9dpq64nxk7z96p8irdabcmp
xtqka1q2wcl40b1i2y380ohmf
o82ynoetvrw13irnaok6ixyhr
jhabpsmd1d6d899s5bme73sq8
sn7p1t79shax83fcbhd9hb2o1
86bikj8cz05warpk7wqyh7lm4
yp925ntgdenkmg3mkg2qplv5c
tcjqw5gxeqn6o307wb2fb2u5u
tyvkcvwbfstwcc9evlyt7dbta
nyw6atonbuglc0mkort74mgoe
s6484m6qsnfn4xtvzb09ugrza
b1d2zwuo8erhil6594p0xyl2c
co087p7ciqdbarlo9ald9vjxj
snd53z724a7dtdnn806qhdfdv
vss9w7fb2ta6ic4b5r0ekhdl0
zzcgaxzien18ql5m25yw45ocd
xa4l0oyo7e23rig0xdon1vx75
l1wk4g1am0jz0ji67b58dvb6j

Total reclaimed space: 9.686GB
╭─   ~                                                                   took  15s
╰─❯
Session Contents Restored on Oct 26, 2021 at 8:14 AM
Last login: Tue Oct 26 08:14:14 on console
╭─   ~
╰─❯ brew install minikube
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 1 tap (homebrew/core).
==> Updated Formulae
Updated 7 formulae.
Warning: Calling bottle :unneeded is deprecated! There is no replacement.
Please report this issue to the anchore/grype tap (not Homebrew/brew or Homebrew/core):
  /usr/local/Homebrew/Library/Taps/anchore/homebrew-grype/grype.rb:9


==> Downloading https://ghcr.io/v2/homebrew/core/minikube/manifests/1.23.2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/minikube/blobs/sha256:0f123e76f821fa
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:
######################################################################## 100.0%
==> Pouring minikube--1.23.2.big_sur.bottle.tar.gz
==> Caveats
zsh completions have been installed to:
  /usr/local/share/zsh/site-functions
==> Summary
🍺  /usr/local/Cellar/minikube/1.23.2: 9 files, 68.7MB
Warning: Calling bottle :unneeded is deprecated! There is no replacement.
Please report this issue to the anchore/grype tap (not Homebrew/brew or Homebrew/core):
  /usr/local/Homebrew/Library/Taps/anchore/homebrew-grype/grype.rb:9

╭─   ~                                                                  took  54s
╰─❯ brew install minikube
Warning: minikube 1.23.2 is already installed and up-to-date.
To reinstall 1.23.2, run:
  brew reinstall minikube
╭─   ~
╰─❯ minikube
minikube provisions and manages local Kubernetes clusters optimized for
development workflows.

Basic Commands:
  start          Starts a local Kubernetes cluster
  status         Gets the status of a local Kubernetes cluster
  stop           Stops a running local Kubernetes cluster
  delete         Deletes a local Kubernetes cluster
  dashboard      Access the Kubernetes dashboard running within the minikube
cluster
  pause          pause Kubernetes
  unpause        unpause Kubernetes

Images Commands:
  docker-env     Configure environment to use minikube's Docker daemon
  podman-env     Configure environment to use minikube's Podman service
  cache          Add, delete, or push a local image into minikube
  image          Manage images

Configuration and Management Commands:
  addons         Enable or disable a minikube addon
  config         Modify persistent configuration values
  profile        Get or list the current profiles (clusters)
  update-context Update kubeconfig in case of an IP or port change

Networking and Connectivity Commands:
  service        Returns a URL to connect to a service
  tunnel         Connect to LoadBalancer services

Advanced Commands:
  mount          Mounts the specified directory into minikube
  ssh            Log into the minikube environment (for debugging)
  kubectl        Run a kubectl binary matching the cluster version
  node           Add, remove, or list additional nodes
  cp             Copy the specified file into minikube

Troubleshooting Commands:
  ssh-key        Retrieve the ssh identity key path of the specified node
  ssh-host       Retrieve the ssh host key of the specified node
  ip             Retrieves the IP address of the specified node
  logs           Returns logs to debug a local Kubernetes cluster
  update-check   Print current and latest version number
  version        Print the version of minikube

Other Commands:
  completion     Generate command completion for a shell

Use "minikube <command> --help" for more information about a given command.
╭─   ~
╰─❯ minikube status
🤷  Profile "minikube" not found. Run "minikube profile list" to view all profiles.
👉  To start a cluster, run: "minikube start"
╭─   ~
╰─❯ minikube start
😄  minikube v1.23.2 on Darwin 11.3.1
✨  Automatically selected the docker driver. Other choices: hyperkit, virtualbox, ssh
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
💾  Downloading Kubernetes v1.22.2 preload ...
    > preloaded-images-k8s-v13-v1...: 511.69 MiB / 511.69 MiB  100.00% 846.90 K
    > gcr.io/k8s-minikube/kicbase: 355.40 MiB / 355.40 MiB  100.00% 374.60 KiB
🔥  Creating docker container (CPUs=2, Memory=1984MB) ...
🐳  Preparing Kubernetes v1.22.2 on Docker 20.10.8 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass

❗  /usr/local/bin/kubectl is version 0.21.0-beta.1, which may have incompatibilites with Kubernetes 1.22.2.
    ▪ Want kubectl v1.22.2? Try 'minikube kubectl -- get pods -A'
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
╭─   ~                                                                                      took  17m 12s
╰─❯ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

╭─   ~
╰─❯ crc setup
INFO Checking if running as non-root
INFO Checking if crc-admin-helper executable is cached
INFO Checking for obsolete admin-helper executable
INFO Checking if running on a supported CPU architecture
INFO Checking minimum RAM requirements
INFO Checking if running emulated on a M1 CPU
INFO Checking if HyperKit is installed
INFO Checking if qcow-tool is installed
INFO Checking if crc-driver-hyperkit is installed
INFO Checking if CodeReady Containers daemon is running
INFO Checking if launchd configuration for tray exists
INFO Check if CodeReady Containers tray is running
INFO Checking if CRC bundle is extracted in '$HOME/.crc'
INFO Checking if /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle exists
INFO Extracting bundle from the CRC executable
INFO Ensuring directory /Applications/CodeReady Containers.app/Contents/Resources exists
INFO Uncompressing crc_hyperkit_4.9.0.crcbundle
crc.qcow2: 11.50 GiB / 11.50 GiB [------------------------------------------------------------------] 100.00%
Your system is correctly setup for using CodeReady Containers, you can now run 'crc start' to start the OpenShift cluster
╭─   ~                                                                                       took  1m 48s
╰─❯ crc start
INFO Checking if running as non-root
INFO Checking if crc-admin-helper executable is cached
INFO Checking for obsolete admin-helper executable
INFO Checking if running on a supported CPU architecture
INFO Checking minimum RAM requirements
INFO Checking if running emulated on a M1 CPU
INFO Checking if HyperKit is installed
INFO Checking if qcow-tool is installed
INFO Checking if crc-driver-hyperkit is installed
Bundle 'crc_hyperkit_4.9.0' was requested, but the existing VM is using 'crc_hyperkit_4.8.4'. Please delete your existing cluster and start again
╭─   ~
╰─❯ crc delete
Do you want to delete the OpenShift cluster? [y/N]: y
Deleted the OpenShift cluster
╭─   ~
╰─❯ ls /home
╭─   ~
╰─❯ pwd
/Users/dcurtis
╭─   ~
╰─❯ ls ~/.crc
bin                    crc-http.sock          crc.log_20211026090107 machines
cache                  crc.json               crcd.log               tap.sock
╭─   ~
╰─❯ rm -rf ~/.crc
╭─   ~
╰─❯ crc setup
CodeReady Containers is constantly improving and we would like to know more about usage (more details at https://developers.redhat.com/article/tool-data-collection)
Your preference can be changed manually if desired using 'crc config set consent-telemetry <yes/no>'
Would you like to contribute anonymous usage statistics? [y/N]: N
No worry, you can still enable telemetry manually with the command 'crc config set consent-telemetry yes'.
INFO Checking if running as non-root
INFO Checking if crc-admin-helper executable is cached
INFO Checking for obsolete admin-helper executable
INFO Checking if running on a supported CPU architecture
INFO Checking minimum RAM requirements
INFO Checking if running emulated on a M1 CPU
INFO Checking if HyperKit is installed
INFO Checking if qcow-tool is installed
INFO Checking if crc-driver-hyperkit is installed
INFO Checking if CodeReady Containers daemon is running
INFO Checking if launchd configuration for tray exists
INFO Check if CodeReady Containers tray is running
# VSCode Fix
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# ENV VARS
export HOMEBREW_NO_ANALYTICS=1

# Aliases
alias cdgit="cd ~/Git"
alias cdgitdatto="cd ~/Git/Datto"
alias cdgitpersonal="cd ~/Git/Personal"
alias k="kubectl"
alias py3="python3"
alias env="env | sort"

# Evals
eval $(crc oc-env)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dcurtis/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vscode
  osx
INFO Starting CodeReady Containers tray
INFO Checking if CRC bundle is extracted in '$HOME/.crc'
INFO Checking if /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle exists
INFO Extracting bundle from the CRC executable
INFO Ensuring directory /Applications/CodeReady Containers.app/Contents/Resources exists
INFO Uncompressing crc_hyperkit_4.9.0.crcbundle
crc.qcow2: 11.50 GiB / 11.50 GiB [------------------------------------------------------------------] 100.00%
Your system is correctly setup for using CodeReady Containers, you can now run 'crc start' to start the OpenShift cluster
╭─   ~                                                                                        took  2m 3s
╰─❯ crc start
Is '/Applications/CodeReady Containers.app' running? Cannot reach daemon API: Get "http://unix/api/version": dial unix /Users/dcurtis/.crc/crc-http.sock: connect: no such file or directory
╭─   ~
╰─❯ crc status
CRC VM:          Stopped
OpenShift:       Stopped (v4.9.0)
Disk Usage:      0B of 0B (Inside the CRC VM)
Cache Usage:     12.57GB
Cache Directory: /Users/dcurtis/.crc/cache
╭─   ~
╰─❯ crc config view
- consent-telemetry                     : no
╭─   ~                                                                                       at ⎈ minikube
╰─❯ oc login -u kubeadmin -p UZ72S-U8dfX-SxNWi-pyzG6 https://api.crc.testing:6443
error: dial tcp 127.0.0.1:6443: connect: connection refused - verify you have provided the correct host and port and that the server is currently running.
╭─   ~
╰─❯ crc oc-env
export PATH="/Users/dcurtis/.crc/bin/oc:$PATH"
# Run this command to configure your shell:
# eval $(crc oc-env)
╭─   ~
╰─❯ eval $(crc oc-env)
╭─   ~
╰─❯ vi ~/.zshrc
╭─   ~                                                                                          took  34s
╰─❯ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

╭─   ~                                                                                       at ⎈ minikube
╰─❯ k get pods
No resources found in default namespace.
╭─   ~
╰─❯ crc delete
Do you want to delete the OpenShift cluster? [y/N]: y
Deleted the OpenShift cluster
╭─   ~
╰─❯ crc stop
Machine does not exist. Use 'crc start' to create it
╭─   ~
╰─❯ crc version
CodeReady Containers version: 1.34.0+34c31851
OpenShift version: 4.9.0 (bundle installed at /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle)
╭─   ~
╰─❯ crc setup
INFO Checking if running as non-root
INFO Checking if crc-admin-helper executable is cached
INFO Checking for obsolete admin-helper executable
INFO Checking if running on a supported CPU architecture
INFO Checking minimum RAM requirements
INFO Checking if running emulated on a M1 CPU
INFO Checking if HyperKit is installed
INFO Checking if qcow-tool is installed
INFO Checking if crc-driver-hyperkit is installed
INFO Checking if CodeReady Containers daemon is running
INFO Checking if launchd configuration for tray exists
INFO Check if CodeReady Containers tray is running
INFO Starting CodeReady Containers tray
INFO Checking if CRC bundle is extracted in '$HOME/.crc'
INFO Checking if /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle exists
Your system is correctly setup for using CodeReady Containers, you can now run 'crc start' to start the OpenShift cluster
╭─   ~                                                                                           took  3s
╰─❯ crc config view
- consent-telemetry                     : no
╭─   ~
╰─❯ crc start --log-level debug
DEBU CodeReady Containers version: 1.34.0+34c31851
DEBU OpenShift version: 4.9.0 (bundle installed at /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle)
DEBU Running 'crc start'
DEBU Total memory of system is 34359738368 bytes
DEBU No new version available. The latest version is 1.34.0
Is '/Applications/CodeReady Containers.app' running? Cannot reach daemon API: Get "http://unix/api/version": dial unix /Users/dcurtis/.crc/crc-http.sock: connect: no such file or directory
╭─   ~
╰─❯ crc start --log-level debug
DEBU CodeReady Containers version: 1.34.0+34c31851
DEBU OpenShift version: 4.9.0 (bundle installed at /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle)
DEBU Running 'crc start'
DEBU Total memory of system is 34359738368 bytes
DEBU No new version available. The latest version is 1.34.0
Is '/Applications/CodeReady Containers.app' running? Cannot reach daemon API: Get "http://unix/api/version": dial unix /Users/dcurtis/.crc/crc-http.sock: connect: no such file or directory
╭─   ~
╰─❯ crc start --vm-driver virtualbox
unknown flag: --vm-driver
╭─   ~
╰─❯ crc
No command given
CodeReady Containers is a tool that manages a local OpenShift 4.x cluster optimized for testing and development purposes

Usage:
  crc [flags]
  crc [command]

Available Commands:
  bundle      Manage CRC bundles
  cleanup     Undo config changes
  completion  generate the autocompletion script for the specified shell
  config      Modify crc configuration
  console     Open the OpenShift Web Console in the default browser
  delete      Delete the OpenShift cluster
  help        Help about any command
  ip          Get IP address of the running OpenShift cluster
  oc-env      Add the 'oc' executable to PATH
  podman-env  Setup podman environment
  setup       Set up prerequisites for the OpenShift cluster
  start       Start the OpenShift cluster
  status      Display status of the OpenShift cluster
  stop        Stop the OpenShift cluster
  version     Print version information

Flags:
  -h, --help               help for crc
      --log-level string   log level (e.g. "debug | info | warn | error") (default "info")

Use "crc [command] --help" for more information about a command.
╭─   ~
╰─❯ crc start help
Is '/Applications/CodeReady Containers.app' running? Cannot reach daemon API: Get "http://unix/api/version": dial unix /Users/dcurtis/.crc/crc-http.sock: connect: no such file or directory
╭─   ~
╰─❯ crc start --help
Start the OpenShift cluster

Usage:
  crc start [flags]

Flags:
  -b, --bundle string             The system bundle used for deployment of the OpenShift cluster (default "/Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle")
  -c, --cpus int                  Number of CPU cores to allocate to the OpenShift cluster (default 4)
      --disable-update-check      Don't check for update
  -d, --disk-size uint            Total size in GiB of the disk used by the OpenShift cluster (default 31)
  -h, --help                      help for start
  -m, --memory int                MiB of memory to allocate to the OpenShift cluster (default 9216)
  -n, --nameserver string         IPv4 address of nameserver to use for the OpenShift cluster
  -o, --output string             Output format. One of: json
  -p, --pull-secret-file string   File path of image pull secret (download from https://cloud.redhat.com/openshift/create/local)

Global Flags:
      --log-level string   log level (e.g. "debug | info | warn | error") (default "info")
╭─   ~
╰─❯ crc start -b /Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle
/Applications/CodeReady not found, please provide the path to a valid bundle using the -b option
╭─   ~
╰─❯ crc start -b "/Applications/CodeReady Containers.app/Contents/Resources/crc_hyperkit_4.9.0.crcbundle"
Is '/Applications/CodeReady Containers.app' running? Cannot reach daemon API: Get "http://unix/api/version": dial unix /Users/dcurtis/.crc/crc-http.sock: connect: no such file or directory
╭─   ~
╰─❯ virsh list --all
zsh: command not found: virsh
╭─   ~
╰─❯ crc delete
Machine does not exist. Use 'crc start' to create it
╭─   ~
╰─❯ crc start
Is '/Applications/CodeReady Containers.app' running? Cannot reach daemon API: Get "http://unix/api/version": dial unix /Users/dcurtis/.crc/crc-http.sock: connect: no such file or directory
╭─   ~
╰─❯ crc start
INFO Checking if running as non-root
INFO Checking if crc-admin-helper executable is cached
INFO Checking for obsolete admin-helper executable
INFO Checking if running on a supported CPU architecture
INFO Checking minimum RAM requirements
INFO Checking if running emulated on a M1 CPU
INFO Checking if HyperKit is installed
INFO Checking if qcow-tool is installed
INFO Checking if crc-driver-hyperkit is installed
INFO Loading bundle: crc_hyperkit_4.9.0...
INFO Creating CodeReady Containers VM for OpenShift 4.9.0...
INFO Generating new SSH Key pair...
INFO Generating new password for the kubeadmin user
INFO Starting CodeReady Containers VM for OpenShift 4.9.0...
INFO CodeReady Containers instance is running with IP 127.0.0.1
INFO CodeReady Containers VM is running
INFO Updating authorized keys...
INFO Check internal and public DNS query...
INFO Check DNS query from host...
INFO Verifying validity of the kubelet certificates...
INFO Starting OpenShift kubelet service
INFO Waiting for kube-apiserver availability... [takes around 2min]
INFO Adding user's pull secret to the cluster...
INFO Updating SSH key to machine config resource...
INFO Waiting for user's pull secret part of instance disk...
INFO Changing the password for the kubeadmin user
INFO Updating cluster ID...
INFO Updating root CA cert to admin-kubeconfig-client-ca configmap...
INFO Starting OpenShift cluster... [waiting for the cluster to stabilize]
INFO Operator openshift-controller-manager is progressing
INFO Operator openshift-controller-manager is progressing
INFO 2 operators are progressing: authentication, openshift-controller-manager
INFO Operator openshift-controller-manager is progressing
INFO Operator openshift-controller-manager is progressing
INFO All operators are available. Ensuring stability...
INFO Operators are stable (2/3)...
INFO Operators are stable (3/3)...
INFO Adding crc-admin and crc-developer contexts to kubeconfig...
Started the OpenShift cluster.

The server is accessible via web console at:
  https://console-openshift-console.apps-crc.testing

Log in as administrator:
  Username: kubeadmin
  Password: 7JxzE-uDUfi-mnMyg-RvvDw

Log in as user:
  Username: developer
  Password: developer

Use the 'oc' command line interface:
  $ eval $(crc oc-env)
  $ oc login -u developer https://api.crc.testing:6443
╭─   ~                                                                           took  8m 24s at ⎈ minikube
╰─❯ oc login -u kubeadmin -p 7JxzE-uDUfi-mnMyg-RvvDw https://api.crc.testing:6443
Login successful.

You have access to 64 projects, the list has been suppressed. You can list all projects with 'oc projects'

Using project "default".