.class public Lcom/android/calendar/timely/PrimaryAccountSelector;
.super Ljava/lang/Object;
.source "PrimaryAccountSelector.java"


# instance fields
.field protected mAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/calendar/timely/PrimaryAccountSelector;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 25
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 26
    array-length v0, v1

    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PrimaryAccountSelector;->setAccountInternal(Landroid/accounts/Account;)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 31
    const-string v4, "com.android.calendar"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 32
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/PrimaryAccountSelector;->setAccountInternal(Landroid/accounts/Account;)V

    goto :goto_0

    .line 30
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected setAccountInternal(Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/calendar/timely/PrimaryAccountSelector;->mAccount:Landroid/accounts/Account;

    .line 40
    return-void
.end method
