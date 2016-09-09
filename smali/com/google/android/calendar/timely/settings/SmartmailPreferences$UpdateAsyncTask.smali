.class Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmartmailPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mSmartmailDeliveryPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

.field private mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method public constructor <init>(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;)V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 702
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 703
    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mAccount:Landroid/accounts/Account;

    .line 704
    iput-object p3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mSmartmailDeliveryPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    .line 705
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 694
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mSmartmailDeliveryPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    .line 711
    invoke-virtual {v3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->getSmartmailSetting()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;->mSmartmailDeliveryPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    .line 712
    invoke-virtual {v4}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->getChangeBehavior()Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-virtual {v2, v3, v4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setSmartMailSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v2

    .line 709
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    .line 714
    const/4 v0, 0x0

    return-object v0
.end method
