.class public final Lnet/fortuna/ical4j/util/Uris;
.super Ljava/lang/Object;
.source "Uris.java"


# static fields
.field private static final CID_PATTERN:Ljava/util/regex/Pattern;

.field private static final NOTES_CID_REPLACEMENT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "(?i)^cid:.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Uris;->CID_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "[<>]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/util/Uris;->NOTES_CID_REPLACEMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-static {p0}, Lnet/fortuna/ical4j/util/Uris;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "ical4j.parsing.relaxed"

    .line 125
    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-static {p0}, Lnet/fortuna/ical4j/util/Uris;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 128
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_0

    .line 130
    :try_start_1
    new-instance v0, Ljava/net/URI;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    .line 135
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URI;

    const-string v1, "net.fortunal.ical4j.invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not build URI from "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_2
    throw v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 101
    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const-string v0, "ical4j.compatibility.notes"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/util/Uris;->CID_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lnet/fortuna/ical4j/util/Uris;->NOTES_CID_REPLACEMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_0
    return-object p0
.end method
