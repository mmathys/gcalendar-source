.class public final Lnet/fortuna/ical4j/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static final ESCAPE_BACKSLASH_PATTERN:Ljava/util/regex/Pattern;

.field private static final ESCAPE_NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final ESCAPE_PUNCTUATION_PATTERN:Ljava/util/regex/Pattern;

.field public static final PARAM_QUOTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNESCAPE_BACKSLASH_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNESCAPE_NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNESCAPE_PUNCTUATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "[:;,]|[^\\p{ASCII}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->PARAM_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    .line 113
    const-string v0, "([,;])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->ESCAPE_PUNCTUATION_PATTERN:Ljava/util/regex/Pattern;

    .line 114
    const-string v0, "\\\\([,;\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->UNESCAPE_PUNCTUATION_PATTERN:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->ESCAPE_NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 117
    const-string v0, "(?<!\\\\)\\\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->UNESCAPE_NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 119
    const-string v0, "\\\\"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->ESCAPE_BACKSLASH_PATTERN:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "\\\\\\\\"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Strings;->UNESCAPE_BACKSLASH_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-static {p0}, Lnet/fortuna/ical4j/util/Strings;->escapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->escapeNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->escapePunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    if-eqz p0, :cond_0

    .line 214
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->ESCAPE_BACKSLASH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\\\\\"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 216
    :cond_0
    return-object p0
.end method

.method public static escapeNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    if-eqz p0, :cond_0

    .line 200
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->ESCAPE_NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\n"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    :cond_0
    return-object p0
.end method

.method private static escapePunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    if-eqz p0, :cond_0

    .line 186
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->ESCAPE_PUNCTUATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    :cond_0
    return-object p0
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 144
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\"\""

    goto :goto_0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-static {p0}, Lnet/fortuna/ical4j/util/Strings;->unescapePunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->unescapeNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    if-eqz p0, :cond_0

    .line 221
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->UNESCAPE_BACKSLASH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    :cond_0
    return-object p0
.end method

.method private static unescapeNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    if-eqz p0, :cond_0

    .line 207
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->UNESCAPE_NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    :cond_0
    return-object p0
.end method

.method private static unescapePunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 193
    sget-object v0, Lnet/fortuna/ical4j/util/Strings;->UNESCAPE_PUNCTUATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    :cond_0
    return-object p0
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    if-eqz p0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    const-string v0, ""

    .line 236
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
