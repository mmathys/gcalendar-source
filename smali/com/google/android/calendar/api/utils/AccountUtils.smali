.class public Lcom/google/android/calendar/api/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method public static isExchangeAccount(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 22
    const-string v0, "com.android.exchange"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleAccount(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 18
    const-string v0, "com.google"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
