.class public Lcom/android/mail/utils/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field private static sLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UnifiedEmail"

    sput-object v0, Lcom/android/mail/utils/LogTag;->sLogTag:Ljava/lang/String;

    return-void
.end method

.method public static getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/mail/utils/LogTag;->sLogTag:Ljava/lang/String;

    return-object v0
.end method
