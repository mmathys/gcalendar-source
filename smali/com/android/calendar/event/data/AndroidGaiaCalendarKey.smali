.class public Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;
.super Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;
.source "AndroidGaiaCalendarKey.java"

# interfaces
.implements Lcom/android/calendar/event/data/AndroidCalendarKey;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mCalendarId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mOwnerAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V

    .line 49
    iput-wide p2, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mCalendarId:J

    .line 50
    iput-object p1, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mAccountName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mOwnerAccount:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mDisplayName:Ljava/lang/String;

    .line 53
    iput-boolean p6, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mIsPrimary:Z

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    check-cast p1, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;

    .line 106
    iget-wide v2, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mCalendarId:J

    iget-wide v4, p1, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mAccountName:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "com.google"

    return-object v0
.end method

.method public getCalendarId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mCalendarId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPrimary()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mIsPrimary:Z

    return v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mOwnerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;->mCalendarId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
