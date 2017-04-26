/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class TextHolder {
    global String value {
        get;
        set;
    }
    global TextHolder() {

    }
    global TextHolder(String value) {

    }
global class OperatorHolder extends SkyEditor2.TextHolder {
    global Boolean isEnable {
        get;
        set;
    }
    global String operator {
        get;
        set;
    }
    global OperatorHolder() {

    }
    global OperatorHolder(String operator) {

    }
    global override String getEffectiveOperator() {
        return null;
    }
}
}
