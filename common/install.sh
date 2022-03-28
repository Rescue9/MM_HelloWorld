##########
# Install Script
##########

# Detect system language. Used for translations to be implemented later
LANGSYS=$(settings get system system_locales)
LANG=$(echo ${LANGSYS:0:2} )
if [ -f $MODPATH/lang/"$LANG"/"$LANG"_intro.txt ]; then
    :
else
    LANG=en
fi

# Print Hello World
cat $MODPATH/lang/"$LANG"/"$LANG"_intro.txt

##Volume Selector 
##Print text for up or down
#ui_print ""
#ui_print ""
#ui_print "Press Volume up or down"
#ui_print ""
#if chooseport 10; then
#    cat $MODPATH/lang/"$LANG"/"$LANG"_volUpPressed.txt
#else
#    cat $MODPATH/lang/"$LANG"/"$LANG"_volDownPressed.txt
#fi 

##Print text for up or down
#ui_print ""
#ui_print ""
#ui_print "Press Volume up or down"
#ui_print ""
#if chooseport 10; then
#    cat $MODPATH/lang/"$LANG"/"$LANG"_volUpPressed.txt
#else
#    cat $MODPATH/lang/"$LANG"/"$LANG"_volDownPressed.txt
#fi 

ui_print "cmd overlay enable com.lsfpicon.nobkg"
cmd overlay enable com.lsfpicon.nobkg
