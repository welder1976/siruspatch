--    Project:    Sirus Game Interface
--    E-mail:        nyll@sirus.su
--    Web:        https://sirus.su/

--    Generate:     20:49 31/3/2022

function __(r) local d = string.sub(r,0x0001,string.len(r)-0x0040) local k = string.sub(r,string.len(r)-0x003F, string.len(r)) d = string.gsub(d, '[^'..k..'=]', '') return (d:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(k:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end _={_=_G} _._["\108\111\097\100\115\116\114\105\110\103"](_._["\095\095"]("O/NK2/t3U0MIO41bUJppC0T3U0MpO41bPJpbU093U01BO41pPJpbU0q3U0MydQBgO/NK2/t3U4H7O4MNPktTXSt90DlEG6brGh9g61l9lyFLTVZ6JDfgPwPwerq6263IeOqzJDQweDb5TVRIJ7QsCrlpe7lLTVRjGh9g6rLk9QT026bHmVrUl2PwlhH/26Ta9sqql03yo6JNa2t1l4TIJJrDmOH/k7TQmO9O0wTqG2gwJVTwU5POo1Jpa2gwo1TpUy3/eyJ29yTr3DZrGHrgeyPIGQFea0QQewN492TqeDZil8QNUHu/0B7F0kfZo4FJPDfBe7tuJwbrTVTJJ2bsT5J+9VZIo1bQCrGImDQ+TDbjGBU/l1GNCrah02Z0errGaBFIPBlgJwJqU13h2sq900J2C0tdG2tPGHFU9OFDmJ6z2DrumO9x9ORhlwbSGwTzowrPl6lG98M/oDtc6VPe34J+m2lHehFQa0MIlJF59w98JV9DkDZI00JwGH78U7gj62fFeHPFGJJjkrTHJVbznyl5GJT6lVujeyTFl0lI62G7krLIeORNJ4twGVL83rQV9wPx6Ql+COG/m17r94PenyJGCJa/Uytpa61Nl1b+GH7UG2tOJ19FCrap029NoQTiP1FFo4r+UQRwoQgjes9xC4JzaVZdGhH/U89P65tp22ZzeytkU5P80wZzCDL2lHPp661/l6tqG67yTHBjPVNF3rQgeSf43sQVehRIP7F59w98JV9Dk1rg00Hpm2lCe7Qu22Z4eOQ+2HF6P7QrP1943rQuGVZ4l5djG5T9PyP+e7J9esF1JDPV249+awLeeD9J22Pq96t+UHfCkDZroBFVT7lICDp/P7Ti92rPPhqgaxfUew7QP2N83DfF00TLUBPpP21NlJ9zUQRwo4Fz21GNl5JdJB94eDTiG5TP65tpG69ymDtLe2ZFJ6rdG03borriP2P4UHtI6OF6Pw1hP2Z9C1PgmDlLGyQrC61Ne5FwT1G7oQLzlsFVT5dh9VZUU7gjP2RNeJTFGQJC3sQuGOFS3DAhawpye1trU5q9GBPz0JJlkDZrksFN9sPFl/fGlQrz9B1NUHFzJytjT8lrm4P4eHrzawQNoQLdJ4T9l0lDahq9o13jUwp/eyQuGVgy3rQiP2fI9rPgG0RwTVtco2I/nBFIJB9G34QpP6FI94Pz229U2Dr625P4346pC4TGTH7ieyTPeBPI62ZjTQT1UHrF06lweBJdmrrDmsFPP/fIm6fuk1P6aB9V67lF9VZZewtP22fgnBtuJhR/PhQuJVNPJ2Ap02ZJmD95U5qVe7lpG67ZG29raVZ4lHJdewu7oHTpl2INJ1PD9QP6Pw9zJBrF06FGC2L2ewrrP6F9JJF+0JJqewtrlrR/67lF98R/3Duj3h9zl6FIC2QrkDuhnwFl0hl+C2QHG2tpU8G/eBrzeDbrG6djaVbOeBJd2JJGT8luewZxl6lzJytjUD9zJ1RN0JrGe7F4oQTrmsFPPyrD6JUwk1Pck4qP6rldeBJqehluaJRNeQ9gmOR/ksFr2DZB9Qrz06JdU7gjU8qze7lpe/fyTVZrksFSeBJdey3/mD90PHF4eHFqe/fIGwZJlDZ9o11heBJ2ewrr90TIor9+TDb9o4FVawUNl5dp029yoVrc6JFzl5Pg9B9rkDZzU8FST59dawLdG2tzmDPzJ0PzeDbd24QcJVZ9nyJwmDZGTHBjXwZxl6lzJB7BGOQHJDbSo1lwG2LS3rrpl0Tll0tI9xfuk1P6aB9V0BNFC1leehFi20qSnBtuJhR/PhQuJ89x06rG9VZ4mrrIJDrN9sPqe/frTVZrksFSeBJdey3/oHTwPHF4eHld9Qq6k1rQ0VZ9o11hmDabe1tzPORIm2QI9QJqPB7IawZ9mrlI029goHTuGVrlewahJBJza2GhU89x3rrDG6L6l5tim4qze7Tz22bqPhFHU2FSeyJICDPLoHPwawPO9QJGUHA/3sFHJ1FVJJrGeB9HPwTJl6FzPyJwG8qllVru91G/0ydpG0TIkrrJ22Fz6QLzG6JrkD1hnwZso4JpeB9Je7TP089U96t+UQJdoDZGahFVlORh9V9Zo5tioBRNe5JqeBA/T5tzmsFVTy9w0JteehFzlO9ImDQI9QJqU4FV2rR/0wfw0DJSoHPpTDrV2rLzesqzPw9rU8FV0wZ5G5d72DGj25TzPhQqG67zPwRjJVRNl0JFG53jeyFiXy3I9QJz22ZxUsPQaVI/J6lF9H9Ho4trl2rVJ27+UHfzGwtck4qP0ytpm2lImD9hP89Bm4tzeDZQo4FIeOFVJ6rIm29JewrHTDry96t+UQJrmslz94TOl2uh9H6/mD9ieBRNe5Pd9HA/Pwuhm6r9o1buCDb1G2rkUHFFP/fzC1Az2sQVJ2Z9eBNw0D6/k1djkhFBm1P+JBJrm1759s9x3rrDG6JJ2D90JsRIe5Pz22bqPwZk2VRNl6Jd26JVm4Qp22bPeyPz28Q6GOQH3wNeorrGeB9HewrLl6Fzeyl+lhGwk1PcaHG/nytwUVZkaJQuorRNeQ9gmOR/ksFV2DNB0wZz06JdU7LaJDrVehPd9QJZGJrpUVZ4lH6h6JtHPwFzewPxkHPuJB7IUD1h0Hr9oD7FCJleUBPpP2rPJ29zlBRwUDZz9sFNl0JF9VZ6o5djewb9eyPgUH9yU1BhnBG/nwbDG2gylQLPa2rPl6NqG67sG29rJVZz31Ipe7JSP7QV603I9QFza7F6k1Uh06r9oDtF9H9HewZD3yMI3r9DUHfzk4QcP2bO0OFpC2LZe7QV0DNlm4dyahM7G0FVJVNBJkup0694GOFrP2rN9sP+awLrG29D9Dp/l8Up0037oHTpowPsmDQDe17qG67rJBrzn7Q+m2pbewrp08qNorGheDbqa67IawZ42rldUHJNoQLulsFxe6lgJ7JzkDZr2Oq9J2bDG0d/lV9iU5TzPhQz0kf9oV9rJVFVl6Np3wJVehlPk4TPlHPIm667G29z3wN8JOlIGVQdUytD3yMI3rGheDZjGwtuUBrg06rF06JCa2ujlw1NJrLg98qCUDZJa5Tg3DupmD9GeBPGJ1F4PB7qe/fyG29GawFVl8UpCsq2errieBRNeHFuJB7I34Qca6rF0JQuGQleUBPpP2rBJJF+G8q8UsFVahFNl0JFm2lyoHPcl2rV21Pg9H9yU1BhnB9l0wfpG2gya2FPa2rPl6rz229UesFHU2FVl6Npm2b2o8lDks9O9QFzawLCPhFcU6FleBFdmDa73r1j9O9xPw7+2H7dGwZr24T49DtdawLyosQiP69sn7T+ahM7G6TunBrgorr59HJd24ti089O9rl+22ZBmslzUVZ8l6rFCsq2oHTpowPxU5tgC2Zqk4dh0sFVJ6TFCJleer1j90TI9D9+TDb9Gw9rkrR/0BNwJwl6oVrco2rVl6tz9BJqG0FpJVNs3Df5G5d72D9i05TVPBbI9QJsG0Q62VFlnwJ+JBJ2GwTz22PVl6FGUHfCTQTHJDNFeV7F62u/ewTra21I3r9+lhqjGwd/PJFVnBrdU5TUorruewZ4eOQ+2HF6P7QrP1943rQuCDb4o8QDC2bPJ0P+26f9ksFulDZFlV6hG53ImsQiXBrNlQ9+aB7jPBrQ2VNF31ruGVL2l5QHT43N0kfI9QJjGw9rl19F02AhC0TSlVTu2s993sFF2OT6a0QcCDbleBruGVgyo5QPowNeorl+eSfl24QXe2NeoDuhG67BPwrca2RNl6F+UVZzTVtPawZ99QQFm0TSUytDUHrSn7JuC2Lim4QcJ69S0JLw02Zuk4QpaO9xe0tI66fz3DuhJVU/lVbzl/AyoDTNP5qIey9+GO94GOHhlDZ9l6rdU8F63Drp9wPzlHtg9VZVmDtHo1Fl0BfwaVZLoHPim1F4e5lg9xfUm4Q6UHu/nB1p20TLe7QzJ2rlmrlI9QJQeyFX0DNPJ6fdJwp7or3hT4qPlJFz22bqP7QpU5TO0yFFC2LJerrz26r4e0tIm6G7UrQJPDNe31F5C2QJerrra6FO9QJzG6G7Gwrrawrx3sapT1Jul5QP3B1/ehQ+9B7yPw9JaVFlk49qG0tNoDTdJ1F4GBPDC67UksFHJVFlT7lqC0Tjorrz60TVmrL+aB7jTQQr00Pe6rldewZNoHPi96R/9Q9umrJua2ru9DNl0hUhG2P4errGaBFIPBlgUH9yk4tk2VbSewt+C2gbeBPpP21Ne8PD9xflUDrcUwFOJOFF0JJzeDGj0sFleyPuJ7F6P71h65P434lFC2QJl5QH3hFsP7Fzm1AzU1TzUVFem0GpGVlleB7JP69Pl5P5C2LIG63jGOFlm09DGHJGGhQHm4qzmDlI9Hfrew9re2PlosFFGVgIeyFi0DI/lHF+JB7ePwuhm0Pe64Gh9HJNewZpT43N0kfuCOqsoV9zJVrBmJlI0kAw3rQGPHFIo4r+UV9CPwZrnwN8o17+CJl4UytzowNek4tpeDZiGwTpe2N8C4tulwbJerrz22u/e79FlhMNPwZJeDNe3rQdJwlGGw9VGHFzlJQ+GH9zJV9DaHFF9Df5m1JnUBPD6O94eHPzms3wG67zeyP80wfGm2bGoDTGJ1R/ehrzeSfuo8HhkrRN06IheB6/o1tzGVNNP76y9BJyPBtu28GI07r+C6LLoV3IJ4TI9SfI6JJzG2ZzJ5qP31rpCOQ4ewtpJ6F4eQJg6OMNaOPQCsFN07FzaVZSkDrpP2rSn76y2QMwU4QLU8RNlVZ+ayTJlQrioyTU90td98qeGwZzaVI/TBPGG6L6mDdIUVbxlJF+T17zJH7rJ2p/T5dh9VZ9ewZiks94o4tFT1fyPwZJaH980yJ5G6J1TVtPP0qFGBUyahqJG29rnwr9JOPwG0Tjo1djJOqy90rzaBBNUD9z22Ng64GhlwZLG0FJa2I/PhqgaxfUew7QU8FNl0JdG290kD9i2JFI9VQ595TxmDt52VNBeB1p9Vu7G67i9899l6NumJUwTHPLU8RNJOFdaB72oHPwawPVl6lDG67jPyQ5awFlJ2TzeB6jGOFGP8GIorJI629zJ5Fu24U/0hapm2l1T5Fi60qFo1tzmsT6PwrcPDFS061pGVH/mrrp0VPFkHUy97JqG0QzaB9F91Ihm4tgm1tu0hqVlHtdGOM7ksFH2Vb9oslICDp/P7Ti92rPPhqgaxfUew7QP2N83DfF00TLUBPpP21NeJ6yUV9zG29h2VP89HruGVgyo8H/ohFBl6lpeBGzGBPuU8RNlVZpG2LJerruewPVl6FDC67eGhFVP19P07QF9H6jGJQ5P89Z90r+UxfJo5tzUyT400HhT1J8T5Fi60qgnBPFlwbzPwrHJ2RNC1PIm2bG2DGj0VPze7PIC67PTVZrnwFI92dh9Qt6o5djJOqNk4t+aBB7PBtu28FlJ6bg9H9LU17ueyqIlDlgCJJpk1rCJDN8lH1p9QtHerrGaBFIPBlgU5TzG29h2VbleBRpCJt6o5Qp98RI9JJpeDZil8lzm2N4l8PwGVl2lVTJaO9Pl6RyUVU/U4Fc6VZx3rJFC6g/eD9GJ11NPyFuaxfJPBtzU2NOUVf+2Vbq3rQza2bB34tzms3wG67zeyP80wfGm2bGoDTGJ1R/ehrzeSfuo8HhkrRN0OUp9QJZo5djJOqy90rFGH7jT5FcoDNFlQrgC2bNG0FhPHFO91bqeDblG2ZzJVrsTQldawP4ewrcowuNe6PzaB9yUD9Jo2N8o17+C6LeeBPpohFBl2bDC67qeBPLm2ZF0hFdaBBBerrPo6rU9OQu28M7Pw9z65U/J2Zza26besQrG8FxP7TwG8qzJV9IJDNSl6rFo2JNewZiks94o4tuahM7UDZJaH980yJ5G6J1oVTNUH1N06t+ahqGTQQwJDZF24twGVL8ewrDP2bx6Ql+COqVm4FQJOqgeBfDTDZNoHPD3h9x9r9D97JqTH7rk4U/GydhGHL4T8lz0DNNPBtza7F6a0HhU2I/nBFIJB92JVZi9899lOPum6A7lH3jJwN4eVZ+awLUmrrJewrze79Fl/fCPwZrm2Zge7QF6OqIesFQG53Nl2FDC6G7GwrrJ0U/eyJpmDlrUwTzPs9No4J2GJJjG67z0DFSnylzo2JNlVZaPHrNe5PD06A7ksFHUVu/l8Upl/fJoVTVksFOlHPgm0TjT8lrosFVTy9wlwZSPwTPm1FO9DZue/ABG2Zrk1GN02ZuGVLLkrruk1F4eQ9wCDJxGJrJeDpNl5JqC6JJU7TDT4qxl6ZpG2g7PhQ1e2Z90OFd9BJze1tzP2rIo1PDUQM/Gwrc6hq921PzeBJdl5QHC61NeQTDaVZqJH7DkD1I0JL+JwlN3DRjP03/ehQ+aB9yTVtHaVZPTBPDG0tI34dja6rNe5PD06A7ksFHU5P43DuplyTJoVTzk1FOPBPIlB7eoQTH0sRN31Jd22ZNa2Zu92rBlOqg9xfzGw9rlDbOl5Qu02u/krrzk1FOPyr+9B7yU13jJ2N89Qrp3wJSkDZiaJFz9HldaH7le4QdJ1Fgk4Gp95TJorriewZenyPuUVuNoDtcUhq90yJjmDl0eD1IP89xeV7wG8ql3D9zP2Fll6Nq0291T5FiP69xo4tIC6G7aOQQGOFS3DAhawpye1trU5q9GBPz0JJlkDrXJDNl9HNICDgbk1tzGVNNPBPd26JyPBtu28FN0kZ5U8F6mDtQmDrPJJJ+9BF4G7Tu2Db8956peBJNk1djPDfIo1l59V9xkDRj2s9PJ6f2069SkDZIP5MI9JJum6A7errIJ1FF34JF9Q6blQrDaOqgehQd9xfCGwZz6hRN0J1pC2pboVTp96R/lkfwG8qlkr3hahFs0JL+JwlUlVGj60qFeVlIC69eaOPQeB98J6r5lhF6TVdIUVPgnylD0kf9o5QzJVFlTytIC4TgewrDPOMNe2lpm67qU17zoDZz0BRh2OqHm4QDehqzP795UH9uG6rCJDFl0yJFm2pBlVTuJJFI9VQ595TxmDt52VNBeB1p9Vu7G67i9899l6NumJUwTHPLU8RNJOFdaB72oHPwawPVl6lu97R/GwZJ65U/JJrGm1a/oQgj3yqPPBl+2H7Ua67DaVFS9Vf2C4tJU7gjP0Tse7T5COM7Pw9ae2PenBJqUHJdUyt5UVrx9QP+G6gwlQ3haVZFlVJwG5THoVTV0J94UHlzaB7xU17rlDNgnB7dG2p/PytrG8qzJJJgC6L4GBTaa7FVnBN5ewZ0m4QP0O9zlkfgmDJxPw9kJDI/n7Jpm6R/oHPPP0TSorLIm6BzGytIJsFx9OFF0JJJoVTdawPOorFu9wG7UDZrm6FSnylDJyTOG2tGP89Z92fI629lPw9DaHFIPw9wm1JglV9aPVrVehQFC1fQUDGhJ2FVn7JDa2JNo1PL2VbBJ2rd66F42DrunwrzlVJzlyTJe7QzPVINl0rzJB7rG7Qr269Vn7rwawH/mrrieyTIe5rD669q3DFzm6FVnBN5ewZ0m4QP62PVl6lzew9zG29hJDNBeB1p9Vu7G67i9899l6NumJUwTHPLU8RNJOFdaB72oHPwawPVl6lDG67jPyQ5awZFeVfGmDlNmD9VG53Nl2FI629za63jUHFzewfuGHJnUwTzkw1Nl0J2GO3/PwrPJ2FN0BZdeDZGl5tpewbxkHP+lwbl2sF1UVNenBIhm4tgm1tu0hqVlHtdGOM7ksFH2Vb9oslICDp/P7Ti92rPPhqgaxfUew7QU8RNl5QpmDpBl5ti26F4eQJg6OMNaOPQCsFN07FzaVZSkDrpP2rSn76y2QMwU4QLU8RNlVZ+U5T2lVTJaO9x6VQu9B9eGwZz6wRN3DfjmDlGGhQkP8GI9rLI629dkrLzlDZ49D9Fm2l13DujTsR/ehQ+2VbCTVTheOFVJ6rFewZ2G6Tp25qzl2QzG8qJG0Qca8qll2dhC2aIo4QDk11NU5rzaB7xU17zm2NP649g6OqLoQLaU5TsoDZq267UeyFu2Dp/07L5ewZ0m4QPowPVl6FI9V9zG29h2VN8o1RpCJt6o8H/ohFBl6lpeBGzGBPuUVbeoDAp95TJoVTilBFq0Qay9BfCPwZre6GN06bdmDl2errhJ11NPwfu62ZloHbQaVUN9DdpT1JZ3DrcP2POkrlIGVJQG2dhJH98lHJqJwbGoDTDP6rNkHPwGVLdewZrk4P4lVZF98Teorrz66F4eVlFG8qVm4FQJOqgeBfDTDZNTVtHC43N0OlDahq9GhQu2Db8956peBJNG7T0PVZIPBlI6JM/TH3jJOq9Crl+m69kG2rHG5qNP7Jua8qiTHtzayT8C49FCDl2oVtPGH1/l6FDC6B/o4FVG2NzJ6bgmDlGewrGP8GIorJwG8qqGwZDaHFz0yJd2VbUlQruP19xosQFC1fQUDGhJ69lJ2ZuG5t1esQD2VPFkHP+2J6BkDruJBrI05twGHLHkrrzk4MN6Ql+m0tjmslrlsqzlxZ5awp/orLuoyqVP7J+9Bfsk1rCJ4P80BIheBJLmDGj9wNNorTI9H9yG2tcewZgn76h6OMyPBPPohFBl0rzTrP6mrLzJwN802tIT43jehlVowbxUQTuJB9qa0HheO9Be7JF9HGjG2rhUHFgn7JuC69zGhFVaVrx02f+2Vb6oVRj6JRNeQtg97Jz34HhJH98lHrI9H91oVTuUVbPe7tzG8qj2DZD9DRNlVGhm0TGT8lDe79Z96FFC19jo17ra69S0JrD06JHorLdJDI/Jkf+2VZjeyFu2Db8o4twTrt4UytJkDrNo1l56JJqG0FukwFVn7J2CDlSGw9zohqFeH6y2VZ1m4tDe2NeosRhlwbpewrD04T4o4UyUVZzTVtPaVI/07QdawL2o5tGPVpIe7FDC6G7krTDawu/eyQGehQHehRI9hR/eytuJwZq3sPC019lJ6ppC4T1U7THC2bPeyFD0kflowrXUVI/9VtICDbkkrrzk4MNl0tFG8qBU4Qce6Fl6yJIJwbSPwTu90qPlOqgaxAzoDtuawPlJ06hC0TLUytJkDrNPBlI60TyUrrJesFSo1fp9H9SkDrpP6FI9rLu22bBm13jJwZFTy9F0J6Ie4QDaOFNkDQuJB9qUDZJaVN89HFdJyT1Gw9DC2PFGwl+TDZqUD9zP2u/ewfu06J1T5Fi0OFx6VQ+JBAIkrQr34U/TBPdaxAyoQTHoyqzJ6tp26fjU1tzJVFV34tp66Jjl8luewNxUHl+C6Jqa29rG2NzJ2fgC2Q4ewRjewN4kHb+2xfUoDrrU2rsnBIheBJ0ewtpJ21Ne5rGayRwTV7QU2NBeBr5mDbJGyQPowrN91lwC1fle4QuUVb4e8RhG5T2lVTJa0qxeJF+9wpNo17IahFV0yJgG2Hb24twU5TN91Ih267UoHTaJDZ4l0JpG2L4PwFpPOGNorF5axfIk4tN9sFS34Ju9hFeoQTH0899l0Ry97JUTV9DU2FS9HIhe7t6o8lza69PmrL+aB7jT8Fre19VnyJwaVZLoQgjU5MNe8qga8qjP7Tde2be98UhG2P6UwTJ26FVl5rDawJVPhHh21r9oDbjeB91GOFGPVrsorP+2JJUGwTz9DrgmJlwC4tFP7QDeyTSe7JDaB7jPwZN9DZFJ2bDGHg/oHUhU8G/JkfwG8qll8FVJ6rznhFwUVZIk4Qpa2P4eBPFG2Lzo5t59DNenBbIaB6bG0FrPOFBlJPg66f9ewrXJsFlGy9wGVPHkrrz6J9NlQJuawlVG6djJ2bS31FG2OqHGOli2894eQJg62bre1PcnwrF3sFpC2L4e1tz07FgeBdplB7rGOQH9VZBewZwC2QJe7LVm4MIewr+G69zlHbQU53/ewZdJwLNlHtzkDPxkQL+9BBNkrTikyPe02fz066/ksFV05qq96rwTDbjo5FulDFS3DAh00Tia2Zha79O98FD266IeyFp01Z49QPwJ7P4UrQP02bOlV9qewZeohRhowZsmrl+9wZNkD9r0VbNk49+erJse7TPU0qPJ6dhC1JUGB7p3DrF0wr29yTkG2GjJ0TS06Z+aHJw3rTXJhFq6HAyaOTi6SfZlyFPG8lkl0PnT8qjX7FDa2FIewr9kDb2oVUhUsLhJOPSm2GN6JPi309C90a7JDQU2Q3/awT194r7kVLt3xdLXkRLMqS41rDsdtXnUPCialk06J2OG9eo3TmKRFx5HQV8gLczuZ+jpb/yB7whINEvAfYW"))()