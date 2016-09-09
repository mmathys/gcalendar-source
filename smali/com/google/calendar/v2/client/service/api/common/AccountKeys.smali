.class public Lcom/google/calendar/v2/client/service/api/common/AccountKeys;
.super Ljava/lang/Object;
.source "AccountKeys.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
