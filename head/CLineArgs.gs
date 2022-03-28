.needs <Collections>
.needs <String>

class CArg {
    String tag;
    String value;

    public CArg init(String tag, String value);
};

class CArgs {
    private LinkedList args;

    public CArgs init(int argc, adr argv);

    private LinkedList parse(int argc, adr argv);

    public String get(String tag);
    public bool has(String tag);
    public LinkedList getTaglessArgs();
};