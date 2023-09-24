#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�� ���{� �����������pDP0   `/�c헮V�_7��ݞ��{�jl�֎�Zz����y�6��{��}o9��{����w`���MS*�Z��nj��]�֢mk
���"��-N�uٙ�Z[hA�ԴQ�Ͷ�R��ճ]���4 #I��#)��1)�e3Dg�2mM����#ɡ� �h�hS'�m&��'�j=MS&@=CM�H�=C@h ��M��S��z��z�2�44F 44h     ��4� �ѦT��=��mOP��yC4����4� � ��Bbd�j���j�Г5OjOS���B4�Q��d�4z����mA"B @� �=&�2 �O�iBz�=#�6��hz��zG"x�I D�����y%o�-()0~!�������zX�h�w�87Ťǩ���@��ܶ,�������(�
�x��20"`�]�]5��^��Y���/����o���R��A�Y��1m��rk�T��Ui�nd�xN�+/��"��v�V��e�3u�e�XT-���A¤6�Ǉ��G=�퀹l	�N�ХA*�Q�e�N<�DN��U��,c����QF���N�7�S0�:�}�M�>��B��l�CT�e�����͋Z��͞d+ڈ��pn۲NC13P��ͼ�X~73�bu��=��ۣ'�/��^���X�M���DQ�$-��!
�� ���Ks]_J<�d�ʒ�\N�-�Z1��̑����b��.��k� ��:��Q|	�k4��w��tSS�[GPj�9(�I2��	��J)��[��N���~Q��򫳆�������/���e��?'ͦ�@��f��$!<g�~e`��s�;�+H�%�ᒹ�fT�Ν�rT;b��캄$s�+ry�i�V���̈/խ�N�]1�!КSjoY����4H��]�V&M��J�s��g��h�B�׏Js�6
Q!��0�Q�ͯ��Փ#wtg���]�W^{]|��w�kI,��st+��i�m`��wH��ȡ��ɻQ(�!Ah��N�0�������?"�#P�!��JBؔ��[�z|G����$Tϳ�*�����QA��S/�
�(^���P�T�϶�^�k�*>��#�x>��[� ��B)v�[�� ����ۗs*L>�̚�/��;m.����>�Q W"�!.F$|�_���z�Mk��Ҫn��W���5�h����O�	��B�,�E�����Ÿ� ������#"�86����m�ōÓ�AV���;����
u�'���1�~�xb�cw{*�d�Lԁ�����?��tBL'��tUP`��Z\��Q�ّ�
��K{%��0ir p@��mA%����yw���FA���R�7��#&�5���@X���_a�vo��˨_�4���v�T�L����2F0�_v��Ң�q��Gi�U�D$�\s`������4^\p1�	ٰ<�K�D �n�Pک�9��J�/n�=�rD@)�����G��&ݹ���;����Y�x��ʴ}`i�ǣO�8ʦ�bS��@
R@���DJ��C�Pny�""���@�IY��lN��T�fю�\�D5l_���ŉx�gm�\ê�릋m�,�PS��Zʩ�x%��x�4'@٩xVyŬJ��i�����Z�������w�֤N;�'���33)���Z��`aNov{�{��
���5x"��鍘N&ls�Dk��}�9��/���U�'��좭/A�/��<.rP�QI����qe�ݤ8&eU<@�� ~�>!�����������}�K�vw`,qC����Ӗ����f��qhZ��W*D����
�MY�6��)���9�mD4I(�Mk����*��o�����#`6���U��o��L�k���K�K�u��f���t�w\�2<�jD������Ɨ^^-�ɍ��x��UV���j��x|^���$ N��pX���u���xǡ`��(UU�Xł3p˲B�X��j�5P"�Glt�y�-��9S���F�Wˆ�!���z�R���j��:�q�1���b�{���4f�1��%."F@?У�A��-�Ji�ewh�ZH��Y!a����ǣ=����q�\�uw^#I߇�nm6�슝���݀# `��r'�ۙ��@F���V���q�;�
.p����,��^����5��>:~g6v�"D�y����֍�dg�Km�c�㸃tq{�V��33�VL�9�s]T�ټ���nv�h7x{#u�Vm�n�,�tj.iV_f�f�i嚱�H�9� u�9�ӒC?T��b�v���;4�T��]���l����H���"C�Br
��}kFێ<�<l��R���!��i��)��ۛ  8����}����t
�HyS��}bd�@�X��pU�#��y�X�� !��l �����3]��X0Ҵ\�.��[���^���lfZ�K�^�q@�ƀ��&���;I��Ki��`ZГI�<I�����b�L{P5�(�Hafq(Ms����~�	�f��$�S��%��Lȁgz:������5�4b����B�:㖖В�U�p��U��B�g���~=jQ�J���u������y����]ݍ�Qy4�y��_}�*(��>�B�P>�d�����z�>���+� �W���<������;?�d
d���cE�5��d������,����t�g���O�R�S�-J����'+ e`[�u2z��朆�SfUJ������P���Q/�G���ܪ�3l�f4w���Q�����ú�Ǖ�ȿ��gG�ݱ��������nUTl��JV"����W\�t.ʞ�~9�4FG}JC�%���42 ���sy�0��s�n��X@�.6�p.1��K�#>*���2��h*`Ԁ���ۺt�_R��u��ޔnHϚ5������&���"=��e2x����^�~��sg�$���x ��m�t���M���s�+$r�u��{��~ �����i ��C��˰hG���w�D��d@W�֢�qC
Ē�9�yU�Ԕ; �r�y��H+���ZMԫ��C�w��Zg�G��W���|�ear@`E;'e�Q�`4,�6b#��4�y+����]E��*�
 l���g�$��o�B�ͺ� � l+p&�J�^}���2;2�#)|��9�k ���#xO>��}����]!)�x5�z�p55}R�ªh�9¬Ӛ.�%[�$�h7�1b�]�U����{�f�����bU�k����z4�8��B�S�~���I�ϭliu-x��| 01��b/�O/�P��R�!jX��o�3<�|�y�6RL� v��;D݇c1��c	G���qW�`s~��� %U�� k8ڐu߬��{��$"}����׳P���v`^8�ng�DXo&@	�qwC4�F^g�n= w�6�J�`q�����0lm6&47'5��6Gf��E�0"�� �X$�%QT��b(�E�C`6���c��]���ckp#a����:�Yd�7@f�T\o�WB��A�C�O ��+[�����P�cm�D�BG_�=~"�"D����v���7��>XSaX�{�b�*����ן+"N£��̙�����̘���`{�p�A�������a����T-$̡~}�cuuT9�)h��V+��-C��W��CRM&����5��YM��TeX�_1\��nAY)� f�,T�5q���c���~sݍ�*��ƞ9�qk�#���/��±���]@����*�� �ҽ��A:�s�4t�����K�O��ͥ]^�`�\�{��])�s̗�EC�p��E|R�0�,�P��ex!N�m[f\�U��F�"R��g	�gͮ���D��嚬o��#�[�����dyt
