.class Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;
.super Ljava/lang/ThreadLocal;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLocalDateFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFormatStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->mFormatStr:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;->mFormatStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 149
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 150
    return-object v0
.end method
