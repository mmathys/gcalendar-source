.class Lcom/google/android/calendar/timely/settings/DurationPreferences$2;
.super Landroid/os/AsyncTask;
.source "DurationPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/DurationPreferences;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

.field final synthetic val$diff:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;->val$diff:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$200(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v2

    .line 266
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$2;->val$diff:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setDefaultEventDuration(I)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {v2, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    goto :goto_0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
