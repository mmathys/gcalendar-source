.class public Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;
.super Ljava/lang/Object;
.source "AndroidNonGoogleCalendarKey.java"

# interfaces
.implements Lcom/android/calendar/event/data/AndroidCalendarKey;


# instance fields
.field private final mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mCalendarId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mOwnerAccount:Ljava/lang/String;

.field private final mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountName:Ljava/lang/String;

    .line 55
    iput-wide p3, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mCalendarId:J

    .line 56
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p5}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 63
    :goto_0
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iput-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 64
    iput-object p2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountType:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mOwnerAccount:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mDisplayName:Ljava/lang/String;

    .line 67
    iput-boolean p7, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mIsPrimary:Z

    .line 68
    return-void

    .line 61
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    check-cast p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;

    .line 125
    iget-object v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v3, p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v3, p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 126
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mCalendarId:J

    iget-wide v4, p1, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mCalendarId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPrimary()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mIsPrimary:Z

    return v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mOwnerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v1, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-wide v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mCalendarId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Account"

    iget-object v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Principal"

    iget-object v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mPrincipalKey:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Calendar Id"

    iget-wide v2, p0, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;->mCalendarId:J

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method
