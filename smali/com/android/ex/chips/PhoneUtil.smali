.class public Lcom/android/ex/chips/PhoneUtil;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# static fields
.field private static final PHONE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/PhoneUtil;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    .line 49
    :cond_0
    sget-object v0, Lcom/android/ex/chips/PhoneUtil;->PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
