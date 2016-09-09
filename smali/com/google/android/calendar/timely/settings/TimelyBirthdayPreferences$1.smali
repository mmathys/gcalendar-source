.class Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;
.super Landroid/os/AsyncTask;
.source "TimelyBirthdayPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;

.field final synthetic val$accountsToUpdate:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;

    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;->val$accountsToUpdate:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;->val$accountsToUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    new-instance v3, Landroid/accounts/Account;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v3, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    invoke-static {v1}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->access$000(Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v1

    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setBirthdaySetting(Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v3, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    goto :goto_0

    .line 286
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
