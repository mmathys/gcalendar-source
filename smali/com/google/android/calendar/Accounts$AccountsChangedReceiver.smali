.class Lcom/google/android/calendar/Accounts$AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountsChangedReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/Accounts$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/calendar/Accounts$AccountsChangedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    # setter for: Lcom/google/android/calendar/Accounts;->sCachedGoogleAccounts:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 51
    return-void
.end method
