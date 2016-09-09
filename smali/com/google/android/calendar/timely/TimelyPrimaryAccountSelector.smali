.class public Lcom/google/android/calendar/timely/TimelyPrimaryAccountSelector;
.super Lcom/android/calendar/timely/PrimaryAccountSelector;
.source "TimelyPrimaryAccountSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/calendar/timely/PrimaryAccountSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/TimelyPrimaryAccountSelector;->setAccountInternal(Landroid/accounts/Account;)V

    .line 17
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
