.class public Lcom/google/android/calendar/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# static fields
.field private static final SMART_MAIL_LEGACY_DOMAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "@gmail.com"

    const-string v1, "@googlemail.com"

    const-string v2, "@google.com"

    .line 23
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/utils/AccountUtils;->SMART_MAIL_LEGACY_DOMAINS:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static doesAccountSupportSmartmail(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 26
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 27
    invoke-static {p1}, Lcom/google/android/calendar/utils/AccountUtils;->isSmartmailEnabledByLegacy(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 30
    :goto_0
    invoke-static {v2, p1, v0}, Lcom/google/android/calendar/utils/AccountUtils;->getSmartmailAck(Landroid/content/SharedPreferences;Landroid/accounts/Account;I)I

    move-result v0

    .line 31
    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSmartmailAck(Landroid/content/SharedPreferences;Landroid/accounts/Account;I)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getSmartmailAckPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isSmartmailEnabledByLegacy(Landroid/accounts/Account;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    move v1, v0

    move v2, v0

    .line 37
    :goto_0
    sget-object v0, Lcom/google/android/calendar/utils/AccountUtils;->SMART_MAIL_LEGACY_DOMAINS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 38
    sget-object v0, Lcom/google/android/calendar/utils/AccountUtils;->SMART_MAIL_LEGACY_DOMAINS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object v3, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 37
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_1
    return v2
.end method
