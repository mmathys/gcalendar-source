.class public Lcom/google/calendar/v2/client/service/api/common/Principals;
.super Ljava/lang/Object;
.source "Principals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromFocusId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromProfileId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