��m`8�A�N]V�M�@�l��w�,h , $�\�X2���~5���HFP�������h�|s&��ߦ\40ɼB�QV��U�Q�*|�db��m�Ļ҂�;�j�|J��g���j�$�
;Z	\ c m����=�3���/��l�ZAq��u�i���Z��������>Z�O����8�E�% �;��|.]�u۶Y�}��VN׳ȡ_��x���>��FQ�RB��������3�\{�wW�r�(`� �m"1�(Q�/�;�j�����0���	.�=ӑfưX	w� )"�lFY<�����"�

T�Ϥ ���R�$HH�����q�᚟���?��БsH���^��P8H������D�W�Q��[�E��s��V�,�A�=8�ໄ���-N�!n�'qx��C��z
���L�h她t{����@c��y��!O\E����6���m�?-�/��O��eT҄��jT�ĳngA��i��	�!�W���ö��,�zש��bc^|���_8l�*���1���?�Vs �}��-9yϠ��q��"3 �O���t:��	إT������B!��8��j(%��"�A�@�ڊ����^۽�Ժ�v�Ƙ��	e���y�U�/K�BO��;�ݗ��+G���Io?�;I|�P�hү���<�g���6�����J��:e�^l/�`f��E*r��F��W�w����x$TH�>~y9��;B�N�Z�G`-D�/;�¥�O�g�Ϊ�b�"Q��j2�|���WH
<���Dčp[��u��F�,b<Ѕ��GÁ2���ف;x�.VY�^���u�T��KORF�2FP8_�Td��ʅ�IM#�#\L��M�v�V4���|��)HڿG�L�]ͼz"��gH���7ײ�5H�q2�y�!qT�`Zsp������`H�&f�Y�N���:zp��zO9�F�ѝ-L;Ȅ�l0�h��:$������P;Fp�� |^cM��{	rރp��'0!Y�i*1�^:h<�w�_[WP���f,,�jS�2�T��I����3j��P��=nJf��[M��f��e���[���FXZ�7���?��6���^;l��f*h:mR|���/��<
���L�_��b7�,3�8�st����).kb������
(��c��D��CD@�xH~=:j|���ѩ�?W�?F����%�;��~��͔+��Q����!��9|>
*�I����l�J��?��g���{���Bf`��j�hz����2����aZ��/�S����*ˠ��Ȋ����}���R���C�����H�.�&L�t��/������V��dG��
l��C9�Bf�)0i6�a7B������z������B^��r�J)!�%��0��� ����7�6V��Bi�j���b�a�y��`f����C=%2�)]���K��O�!'x�u1i�u�Uh���t���bE�`r��۾9��L��A2ꨢ�K6�Rã�`��g^-yV��Τ�˒5;̼�	�~I <��הU�f"�C鎜 I����%��ӒQ�*�Y�.@���媯x��.��M�/�	ѤS$P2�ef���a�o��6�ʕB"��
j���r�-��I�XMP����Z���{�!k2�2��.�\�<���Lh�Dlr��n���Q����f�? ��Z��|h��Es4�Kb�gq��L�by.))�vUS�٬����c@� B��e��A�(�U
�U��S��EW�̤�!8��~��c}6J��e]a��D��Eǆ7)���{$30v��$S�"]����ӥ���|�`C%j	�	�b�t;nY�4�D�8T�pC��.�v�g��l��oE�*Q�+)�	 �R�zn~p�"�CH4A%U��MVf��=6�@	N�f`0�P�A�������T&=mN���\ɡ��+��E�0��P*�hl�6�
�Ju��b1m��p�a	A�M���:H$�p&W�
��a$��d0Hi�+����ډ��'w�<�t�p��sB�6����P�s�Z͜�Ճ�A�@H���h���G����7�i8Y5J7�dS~7�9�jfs� +ElA��1�be�h�����M��p��V &g:��]��:�M���q��"�_\�ƀe,������[�O���V�zI�*
�00��������b�^��\���-M:�+g�&8��E!Ap�uXb��*��g��0�������*ӽ)�AG"u���M���rMYV����)|�o�!LV�Jš�,�о�2�7_Vf�g�\g\y�عc\�Ո03U���L��tQ��H	{3�� ΂2�dg�q�Y��X:���dw�a	�8��V���	�+TU{G�$�I�����DbOU�����?+,�k�*��߹�[��k5�d7����A��)j��uh Y(��"*�{5�
 ܅���]{�H�[L�����EK
��U4
��%�7!T�kMZm�����(�@R� 0⡯���0BX<�DΌ� &`)� Y1�d���H_"A�MJ�
�(U`t;N��k�;��kj�ۜ�Roe��,�"dғ)��s4A��{�H�"���I�1������ u��$�� �D"�Tb�@��n�PSt!=����
!RPMq)_^���h���e[J�Z
���!,��1
�+���\!�m�^��ض�B�%I{� [�Ơ{�����U$#E뉯땽��攈��"D5(�kH7���GO<UP�D�b��A�h[���i�%dF�*U��#��j�Q+P�"1;F��).�%�duH��w���$}��Z�������P�Ikտ~�70��Bi�k��IW�﹗�F�L�'�!Ϸ�?fd%����Cqrh%����EY�C����^`�G�W��2P�UI�s��
�)5��{�!�.���+9�N��`|��T�8m6 ��B謑r)@�u�.��J���Ė����J���[��=�J}�4��Bx� ��zP�<K�麊�iEy��U#�$��NU�� m&�B�W�xѽ�6��.H�趙���"¶ �������Qi�i���	0)���1{��I�|�f�&J�u�n�gr�*:��J��S&�WM![x���O�H�qO�� �'�Gp��� �
�a$@n~66�  V(�<o��δz"�/�(&L����&�-*?�1��W�h���j����x�[A���*��r��E�5"=�-A��g}{�����T�$� %p޵�� *	��f\�S-!�0���}�9n
�3�Ģ6	
���V�g�'
<�F�-=(� v�<w����� jv*���V@1��=�qyz�;	^�yCq=1+����B���Aζ�J.��}0J/
�CV�mdm�!H�If2f|5�'� b
����15��ÎY� ���.œn����V��^�XCU$Q�2H�ME'bU�����!"d�-��@eS!��5�.glV��*&f��#$6�ơ]5d�l���<�:��[�R�sp�,7��F
���AZ�� ��C�a�J8�\*B���XDx?y4���ם#-��SY��G�f��i��|������djA+IZ+X�ȸ>�C0���E�J����TF�����4[U���m�&�(.�"��(4�:@j�<-b'�j���U�<�d��ἕ��\�[hV�2��طȴ��kmkXkS�1,C2"��2l�^��BUp�ֲ-��F��c�z��W��bD����g�"z(m�m$Y�_WP�HT	�y�0����U����\^�/i4�ۧv�؂ꃜЉ^�b}��<�ޑàRD�y��l�8��!iӠ�vk�B Zn���0�"���1&�T��L@r!��\�(1���ү9��T5l#t�R�j�(K2C&Bҕ��/C�+X@m�ؕ)�pf��\T��و��CVA��PTF(d� �V���%�*�"�K�4�nb���nDʕi�S"ڔl�-EM�d�1��u��C?9�7'<!NKx��'*���FL�"1\�1\���/5�ΈW��j�B�Ѯ`�����n͈j�@mU	^\�x�AI�w�cJ;v�@B��Rz�}A��n�0F̆�T
ZI�re�����dt`ܮ�^.#��J(b%�A��>�xQYssl=�����ڐ:��R'a2�/J©L�B�̒T$��8��RM���Zk� #������fӿiR�}ݡV,������@�3_
�2F+��)��	���7���肶@jA��h�����s�ә���! ��*0=�I/.�0�1�D:�����)	- d�gs�+�\�Qo�R ��jE����dj+J�x�B�++�m��#�x��A�3�͝|�%�	�BȌa,$OY#���������[��������"Ĺ8>&��|w�LD$z<3�\@�b��h�L�[�b`�̥E��fX��5,�dM7V�J���ke3���㸹�,��+o���j����S�=l�ߧ�~U� �^��4��$.�&���-�U��k�F��`�%m,������>03�in�|��c�q���Rn	
�Fִ]�[��Vu+����@�;	�f@��qR����ý,w�&���S����E����UDSf�XAU���N�Z��$/�9v��P�UU_+�{��KF�$VQ��^��B�*E )�jH��0Ҩd��!=eK�9jhD/�b��9��B�
F-�c�i��>��jK��{6��mi��Aj0���Щ�qq���϶l���33�'P�8 V�Ld��]��� V�`��i*�@X��25/�d!"B]c���JQL_3�<��<z{�q��
�ӈ|DHCY�d1-z����BY���Q�GZ ,ʯbB�T
(��u��KN!z�Yc���۹��c_�����a3lxE�j���/�`�t��le\��#�2y�Ub]��K4�K	E*'�"��2,��h���{~����ƨe`���8b��(�!��`�jb�A[,�ZJ�q(r���E��EF�X^`"l5g���5L�W=�	J|������M��j+�\13(w��|-G��%�l�ͫyrD/�@E8�/^ֳ�x�8���<�0��6D�LM�$KE�iUj(�D��hD�ġKOr2v��L�� �HQ~m߬ryi>����9�X��C=F�d����H!�Ҭ�T'�B�m'8E�����P�G�M��Ka��p�cמ����7�RB0����ܩRЇ:(�!�ih��/HhP\�B�-�~Y���Ȱ������*�Hic�U0o �ДP��=�\4gc/��3��uHU��$(NZ�� ڐ�·�D/<��j���lE�� ��5bMoT����b�i��"��3	�6Ŏ�1X��.�DC����PP�x����.�1du3�C3Bf(Z��}��[UE�g�m|;5[X�����7�Y ��mr�f&��1u��ă��� L��&P"�*�z.�^� �+��0N�)�E�s,���d�R��-Š��K"�!R�ȸ�TI#
_ M�T ��H�I^#
��˺BgȾ*n*I	���;<B0�6��F��h(`ٮ��X[IGR�6hB�i�F�[B]
mB�U�i�7�2A]e�)i!m3�YbW��MoKz/:�~����1ϙZ�B�i"��9�$�aM���8�j2X����謲֊�2ä��f�cA�۸@l5�!&TMh3�!B�{#��#�\J|�	݆O��u����]��N$L�����ʗ5ND������4��Xd�:N@�uR�Ȅ�W�5�Ff�~��ګ�;�Gk��<�h<���,�Mͺ8���w�9�N�@����������hs*妼J�HH��oMB�؎�vC��̃m�ʕEI�K�,��5�s�q�������u�V��!���'Y@j�pcZ��������^5�^B�᝹����AQ�J
��V�H'�;W3�F�A�� ��#�H.����'���x�Ǉ��E`��IH�C*T��0Cx\K�iQ���6!�n�tB�j<�S���1��*e)�ES9Ƙ���j��E� �c�]�Rj!@��Z�
�BHv (##��	3]�L�P�h��>��6u��0��;� �J"���E&4�T<�E˔�{N�L�	q[��!�<�(�0oA
���L\�m�9�:*.��VĞ�*Q�!">1:��_f�w�z�Ӭ5'��#E��	�uuI#�������| zl���~�L|��M^��/���?����h��D)��i)6L�W ź��1���`�V6a��@��(*ô�j~��z��ː�`P�!DB?P`g��T/��?PD�`��2� �j+�m�2�1)?�]��BCψd|